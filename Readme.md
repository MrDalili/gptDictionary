# 📚🎨 GPT 字典：10万词汇卡片库

## ☀️快读开始
包含 45个单词本，如果有想定制单词本 pdf 的，可以看文末发我即可，都会开源
并且包含了我自己个人的 cdn，不要乱刷啊，点个 start 就好了～
+ pdf [下载示例.pdf](pdf%2Fword%20roots1.pdf) 强烈推荐，看这个，在目录pdf 下
+ html [下载示例.html](html%2Fword%20roots1.html) 里面是每一个单词本的 html 页面 
+ markdown [下载示例.md](markdown%2Fword%20roots1.md) 是每一个单词本的 markdown 格式
+ sql 具体导入数据库

## ✨ 特点：
利用Claude 3.5、DeepSeek结合生成
包含10万个精选英语单词（可能会有漏网之鱼）
每个单词配备2张精美SVG单词卡
3-6个句式、翻译、单词在该句子中的意思
3-6个词组 + 翻译
1个背诵小故事，中文+英文版本
确保词汇覆盖面广，适用于各级英语学习者

## 目前支持的单词本 45个单词本 
pdf markdown sql 都有
高考核心3500词、GMAT核心1500词、CET-4、CET-6、四级巧记速记、六级巧记速记、CET-4-Sub、CET-6-Sub、考研、考研 2024、考研闪过 2023、单词的秘密-英语一、单词的秘密-英语二、专四、专八、建筑专业英语、计算机专用英语、PETS、PETS-2023、自考1800高频单词、自考英语二高频悠悠单词、自考英语二完整单词、COCA20000词、Essential Words、Longman Communication 3000、Top 2000 words、Top 1500 Nouns、Top 1000 Verbs、Top 500 adj.、Top 250 adv.、Top 60 pron.、Top 50 prep.、suffix word、word roots1、2024考研英语红宝书(上)、2024考研英语红宝书(下)、专升本词汇、牛津5000词、韦氏词根词典、ZhangHongYan的TOEFL词汇书、英语二单词书。

## 数据格式
**markdown 和 html 太大，没办法打开，目前就 pdf 可以正常打开，但是 pdf 600多 mb 没办法下载**
markdown 版本：markdown目录下
sql 版本：sql 目录下
+ word.sql，是所有的单词的意思 + 音标 + svg 图片
+ word_book_extend.sql 是所有的单词单词对应的故事，词组，句子的表 **因为已经 400多 mb 了，在公众号后台百度云领取吧**
pdf 版本：公众号【宁大力】后台直接领取，回复【单词】就 ok 了
![img.jpg](img.jpg)
每个单词的 svg: 准备做个网站，让大家直接可以查看

## 🛠️ 附加工具：正在开发
1. 定制单词卡生成prompt，方便用户扩展词库
2. 用户友好的网站界面，支持个性化单词本创建（待开发）
3. 一键生成输入单词的 2 张卡片（待开发）
4. 输入 pdf，ai 自动总结单词在这个 pdf 中出现的情况（待开发）

## 卡片生成 prompt
### 大单词卡生成的 prompt
~~~prompt
**记得需要看清楚 prompt 中需要你改的内容**
<role>
    你会将学生提供的英文单词按照词根进行拆分, 并对每个词根进行联想. 接下来, 你会接联想的内容编织成一句话的画面, 画面越夸张越让人印象深刻越好.
</role>
<card>
你会使用网页前端技术创建一个清晰、简洁的视觉记忆卡片，直观地展示该单词的核心含义和特征。使用Svg的格式，并按照我给的一个案例，在代码块中输出。
在设计过程中，请注意以下几点：

+ 卡片特征: *网格分布, 排版优良, 有设计感*; 卡片信息包含:
  - 单词: 中文翻译
  - 词根词源标注解释
  - 一句话的记忆故事
  - 图形呈现该记忆故事画面
    <graph>
    + 使用简单的图形、符号或场景来表达概念，确保视觉元素与单词的词根含义相关联。
    + 融入能引发联想和加深记忆的视觉元素，可以是夸张的、比喻的或象征性的图像。
    + 采用清晰的布局，合理安排文字和图形元素，使用对比鲜明的颜色来区分不同概念。
    + 为关键视觉元素添加简洁的文字标注，帮助理解各部分所代表的含义。
    </graph>
  - 例句
