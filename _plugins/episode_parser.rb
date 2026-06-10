require "cgi"

module NeuroRadio
  module EpisodeParser
    SECTION_NAMES = {
      "episode" => "episode_number",
      "episode number" => "episode_number",
      "number" => "episode_number",
      "title" => "title",
      "date" => "date",
      "spotify" => "spotify",
      "spotify embed" => "spotify",
      "spotify url" => "spotify",
      "performers" => "performers",
      "performer" => "performers",
      "cast" => "performers",
      "出演者" => "performers",
      "topics" => "topics",
      "topic" => "topics",
      "トピック" => "topics",
      "summary" => "summary_text",
      "概要" => "summary_text",
      "show notes" => "show_notes_text",
      "shownotes" => "show_notes_text",
      "show note" => "show_notes_text",
      "editorial notes" => "editorial_notes_text",
      "editorial note" => "editorial_notes_text",
      "編集後記" => "editorial_notes_text"
    }

    module_function

    def parse(content)
      sections = {}
      current = nil

      content.to_s.each_line do |raw_line|
        line = raw_line.strip
        if line.empty?
          sections[current] << "" if %w[summary_text show_notes_text editorial_notes_text].include?(current)
          next
        end

        inline = line.match(/^([^:：]+)[:：]\s*(.*)$/)
        name = inline ? section_name("#{inline[1]}:") : section_name(line)

        if name
          current = name
          sections[current] ||= []
          sections[current] << inline[2].strip if inline && inline[2] && !inline[2].strip.empty?
          next
        end

        sections[current] << line if current
      end

      sections
    end

    def section_name(line)
      normalized = line.to_s.strip.downcase.sub(/[:：]\s*$/, "")
      SECTION_NAMES[normalized]
    end

    def first(sections, key)
      Array(sections[key]).find { |line| !line.to_s.strip.empty? }.to_s.strip
    end

    def block(sections, key)
      Array(sections[key]).join("\n").strip
    end

    def split_list(value)
      value.to_s.split(/[,、\n]/).map(&:strip).reject(&:empty?)
    end

    def clean_note_line(line)
      line.to_s.strip.sub(/^[-*・]\s*/, "")
    end

    def asset_url(src, baseurl)
      value = src.to_s
      return value unless value.start_with?("/")
      return value if baseurl.to_s.empty? || value.start_with?("#{baseurl}/")

      "#{baseurl}#{value}"
    end

    def rewrite_local_image_sources(html, baseurl)
      html.to_s.gsub(/\bsrc=(["'])(\/[^"']*)\1/) do
        quote = Regexp.last_match(1)
        src = Regexp.last_match(2)
        %(src=#{quote}#{asset_url(src, baseurl)}#{quote})
      end
    end

    def markdown_destination_pattern
      /<[^>]+>|[^)]+/
    end

    def normalize_markdown_destination(destination)
      value = destination.to_s.strip
      if value.start_with?("<") && value.end_with?(">")
        value = value[1...-1]
      end

      asset_url(value, "")
    end

    def inline_markdown_to_html(value, baseurl = "")
      source = value.to_s
      pattern = /(!?)\[([^\]]*)\]\((#{markdown_destination_pattern})\)/
      cursor = 0
      html = +""

      source.to_enum(:scan, pattern).each do
        match = Regexp.last_match
        html << CGI.escapeHTML(source[cursor...match.begin(0)])

        bang = match[1]
        label = CGI.escapeHTML(match[2])
        href = CGI.escapeHTML(asset_url(normalize_markdown_destination(match[3]), baseurl))

        if bang == "!"
          html << %(<figure><img src="#{href}" alt="#{label}"></figure>)
        else
          html << %(<a href="#{href}">#{label}</a>)
        end

        cursor = match.end(0)
      end

      html << CGI.escapeHTML(source[cursor..])
      html
    end

    def notes_to_html(value, baseurl = "")
      lines = value.to_s.lines.map { |line| clean_note_line(line) }
      blocks = []
      items = []

      flush = lambda do
        unless items.empty?
          blocks << "<ul>\n#{items.map { |item| "<li>#{inline_markdown_to_html(item, baseurl)}</li>" }.join("\n")}\n</ul>"
          items = []
        end
      end

      html_block = []

      lines.each do |line|
        if html_block.any?
          html_block << line
          if line.include?("</figure>")
            blocks << rewrite_local_image_sources(html_block.join("\n"), baseurl)
            html_block = []
          end
          next
        end

        if line.empty?
          flush.call
          next
        end

        if line.start_with?("<figure")
          flush.call
          html_block << line
          if line.include?("</figure>")
            blocks << rewrite_local_image_sources(html_block.join("\n"), baseurl)
            html_block = []
          end
          next
        end

        image = line.match(/^!\[([^\]]*)\]\((#{markdown_destination_pattern})\)$/)
        if image
          flush.call
          src = CGI.escapeHTML(asset_url(normalize_markdown_destination(image[2]), baseurl))
          blocks << %(<figure><img src="#{src}" alt="#{CGI.escapeHTML(image[1])}"></figure>)
        else
          items << line
        end
      end

      if html_block.any?
        blocks << rewrite_local_image_sources(html_block.join("\n"), baseurl)
      end

      flush.call
      blocks.empty? ? "<ul><li>準備中です。</li></ul>" : blocks.join("\n\n")
    end
  end
end

Jekyll::Hooks.register :posts, :pre_render do |post|
  sections = NeuroRadio::EpisodeParser.parse(post.content)
  baseurl = post.site.config["baseurl"].to_s.chomp("/")

  post.data["episode_number"] ||= NeuroRadio::EpisodeParser.first(sections, "episode_number").sub(/^#/, "")
  post.data["title"] ||= NeuroRadio::EpisodeParser.first(sections, "title")
  post.data["spotify"] ||= NeuroRadio::EpisodeParser.first(sections, "spotify")
  post.data["performers"] ||= NeuroRadio::EpisodeParser.split_list(NeuroRadio::EpisodeParser.first(sections, "performers"))
  post.data["topics"] ||= NeuroRadio::EpisodeParser.split_list(NeuroRadio::EpisodeParser.first(sections, "topics"))
  post.data["summary"] ||= NeuroRadio::EpisodeParser.block(sections, "summary_text")
  post.data["show_notes_html"] = NeuroRadio::EpisodeParser.notes_to_html(NeuroRadio::EpisodeParser.block(sections, "show_notes_text"), baseurl)
  post.data["editorial_notes_html"] = NeuroRadio::EpisodeParser.notes_to_html(NeuroRadio::EpisodeParser.block(sections, "editorial_notes_text"), baseurl)
end
