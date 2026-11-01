# 用 tts-voice-pack 配 Fish-Speech

## 准备
- `voices/jingyuniang/ref/ref.wav`（8.3 秒，32kHz 单声道）
- `voices/jingyuniang/ref/ref.txt`（逐字转写，已和音频对齐）

## 步骤
1. 克隆 Fish-Speech 官方仓库，按它 README 装环境。
2. 把 `ref.wav` 和 `ref.txt` 放进参考音频目录（各模型叫法不同：prompt / reference / speaker）。
3. 选**零样本克隆（zero-shot）**模式，指向这两个文件。
4. 试一句短的：`唔……你、你别突然靠过来啦。`

## 调参
- 参考音频切 8–12 秒最稳
- 语速略慢，尾音会软，更像撒娇
- 文本短句 + 语气词（唔/嘛/啦/哼），别写长句

## 注意
- 别用带 BGM 的片段当参考
- 不同模型音色会略有差异，属正常
