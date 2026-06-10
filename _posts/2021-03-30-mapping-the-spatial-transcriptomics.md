---
layout: episode
title: "#5 Mapping the spatial transcriptomics"
episode_number: "5"
date: 2021-03-30
permalink: /2021/03/30/5-mapping-the-spatial-transcriptomics/
spotify: "https://open.spotify.com/embed/episode/0lqvcvh6VJa7laRWScp5JC?utm_source=generator"
apple_podcast: "https://podcasts.apple.com/us/podcast/5-mapping-the-spatial-transcriptomics/id1556937028?i=1000514952355"
performers: ["萩", "脇"]
topics: ["論文解説", "トランスクリプトミクス"]
summary: "10000種類以上のmRNAをsubcellular resolutionで解析できそうなSpatial transcriptomicsの手法について、宮脇が５つの原理に分けて簡単にレビュー。"
---

Show Notes:
1. RNAのcDNAを環状にして増幅、SOLiDでin situ sequencing
[Highly Multiplexed Subcellular RNA Sequencing in Situ](https://science.sciencemag.org/content/343/6177/1360.long)...FISSEQ。George Churchラボ。
Rolling Circle Amplification...環状にした一本鎖DNAテンプレートに対して一方向にポリメラーゼで増幅をかけ、何周もさせることにより、巨大なアンプリコンを作成する手法
[Next Gen SOLiD DNA Sequencing Method Explained](https://www.youtube.com/watch?v=YLT-DUeaLms)...SOLiDの原理説明動画。In Situ Sequencingの文脈で関連があるのは 5:18~。
[Expansion sequencing: Spatially precise in situ transcriptomics in intact biological systems](https://science.sciencemag.org/content/371/6528/eaax2656)...UntargetedとTargetedの２種類があるが、前者はFISSEQ+ExM。Boyden+Churchラボ。
[Expansion microscopy](https://science.sciencemag.org/content/347/6221/543)...脳サンプルを大きくすることにより実効的な解像度を上げる手法

2. Padlock ProbeでｍRNAとDNAバーコードを対応付けてin situ sequencing
[Padlock Probe](https://science.sciencemag.org/content/265/5181/2085.long)...末端の配列が、隣接する標的配列を持つオリゴヌクレオチド。標的配列にハイブリダイゼーションすると&quot;ブリッジ&quot;するような形になり、ライゲーションによって環状化できる。
[In situ sequencing for RNA analysis in preserved tissue and cells](https://www.nature.com/articles/nmeth.2563)...Padlock Probeを作ったMats Nillsonたちによるin situ sequencing
[SplintR® Ligase](https://www.neb.com/products/m0375-splintr-ligase#Product%20Information)...これのお陰でPadlockを使う際の逆転写が不要になった。PBCV-1 DNA ligaseとも。
Expansion Sequencing...Targetedはこちらの原理を採用。
[Three-dimensional intact-tissue sequencing of single-cell transcriptional states](https://science.sciencemag.org/content/361/6400/eaat5691)...DeisserothラボのSTARmap。PadlockやSOLiDについて改良しているけど、この分類に入れちゃいます。
[Barcoded oligonucleotides ligated on RNA amplified for multiplexed and parallel in situ analyses](https://academic.oup.com/nar/advance-article/doi/10.1093/nar/gkab120/6163087?guestAccessKey=7cd2df9e-3085-4065-a367-97d8d5ba645a)...BOLORAMIS。George Churchラボ。
[High-Throughput Mapping of Long-Range Neuronal Projection Using In Situ Sequencing](https://www.sciencedirect.com/science/article/pii/S0092867419310748?via%3Dihub)...BARseq。Zadorラボ。MAPseqによって既に細胞に発現させているRNAのバーコードをpadlockに取り込み、増幅。内在性のmRNAも一緒に読める。bioRxivにある[改良版](https://www.biorxiv.org/content/10.1101/2020.08.25.266460v1)もチェック。
[High-Throughput Mapping of Single-Neuron Projections by Sequencing of Barcoded RNA](https://www.sciencedirect.com/science/article/pii/S0896627316304214)..MAPseq。Zadorラボ。Sindbis Virusを使って核酸のバーコードを、それを軸索まで運ぶための人工タンパク質と一緒に細胞に導入する。ある脳領域にウイルスを局所注入し、投射先領域の切片からRNAシーケンシングを行ってどのバーコードが存在していたかを調べれば、個々のニューロンがどこに投射していたのかを一挙に知ることができる。

3. 最初にhybridizeするプローブにバーコードの組み合わせを持たせ、更にバーコードに対するhybridizationを複数回行う
[Researchat #54](https://researchat.fm/episode/54)...同じく生物学系ポッドキャスト。SeqFISH,MERFISHあたりの技術がわかりやすく解説されている。
[Spatially resolved, highly multiplexed RNA profiling in single cells](https://science.sciencemag.org/content/348/6233/aaa6090)...MERFISH。Xiaowei Zhuangラボ。
[Transcriptome-scale super-resolved imaging in tissues by RNA seqFISH](https://www.nature.com/articles/s41586-019-1049-y)...seqFISH plus。Long Caiラボ。このラボは他のin situ sequence手法もたくさん出しているので気になる方は[ラボHP](https://spatial.caltech.edu/)をチェック。訂正：seqFISH Plusの組み合わせ数の説明を間違えました…。すみません。一つの遺伝子に用いる色は１色のみ、プローブについた４スロットのバーコードは独立したラウンド（１ラウンドあたり20回のハイブリダイゼーション）で染色、１スロットはError Correction用、ということで、分離できるのは60C4個ではなく３×20^(4-1)個。
smFISH...一つのmRNAに対して何個もハイブリダイズプローブを結合させることによりシグナル増幅を行う手法

4. 座標ごとにバーコードをつけたスライドガラスに組織を貼り付ける
[Visualization and analysis of gene expression in tissue sections by spatial transcriptomics](https://science.sciencemag.org/content/353/6294/78)...Spatial Transcriptomics. Frisenラボ。1stのStahlは独立して更に手法を進化させている。
[Slide-seq: A scalable technology for measuring genome-wide expression at high spatial resolution](https://science.sciencemag.org/content/363/6434/1463)...Fei Chen+Evan Macosko。Drop-seqの技術を応用。解像度10 um。
[Large field of view-spatially resolved transcriptomics at nanoscale resolution](https://www.biorxiv.org/content/10.1101/2021.01.17.427004v2)...Stereo-Seq
[Seq-Scope: Submicrometer-resolution spatial transcriptomics for single cell and subcellular studies](seq-scope: Submicrometer-resolution spatial transcriptomics for single cell and subcellular studies)...Seq-Scope
[Continuous Polony Gels for Tissue Mapping with High Resolution and RNA Capture Efficiency](https://www.biorxiv.org/content/10.1101/2021.03.17.435795v1)...PIXEL-Seq

5. mRNA同士の近さをDNAで記録し、距離行列を次元削減
[Researchat #16](https://researchat.fm/episode/16)...DNA microscopy回。
[DNA Microscopy: Optics-free Spatio-genetic Imaging by a Stand-Alone Chemical Reaction](https://www.sciencedirect.com/science/article/pii/S0092867419305471)...Aviv Regev, Feng Zhangラボから。Overhang PCRでmRNAの距離情報をPCR産物として記録。筆頭著者のJoshu Weinsteinによる[プレゼン](https://www.youtube.com/watch?v=hrqU2RP_9rc)も分かり易い。
[A DNA nanoscope via auto-cycling proximity recording](https://www.nature.com/articles/s41467-017-00542-3)...DNA nanoscope from Peng Yinラボ。mRNAを対象としているわけでは無いけど、今後応用できるかもねってことで。Auto-cycling proximity recordingというギミックを利用。
Nature Reviews drug discoveryによる直近のAviv Regevの[インタビュー記事](https://www.nature.com/articles/d41573-021-00051-5)。

その他
[Expansion-Assisted Iterative-FISH defines lateral hypothalamus spatio-molecular organization](https://www.biorxiv.org/content/10.1101/2021.03.08.434304v1)...EASI-FISH from Sternson/Tilbergラボ。みんなができるSpatial Transcriptomeというコンセプトで作られた手法。染色の回数と見ることができるmRNAの種類はリニアな関係にしかないが、高々数10種類のマーカーを見るならこれでいい気もする。300 um厚の切片に適用。

<figure>
  <img src="/assets/episodes/5-mapping-the-spatial-transcriptomics/FISSEQ_eyecatch-1.png" alt="Episode 5 image">
  <figcaption>From Alon et al., bioRxiv 2020.05.13.094268 (2020)</figcaption>
</figure>

Editorial Notes:
一般にSpatial Transcriptomicsというと、今回紹介したものの他に、マイクロダイセクションをベースとしたもの（[STRP-seqとか](https://www.biorxiv.org/content/10.1101/2020.08.04.235655v1)）や、scRNAseqのデータから座標をcomputationalに推定する（[Tangramとか](https://www.biorxiv.org/content/10.1101/2020.08.29.272831v3)）、という方法も含みます。今回はsubcellular resolution担保できなさそう、ってことで割愛（宮脇）
当初このネタでポッドキャストをキックオフしようかと思っていましたが、直前にresearchatパイセンの#54を発見し、あまりにもコンセプトが被っていてかつわかりやすかったので、神経科学への応用に寄せて寄せて無事お披露目となりました汗 (萩原)