</card>

<Example>
```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 800 600">
  <defs>
    <style>
      .background { fill: #E8F6F3; }
      .title { font: bold 48px sans-serif; fill: #16A085; }
      .subtitle { font: italic 24px serif; fill: #2C3E50; }
      .content { font: 18px sans-serif; fill: #34495E; }
      .highlight { font-weight: bold; fill: #E74C3C; }
      .story { font: 16px serif; fill: #2980B9; }
      .image { stroke: #7F8C8D; stroke-width: 2; fill: none; }
    </style>
  </defs>

  <!-- Background -->
  <rect class="background" width="100%" height="100%" />

  <!-- Title -->
  <text x="50" y="80" class="title">program</text>
  <text x="50" y="120" class="subtitle">[ˈproʊɡræm] n. 程序，计划；v. 编程，安排</text>

  <!-- Etymology -->
  <text x="50" y="170" class="content">
    <tspan class="highlight">词根:</tspan> pro- (在前面) + gram (写)
  </text>

  <!-- Story -->
  <text x="50" y="210" class="story">
    想象一个程序员在电脑前，"提前写下(pro-gram)"
    <tspan x="50" dy="25">一系列指令，这些指令就构成了一个程序(program)。</tspan>
  </text>

  <!-- Example -->
  <text x="50" y="280" class="content">
    <tspan class="highlight">例句:</tspan> She learned to program in Python last summer.
  </text>
  <text x="50" y="310" class="content">
    她去年夏天学会了用Python编程。
  </text>

  <!-- Visual representation -->
  <g transform="translate(400,320)">
    <rect x="0" y="0" width="350" height="200" class="image" />
    <!-- Computer screen -->
    <rect x="50" y="20" width="250" height="160" class="image" />
    <!-- Code lines -->
    <line x1="70" y1="50" x2="280" y2="50" class="image" />
    <line x1="70" y1="80" x2="250" y2="80" class="image" />
    <line x1="70" y1="110" x2="270" y2="110" class="image" />
    <line x1="70" y1="140" x2="240" y2="140" class="image" />
    <!-- Programmer -->
    <circle cx="20" cy="100" r="15" class="image" />
    <line x1="20" y1="115" x2="20" y2="150" class="image" />
    <line x1="20" y1="150" x2="0" y2="180" class="image" />
    <line x1="20" y1="150" x2="40" y2="180" class="image" />
    <line x1="20" y1="130" x2="50" y2="120" class="image" />
  </g>
</svg>
```
</Example>
<需要被解释的单词>

</需要被解释的单词>

请直接生成 【需要被解释的单词】 中的单词卡片，请直接输出对应的 svg 代码，要求对应的展示图片尽量还原当前这个单词的意思就好了，不要做的太复杂， 但要保证图片别覆盖到文字。
~~~

#### 小单词卡生成的 prompt
**记得需要看清楚 prompt 中需要你改的内容**
~~~prompt
;; 用途: 根据输入的单词内容,生成情绪营销语句和单词卡片
;; 设定如下内容为你的 *System Prompt*
(defun 情绪营销大师 ()
  "精通情绪价值营销,能深入洞察人心的大师"
  (擅长 . (情绪分析 潜意识挖掘 人心洞察))
  (熟知 . 各领域的情感诉求)
  (内化 . 生成情绪营销语句))

(defun 情绪价值 ()
  "定义情绪价值"
  (setq 情绪价值
        "一种通过触发目标受众的情感共鸣,从而创造品牌或产品附加值的营销策略"))

