<p align="center"><img src="assets/banner.svg" alt="tts-voice-pack" width="100%"></p>

<p align="center">
  <img alt="voices" src="https://img.shields.io/badge/%E9%9F%B3%E8%89%B2-1-1f7fc4">
  <img alt="zero-shot" src="https://img.shields.io/badge/zero--shot-%E4%B8%8D%E7%94%A8%E8%AE%AD%E7%BB%83-6a52c9">
  <img alt="license" src="https://img.shields.io/badge/license-%E8%87%AA%E7%94%B1%E7%94%A8%2B%E4%BF%9D%E7%95%99%E9%93%BE%E6%8E%A5-2ea44f">
  <img alt="pr" src="https://img.shields.io/badge/PR-%E6%AC%A2%E8%BF%8E-c0398a">
</p>

<h3 align="center">中文音色包 · 一个音色一套音频，拿来即用</h3>

<p align="center"><b>零样本克隆 · 不用训练 · 丢进任何 TTS 就能出声 · 女声 / 男声 / 角色声都装得下</b></p>

---

## ▶️ 一键试听（先听，再决定要不要往下读）

<p align="center">
  <a href="https://theliangzhu.github.io/tts-voice-pack/demo.html"><img alt="一键试听" src="https://img.shields.io/badge/%E2%96%B6%20%E6%89%93%E5%BC%80%E8%AF%95%E5%90%AC%E9%A1%B5-1f7fc4?style=for-the-badge"></a>
  <a href="demo/all-in-one.mp3"><img alt="连播" src="https://img.shields.io/badge/%E2%96%B6%20%E8%BF%9E%E6%92%AD%E7%89%88%2019s-c0398a?style=for-the-badge"></a>
</p>

<p align="center">
  <b>鲸鱼娘</b>（本库第 1 弹）：<a href="voices/jingyuniang/demo/01.mp3">别、别看我啦</a> ·
  <a href="voices/jingyuniang/demo/02.mp3">唔…你靠这么近</a> ·
  <a href="voices/jingyuniang/demo/03.mp3">才不是想你呢</a> ·
  <a href="voices/jingyuniang/demo/04.mp3">你回来啦</a> ·
  <a href="voices/jingyuniang/demo/05.mp3">抱一下嘛</a>
</p>

---

## 📚 音色列表

| 音色 | 类型 | 性格 / 气质 | 试听 | 参考音频 |
|---|---|---|---|---|
| **鲸鱼娘** <sub>Jingyuniang</sub> | 女声 · 青年 | 娇羞 · 会撒娇 · 傲娇 | [demo](voices/jingyuniang/demo/) | [ref.wav](voices/jingyuniang/ref/ref.wav) + [ref.txt](voices/jingyuniang/ref/ref.txt) |

> 以后会陆续加：男声、御姐、少年、大叔、方言…… 每个音色一个独立目录，互不影响。

---

## 🧩 这个库是什么

不是模型，不是框架，是**音色素材包**。

一个音色 = 一段参考音频 + 一句逐字转写。你把这两个丢进任何支持零样本克隆的 TTS，它就照着这个声音说话——**不用训练、不用微调、不用显卡排队**。

```
voices/<音色>/ref/ref.wav    参考音频（8–20 秒，单声道）
voices/<音色>/ref/ref.txt    逐字转写（必须和音频对得上）
```

---

## ⚡ 30 秒上手

| 模型 | 怎么用 |
|---|---|
| **GPT-SoVITS** | [`adapters/gpt-sovits.md`](adapters/gpt-sovits.md) |
| **IndexTTS** | [`adapters/index-tts.md`](adapters/index-tts.md) |
| **CosyVoice** | [`adapters/cosyvoice.md`](adapters/cosyvoice.md) |
| **Fish-Speech** | [`adapters/fish-speech.md`](adapters/fish-speech.md) |

以鲸鱼娘为例，试一句：
`唔……你、你别突然靠过来啦。`

---

## 🎁 拿去干什么

| 场景 | 说明 |
|---|---|
| **AI 伴侣 / 虚拟人** | 有情绪、有性格的声音，比机械播报好听一百倍 |
| **桌宠 / 桌面伙伴** | 你养的那条大肥鱼终于会开口了 |
| **游戏 & 剧情 Demo** | 女主、妹妹、队友，直接出戏 |
| **Agent / 播报** | 同样的内容，换个声音，人就不烦了 |
| **有声小说 / 短视频** | 甜文、日常、撒娇合集，免费可商用 |
| **微信 / QQ / Discord 机器人** | 让机器人第一次像个人 |

---

## 🧪 出戏调参

1. 参考音频 **8–20 秒最稳**，长了反而糊；
2. 参考音频的**语气会被带进合成结果**——想要娇羞就选娇羞片段；
3. 文本**短、逗号多、有语气词**（唔、嘛、啦、哼）→ 才像撒娇，不像念稿；
4. 别写长句，她一口气说不完就变播报了；
5. 不同模型音色略有差异，属正常。

---

## ➕ 加你自己的音色（男女都欢迎）

```bash
cp -r voices/jingyuniang voices/<新id>       # 1 复制
# 2 换掉 ref.wav / ref.txt / demo/ / voice-card.json
# 3 catalog.json 加一项 + README 音色列表加一行
bash tools/check-voice.sh <新id>              # 4 自检，全绿再提 PR
```

**硬要求**：`ref.wav` 8–20 秒单声道、`ref.txt` 与音频逐字一致、`demo` ≥2 段、`voice-card.json` 字段齐全。

> ⚠️ 音色之间必须**在听感或性格上明确可区分**——"听起来差不多"的不收。这个库要的是每个都认得出。

---

## ⚖️ 许可

**自由使用、修改、二次分发、商用，全部可以。**

唯一要求：二次分发或发布衍生模型时，**保留原仓库链接**：
`https://github.com/theliangzhu/tts-voice-pack`

详见 [`LICENSE`](LICENSE)。

---

<p align="center"><i>挑到一个喜欢的声音，就点个 ⭐ 吧。</i></p>
