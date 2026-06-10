require "minitest/autorun"

module Jekyll
  module Hooks
    def self.register(*)
    end
  end
end

require_relative "../_plugins/episode_parser"

class EpisodeParserTest < Minitest::Test
  def test_inline_markdown_supports_angle_bracket_urls_with_parentheses
    input = "[Sting](<https://en.wikipedia.org/wiki/Sting_(musician)>)（[The Police](https://en.wikipedia.org/wiki/The_Police) のベーシスト兼リードシンガー）"

    html = NeuroRadio::EpisodeParser.inline_markdown_to_html(input)

    assert_equal(
      '<a href="https://en.wikipedia.org/wiki/Sting_(musician)">Sting</a>（<a href="https://en.wikipedia.org/wiki/The_Police">The Police</a> のベーシスト兼リードシンガー）',
      html
    )
  end
end
