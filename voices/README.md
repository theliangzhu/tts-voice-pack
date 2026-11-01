# 音色目录规范（新增音色只动这里，不动其他地方）

每个音色 = **一个自包含目录**，互不依赖。加音色时：

1. 复制 `voices/jingyuniang/` → `voices/<新id>/`（id 用小写英文，例如 `yuki`、`lin`）
2. 换掉 `ref/ref.wav`、`ref/ref.txt`、`demo/*.mp3`、`voice-card.json` 里的内容
3. 在根 `catalog.json` 的 `voices[]` 里加一项（工具/脚本靠它索引）
4. 在根 `README.md` 的「音色列表」加一行
5. 跑 `bash tools/check-voice.sh <新id>` 自检

## 硬要求（不满足就别提 PR）

| 项 | 要求 |
|---|---|
| `ref/ref.wav` | 8–20 秒，单声道，干净无 BGM，响度归一 |
| `ref/ref.txt` | **逐字转写，必须和音频完全一致** |
| `demo/` | 至少 2 段 mp3，码率 ≥128k |
| `voice-card.json` | 必填 `id/name/language/gender/reference/example_texts` |

## 音色之间必须"有区别"

加新音色前先问一句：**它和已有音色在听感/性格上有没有明确区别？**
只是"听起来差不多"的音色不要加——这个库要的是**每个都能一眼认出**。
