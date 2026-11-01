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

## ▶️ 点开就播（同一音色，什么话都能说）

<p align="center">
  <a href="https://theliangzhu.github.io/tts-voice-pack/demo.html"><img alt="试听页" src="https://img.shields.io/badge/%E2%96%B6%20%E7%82%B9%E5%BC%80%E5%B0%B1%E6%92%AD-%E9%B2%B8%E9%B1%BC%E5%A8%98-1f7fc4?style=for-the-badge"></a>
  <a href="https://theliangzhu.github.io/tts-voice-pack/demo/any-text.mp3"><img alt="直接播" src="https://img.shields.io/badge/%E2%96%B6%20%E7%9B%B4%E6%8E%A5%E6%92%AD%20mp3-c0398a?style=for-the-badge"></a>
</p>

<p align="center"><b>先讲清楚这不是"录好的几句"</b>：下面是同一个音色念的<b>不同内容</b>——天气、算数、念诗、自我介绍、倒计时、菜谱。<br>能念这些，就能念你写的任何话。</p>

| 同一音色 · 不同内容 | 试听 |
|---|---|
| 今天最高气温二十四度，最低十六度，出门记得带件外套。 | [any1](voices/jingyuniang/demo/any1.mp3) |
| 一加一等于二，二加二等于四，我算得对不对？ | [any2](voices/jingyuniang/demo/any2.mp3) |
| 床前明月光，疑是地上霜。举头望明月，低头思故乡。 | [any3](voices/jingyuniang/demo/any3.mp3) |
| 你好，我是小柒，很高兴认识你，你有什么想说的吗？ | [any4](voices/jingyuniang/demo/any4.mp3) |
| 三、二、一，倒计时结束，我们开始吧。 | [any5](voices/jingyuniang/demo/any5.mp3) |
| 这道菜需要小火慢炖四十分钟，中间记得翻两次面。 | [any6](voices/jingyuniang/demo/any6.mp3) |

<details><summary>撒娇 / 傲娇那 5 句（同样是这个音色）</summary>

| 台词 | 试听 |
|---|---|
| 别、别看我啦，脸有点烫。 | [01](voices/jingyuniang/demo/01.mp3) |
| 唔……你靠这么近，我心跳好快。 | [02](voices/jingyuniang/demo/02.mp3) |
| 才、才不是想你呢，哼。 | [03](voices/jingyuniang/demo/03.mp3) |
| 你回来啦，我等你好久了。 | [04](voices/jingyuniang/demo/04.mp3) |
| 抱一下嘛，就一下下。 | [05](voices/jingyuniang/demo/05.mp3) |

</details>

> ⚠️ GitHub 的 README **不能自动播放音频**（浏览器的限制）。想"点一下就有声音"，请点上面那个 **▶ 点开就播**（Pages 页面，进去自动播）。

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
