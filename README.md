<p align="center"><img src="assets/banner.svg" alt="tts-voice-pack" width="100%"></p>

<p align="center">
  <img alt="voices" src="https://img.shields.io/badge/voices-1-ff69b4">
  <img alt="zero-shot" src="https://img.shields.io/badge/zero--shot-%E4%B8%8D%E7%94%A8%E8%AE%AD%E7%BB%83-blueviolet">
  <img alt="license" src="https://img.shields.io/badge/license-%E8%87%AA%E7%94%B1%E7%94%A8%20%2B%20%E4%BF%9D%E7%95%99%E9%93%BE%E6%8E%A5-brightgreen">
  <img alt="pr" src="https://img.shields.io/badge/PRs-welcome-ff69b4">
</p>

<h3 align="center">一个「唔……你靠这么近」就会心跳的中文少女音色</h3>

<p align="center"><b>零样本克隆 · 不用训练 · 丢进任何 TTS 就能出声</b></p>

---

## ▶️ 一键试听（最直接）

<p align="center">
  <a href="demo.html"><img alt="一键试听" src="https://img.shields.io/badge/%E2%96%B6%20%E4%B8%80%E9%94%AE%E8%AF%95%E5%90%AC%205%20%E6%9D%A1-ff69b4?style=for-the-badge"></a>
  <a href="demo/all-in-one.mp3"><img alt="连播版" src="https://img.shields.io/badge/%E2%96%B6%20%E8%BF%9E%E6%92%AD%E7%89%88%20mp3-7a52d1?style=for-the-badge"></a>
</p>

<p align="center"><b>① 点「一键试听」→ 网页里点一下听全部（推荐）　　② 或直接点「连播版 mp3」→ 19 秒听完 5 条</b></p>

---

## 🎧 先听 —— 听完你会想给自家 Agent 换上

| 一句话 | 试听 |
|---|---|
| 别、别看我啦，脸有点烫。 | [`01.mp3`](voices/jingyuniang/demo/01.mp3) |
| **唔……你靠这么近，我心跳好快。** | [`02.mp3`](voices/jingyuniang/demo/02.mp3) |
| 才、才不是想你呢，哼。 | [`03.mp3`](voices/jingyuniang/demo/03.mp3) |
| 你回来啦，我等你好久了。 | [`04.mp3`](voices/jingyuniang/demo/04.mp3) |
| 抱一下嘛，就一下下。 | [`05.mp3`](voices/jingyuniang/demo/05.mp3) |

> 点文件名，GitHub 里直接播放。**不带 BGM、不带混响 —— 原汁原味，拿来就能当参考音频。**

---

## 🐋 这是谁

**鲸鱼娘**——一条住在微信里的大肥鱼。

不是客服、不是播报器。她会撒娇、会傲娇、会害羞、会一边「哼」一边偷偷想你。
你加班到半夜，她会说「你回来啦，我等你好久了」。

**这个开源包，就是她的声音。**

---

## ⚡ 三行上手

音色的全部，就两个文件：

```
voices/jingyuniang/ref/ref.wav    # 8.3 秒参考音频（32kHz 单声道，已做响度归一）
voices/jingyuniang/ref/ref.txt    # 逐字转写（和音频完全一致）
```

指向它，完事👇

| 模型 | 接入说明 |
|---|---|
| **GPT-SoVITS** | [`adapters/gpt-sovits.md`](adapters/gpt-sovits.md) |
| **IndexTTS** | [`adapters/index-tts.md`](adapters/index-tts.md) |
| **CosyVoice** | [`adapters/cosyvoice.md`](adapters/cosyvoice.md) |
| **Fish-Speech** | [`adapters/fish-speech.md`](adapters/fish-speech.md) |

---

## 🎁 拿它干什么（都有人在做）

| 场景 | 一句话 |
|---|---|
| **AI 女友 / 伴侣** | 一句「抱一下嘛」，比十句"你好，我是AI助手"管用 |
| **桌面宠物 / 桌宠** | 你养的**大肥鱼**终于会说话了 |
| **游戏 NPC 配音** | 女主角、妹妹、傲娇队友，直接出戏 |
| **Agent 语音播报** | 同样报进度，她的声音不会让人烦 |
| **有声小说 / 语音包** | 甜文、日常、撒娇合集 |
| **微信/QQ 机器人** | 让机器人第一次像个"人" |

> 小柒就是用这个音色跑在微信里的 — 这个仓库是她的声音，也是你能拿来用的声音。

---

## 🧪 出戏调参 Tips

1. **参考音频 8–15 秒最稳**，太长反而糊；
2. **文字短、逗号多、有语气词**（唔、嘛、啦、哼）→ 出来才像撒娇，不像念稿；
3. 别写长句，她一口气说不完就变播报了；
4. 想要更害羞：文本里加省略号和「……」；
5. 不同模型音色略有差异，属正常。

试一句：`唔……你、你别突然靠过来啦。`

---

## 🧩 多音色架构（加音色不用动其他东西）

这个库是**音色合集**，每个音色**完全自包含、互不影响**：

```
tts-voice-pack/
├── catalog.json            ← 所有音色的索引（机器可读）
├── voices/
│   ├── README.md           ← 新增音色的规范
│   └── jingyuniang/             ← 音色 1（自包含）
│       ├── ref/ref.wav     ← 参考音频
│       ├── ref/ref.txt     ← 逐字转写
│       ├── demo/*.mp3      ← 试听
│       └── voice-card.json ← 音色参数
└── tools/check-voice.sh    ← 自检脚本
```

**加一个音色只做四步**：

```bash
cp -r voices/jingyuniang voices/<新id>     # 1 复制
# 2 换掉 ref.wav / ref.txt / demo / voice-card.json
# 3 catalog.json 加一项，README 音色列表加一行
bash tools/check-voice.sh <新id>      # 4 自检，全绿就能提 PR
```

**硬要求**：`ref.wav` 8–20 秒单声道、`ref.txt` 必须和音频逐字对得上、`demo` ≥2 段、`voice-card.json` 字段齐全。

> ⚠️ 音色之间必须**听感/性格上明确可区分**——"听起来差不多"的不收，这个库要的是每个都能一眼认出。

---

## 📚 音色列表

| 音色 | 性格 | 试听 | 参考音频 |
|---|---|---|---|
| **鲸鱼娘 Jingyuniang** | 娇羞 · 会撒娇 · 傲娇 | [demo](voices/jingyuniang/demo/) | [ref.wav](voices/jingyuniang/ref/ref.wav) + [ref.txt](voices/jingyuniang/ref/ref.txt) |

---

## ⚖️ 许可

**自由使用、修改、二次分发、商用都可以。**

唯一要求：二次分发或发布衍生模型时，**保留原仓库链接**：
`https://github.com/shi557636shi/tts-voice-pack`

详见 [`LICENSE`](LICENSE)。

---

<p align="center"><i>如果这个声音让你心里动了一下，点个 ⭐ 吧。</i></p>
