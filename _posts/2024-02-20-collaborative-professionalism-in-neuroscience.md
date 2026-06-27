---
layout: episode
title: "#72 Collaborative professionalism in neuroscience"
episode_number: "72"
date: 2024-02-20
permalink: /2024/02/20/72-collaborative-professionalism-in-neuroscience/
spotify: "https://open.spotify.com/embed/episode/3Gcb2D7E6X5Lc4M2dIBRU3?utm_source=generator"
apple_podcast: "https://podcasts.apple.com/us/podcast/72-collaborative-professionalism-in-neuroscience/id1556937028?i=1000645937491"
guests: ["大久保達夫"]
performers: ["ゲスト", "萩", "脇"]
topics: ["ゲスト回", "大学院留学", "システム神経科学", "データ解析", "鳥", "ショウジョウバエ", "計算神経科学"]
summary: "北京脳科学研究所の大久保達夫さんゲスト回。工学部からシステム神経科学に進んだきっかけ、FeeラボPhD時代、WilsonラボPD時代、現在のデータ解析を中心とした働き方の狙い、専門の分業に関するディスカッション、等 (12/30 収録)"
---

Show Notes:
[大久保さん個人HP](https://www.tatsuookubo.com/japanese.html)
[吉良さん](https://harveylab.hms.harvard.edu/)@Chris Harvey Lab
[計数工学科](https://www.keisu.t.u-tokyo.ac.jp/outline/about/)
[Michael Fee lab](https://feelaboratory.org/)
[FeeラボでのNature論文](https://www.nature.com/articles/nature15741)
の[日本語版解説](https://first.lifesciencedb.jp/archives/12002)
[FeeラボでのNeuron論文](<https://www.cell.com/neuron/fulltext/S0896-6273(16)30108-8>)
の[日本語版解説](https://first.lifesciencedb.jp/archives/12565)
[Rachel Wilson lab](https://wilson.hms.harvard.edu/)
[Neuron論文](https://www.sciencedirect.com/science/article/pii/S0896627320304761)
Pattern RecognitionとMachine Learning ([PRML](https://www.maruzen-publishing.co.jp/item/b294524.html))
[パターン認識の教科書の表紙](https://www.ohmsha.co.jp/book/9784274131493/)
[Parallel Distributed Processing (PDP)](https://mitpress.mit.edu/9780262680530/parallel-distributed-processing/): 並列分散処理で認知機能を説明しようとする1980年代に流行ったUCSDを中心とする認知科学のグループ。
[Paul Churchland](https://en.wikipedia.org/wiki/Paul_Churchland) の本[The Engine of Reason, the Seat of the Soul](https://mitpress.mit.edu/9780262531429/the-engine-of-reason-the-seat-of-the-soul/)
[Patricia Churchland](https://patriciachurchland.com/)
[Mark Churchland](https://churchland.zuckermaninstitute.columbia.edu/people/mark-m-churchland)
[Anne Churchland](https://churchlandlab.dgsom.ucla.edu/pages/)
[Terrence Sejnowski](https://www.salk.edu/scientist/terrence-sejnowski/)
[The Computational Brain](https://mitpress.mit.edu/9780262531207/the-computational-brain/)
[Dmitriy Aronov](https://www.aronovlab.com/)の[Science論文](https://www.science.org/doi/10.1126/science.1155140)（HVC破壊してもSubsongは残る）
[COSYNE](https://www.cosyne.org/)
[Temperatureのやつ](https://www.nature.com/articles/nature07448)
[鳥の歌生成に関わる脳領域、RA、HVC、LMAN の関連など](https://academic.oup.com/ilarjournal/article/51/4/362/676057)
[Jesse Goldberg](https://sites.google.com/view/goldberg-lab/home)の[DopamineがPerformance errorをコードしている論文](https://www.science.org/doi/abs/10.1126/science.aah6837)
[親の歌を聴かせなかった時のHVCのシーケンス活動](https://elifesciences.org/articles/77262)
[Galen達がミニスコープを作ってカルシウムイメージングを始める](https://www.nature.com/articles/s41592-023-01806-1)
[Genetic Dissectionのレビュー論文](<https://www.cell.com/neuron/fulltext/S0896-6273(08)00031-7>) 2008
[Andreas Luthi](https://www.nature.com/articles/nature09559)と[David Anderson](https://www.nature.com/articles/nature09553) のb2b 2010
ハエはニューロンが個体を越えてIdentifiable: 仕事としては[逃避を司るgiant fiber interneuron](https://www.nature.com/articles/nn.3741)というのが古くから知られていて一番有名ですが、このニューロンは巨大なので例外で、ほとんどのタイプはsplit-Gal4のラインが整備されて以降（ここ10年）解析できるようなってきました。以下の仕事が代表的な例として挙げられます。

麻生さんのキノコ体の[神経解剖](https://elifesciences.org/articles/04577)、[光遺伝学](https://elifesciences.org/articles/04580)の仕事
[並木さんの下降性ニューロンの仕事](https://elifesciences.org/articles/34272)

実際split-Gal4作りがうまくいくと（２つのGal4ラインのうまい組み合わせが見つかると）、麻生さんの論文のFig. 2のように左右に一つずつあるニューロンが綺麗に取れてきます。一旦split-Gal4ラインができてしまえば、GFPを発現させてパッチしたり、オプトで活動を操作したりと、単一ニューロンレベルで解析できるのが良いところです。もちろん一つのセルタイプに複数のニューロンがあることもあるので、その場合は同じセルタイプ内では区別はできませんが（大久保）
ちなみに[このビデオ](https://www.youtube.com/watch?v=_zRmXj5YVpU)がhemibrainというEMのデータから再構築されたニューロンのギャラリーで、一個のcell typeに名前がついていて、ユニークな形をしているのが分かりやすいと思います。このユニークな形のおかげで、EMのデータとsplit-Gal4を作る際に撮った光学顕微鏡のデータのマッチングは非常にうまくいっていて、同じニューロンを両方のデータで見つけられます（大久保）
[髭さんのキノコ体の電気生理の仕事](https://www.nature.com/articles/nature15396)
[並木さんの下降性ニューロンの仕事](https://elifesciences.org/articles/34272)
ハエのConnectome論文[Central Brain](https://elifesciences.org/articles/57443)[Whole Brain](https://www.science.org/doi/10.1126/science.add9330)
[大学院生がやった行動実験の仕事（嗅覚と風を検知する機械受容覚にコンフリクトがあった場合、機械受容覚に従う）](<https://www.cell.com/neuron/fulltext/S0896-6273(16)30264-1>)
[Vivek Jarayaman](https://www.janelia.org/lab/jayaraman-lab)
の[仕事](https://www.nature.com/articles/nature14446)
[ハエDual Patch](https://www.nature.com/articles/nn.2376), 隣の大学院生がやった運動に関するニューロンのdual patchの[仕事](https://www.biorxiv.org/content/10.1101/2020.04.04.024703v2.full)
[ハエのTriple Patch](https://www.nature.com/articles/nn.3613): このWilson研の大学院生の仕事のFig. 4ではシナプス結合している３つのニューロンからのin vivo同時記録という超絶技巧あり！
[Janeliaがハエのラインをリリースした（Split-Gal4）](https://www.biorxiv.org/content/10.1101/2024.01.09.574419v1)
[風間さん](https://kazamalab.riken.jp/index_jp.html)
[Wade Regehr](https://regehr.med.harvard.edu/index.html)
[Bernardo Sabatini](https://sabatini.hms.harvard.edu/)
[Chris Harvey](https://harveylab.hms.harvard.edu/)
[Michael Greenberg](https://greenberg.hms.harvard.edu/)
[北京脳科学研究所の組織図](https://www.cibr.ac.cn/about/generalization?language=en)
[メンフクロウの音源定位のレビュー](https://web.archive.org/web/20170108141048/https://courses.cit.cornell.edu/bionb4240/Readings/Konishi_scientificamerican0493-66.pdf) この頃のScientific Americanは分野の第一人者が平易な文と分かりやすい図でレビューを書いており、素晴らしいです。
[鳥と哺乳類で音源定位の神経回路は似ているか？](https://www.jneurosci.org/content/39/46/9053)
[小西正一先生のobituary](https://www.caltech.edu/about/news/mark-konishi-renowned-neuroethologist-dies-87)
[Matt Wilson](https://web.mit.edu/wilsonlab/)
[Josh (Siegle)](https://alleninstitute.org/person/josh-siegle/)
[CIBRでのPI公募](https://cibr.ac.cn/Recruitment/otherPositions/detail/822?language=en)
[The Transmitterの神経科学における専業に関するオピニオン記事](https://www.thetransmitter.org/systems-neuroscience/why-and-how-we-need-to-professionalize-neuroscience/)
[Jakob Voigts](https://www.janelia.org/lab/voigts-lab)
[Open Ephys](https://open-ephys.org/)
[DeepLabCut (DLC)](https://github.com/DeepLabCut)
[Advanced Technology Team](https://wyss.harvard.edu/team/advanced-technology-team/)
[Image Analysis Collaboratory](https://iac.hms.harvard.edu/) @ HMS
[Institutional Knowledge](https://en.wikipedia.org/wiki/Institutional_memory)
[Instrumentation Core @ HMS](https://instrumentation.hms.harvard.edu/ric-home)
[北京脳科学研究所のInstrumentation Core](https://instrumentation.cibr.ac.cn/english.php/Index/index.html)
[AquiNeuro](https://aquineuro.eu/en/)
[Cyril Herry](https://www.bordeaux-neurocampus.fr/en/staff/cyril-herry/)
[Fixstars](https://www.fixstars.com/ja)
[OpenScope](https://alleninstitute.org/division/neural-dynamics/openscope/)
[Jérôme Lecoq](https://alleninstitute.org/person/jerome-lecoq/)
[Mark Schinitzer](https://pyramidal.stanford.edu/)
[異なる個体においてもニューロンの集団活動のダイナミクスが似ている](https://www.nature.com/articles/s41586-023-06714-0)
[Segment Anything](https://segment-anything.com/) (Zero-shotで画像のセグメンテーションを行うモデルの例）
[DeeperCut](https://arxiv.org/abs/1605.03170)

Editorial Notes:
この度は貴重な機会を頂き、有難うございました！過去のNeuroRadioのゲストの方の中には一緒に語り合った仲間も多く、こういった形で近況アップデートできて良かったです。自分は、様々なタイプの科学者のちょっとした出来事に垣間見られる「現場でのプロフェッショナリズム」に大きく影響を受けてきました。そういった学会発表や論文からはなかなか見ることのできない科学者の人物像に関するエピソードを盛り込むようにしましたが、少しでも雰囲気が伝われば幸いです。後半の神経科学におけるコラボレーションの議論では、Allen InstituteやWyss Instituteでの様子も聞けて、色々と参考になりました。 (大久保)
自分もなるべく生データに近い所で働きたいです。新しい研究所で新しいキャリアの在り方を作るのは大変そうですがハマれば理想的ですね (宮脇)
生理実験がまあまあ得意、というのに要所要所で支えられてきましたが、実験はできるだけ早く引退したい… (とはいえ解析だけで生きていけるほど解析能力が高くないのであった) (萩原)