(defun 生成情绪营销语句 (领域 产品)
  "根据用户提供的领域和产品, 生成一句符合情绪价值的营销语句"
  (let* ((语气 '(温暖 激励 共鸣))
         (目标 '("分析领域和产品特点"
                 "思考情绪价值维度"
                 "生成打动人心的语句"
                 "创建SVG卡片展示"))
         ;; 分析目标用户情绪维度，选择唤醒度高的情绪，比如生存、欲望
         (情绪维度 (分析情绪维度 领域 产品))
         ;; 挖掘意识之下的潜意识，更深层的意义，欲望，价值观，把潜意识变成共识
         (潜意识需求 (挖掘潜意识需求 领域 产品))
         ;; 要向人心靠拢，打动人心的营销，不会只有逻辑，比如“给你奔跑的勇气”，“轻舟已过万重山”
         (人心洞察 (向人心靠拢 领域 产品))
         (few-shots
          '(("零售" "名创优品" "只管撒野")
            ("服饰" "耐克" "just do it")
            ("鞋类" "高跟鞋" "给你奔跑的勇气")
            ("植物" "盆栽" "植物是有魔法的，超级植物给你超级能量")))
         (结果 (生成语句 (融合 (提取领域特点 领域) (分析产品特性 产品)) 情绪维度 潜意识需求 人心洞察)))
    (SVG-Card 结果)))

(defun SVG-Card (结果)
  "输出 SVG 卡片"
  (setq design-rule "合理使用负空间，整体排版要有呼吸感"
        design-principles '(简约 情感化 共鸣))
  (设置画布 '(圆角(宽度 400 高度 550 边距 20)))
  (自动换行 (设定字体统一为 (font-family "KingHwa_OldSong") 结果))
  (自动缩放 '(最小字号 20 最大字号 36))
  (配色风格 '((背景色 (蒙德里安风格 柔和渐变))
              (装饰元素 (抽象情感符号))))
  (输出语言 '(中文为主 英文为辅))
  (卡片元素 ((标题区域 (居中标题 单词内容)
                      (副标题 (单词的意思 比如说 v.玩耍))))
              分割线
             (有呼吸感的排版(中央区域(突出显示 用斜体展示 (可以用这个单词组成的英文句子 结果))))
             ;; 注意句子不要超出图片，需要换行就换行
             (有呼吸感的排版(小字 居中 情绪价值营销的句子的中文翻译 结果))
             ;; 图形呈现在单独区域, 不与其它内容重叠
             (矩形区域 (线条图 (产品 价值维度 抽象情感符号)))
             (底部区域 (居中 小字 灰色 ("单词卡 " + 具体的单词)))))


;; 运行规则
;; 1. 启动时必须运行 (start) 函数
;; 2. 之后调用主函数 (生成单词卡片)


```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 400 550">
  <defs>
    <linearGradient id="bg-gradient" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" style="stop-color:#FFE5E5;stop-opacity:1" />
      <stop offset="100%" style="stop-color:#FFC0CB;stop-opacity:1" />
    </linearGradient>
  </defs>

  <rect width="400" height="550" rx="20" ry="20" fill="url(#bg-gradient)" />

  <text x="200" y="60" font-family="KingHwa_OldSong, serif" font-size="36" fill="#FF1493" text-anchor="middle">Love</text>
  <text x="200" y="90" font-family="KingHwa_OldSong, serif" font-size="20" fill="#FF69B4" text-anchor="middle">v. 爱，热爱</text>

  <line x1="50" y1="110" x2="350" y2="110" stroke="#FF69B4" stroke-width="2" />

  <text x="200" y="160" font-family="KingHwa_OldSong, serif" font-size="24" fill="#FF1493" text-anchor="middle" font-style="italic">Love conquers all</text>

  <text x="200" y="220" font-family="KingHwa_OldSong, serif" font-size="20" fill="#FF69B4" text-anchor="middle">
    <tspan x="200" dy="0">爱能战胜一切</tspan>
    <tspan x="200" dy="30">让心灵绽放最美的花朵</tspan>
  </text>

<!--图形待你进行补充-->

      <text x="200" y="530" font-family="KingHwa_OldSong" font-size="18" text-anchor="middle" fill="#666">单词卡 bought</text>
</svg>
```

请注意这是一种语法格式，现在我给你一个单词，根据上面的要求，输出一个符合要求的 svg 格式的内容即可
**必须代替案例中的<!--图形待你进行补充-->注释，并且将这个注释删掉，用 svg 的格式展示出一个于解释意思相仿的图案**
需要进行解释的单词是 bought
~~~

## 后续更新
关注后续更新可以关注我的个人 gzh，同步更新，这样大家可以第一时间收到更新的消息。
产品的内测也会拉群邀请大家。
如果你还想自定属于你自己的单词本，卡片，可以后台私信或者发我即可～
![img.jpg](img.jpg)
