#!/usr/bin/env bash
# 自检一个音色目录是否合格：bash tools/check-voice.sh jingyuniang
set -u
ID="${1:-}"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
D="$ROOT/voices/$ID"
fail=0
say(){ printf '  %s %s\n' "$1" "$2"; }
[ -d "$D" ] || { echo "❌ 没有这个音色目录: voices/$ID"; exit 1; }
echo "检查 voices/$ID ..."

# 1) 参考音频
if [ -f "$D/ref/ref.wav" ]; then
  DUR=$(ffprobe -v error -show_entries format=duration -of csv=p=0 "$D/ref/ref.wav" 2>/dev/null || echo 0)
  CH=$(ffprobe -v error -select_streams a:0 -show_entries stream=channels -of csv=p=0 "$D/ref/ref.wav" 2>/dev/null || echo 0)
  say "✅" "ref.wav 存在（${DUR}s, ${CH}ch）"
  awk "BEGIN{exit !($DUR>=5 && $DUR<=25)}" && say "✅" "时长在 5–25 秒" || { say "❌" "时长不在 5–25 秒"; fail=1; }
  [ "$CH" = "1" ] && say "✅" "单声道" || { say "❌" "不是单声道"; fail=1; }
else say "❌" "缺 ref/ref.wav"; fail=1; fi

# 2) 转写
if [ -s "$D/ref/ref.txt" ]; then say "✅" "ref.txt 存在（$(wc -c < "$D/ref/ref.txt" | tr -d ' ') 字节）"
else say "❌" "缺 ref/ref.txt 或为空（零样本克隆会掉音质）"; fail=1; fi

# 3) 试听
N=$(ls "$D"/demo/*.mp3 2>/dev/null | wc -l | tr -d ' ')
[ "$N" -ge 2 ] && say "✅" "demo ${N} 段" || { say "❌" "demo 少于 2 段"; fail=1; }

# 4) 参数卡
if [ -f "$D/voice-card.json" ]; then
  node -e "const c=require('$D/voice-card.json');const need=['id','name','language','gender','reference','example_texts'];const miss=need.filter(k=>!(k in c));if(miss.length){console.log('  ❌ voice-card 缺字段:',miss.join(','));process.exit(1)}" \
    && say "✅" "voice-card.json 字段齐全" || fail=1
else say "❌" "缺 voice-card.json"; fail=1; fi

[ "$fail" = "0" ] && echo "✅ voices/$ID 合格" || echo "❌ voices/$ID 不合格"
exit "$fail"
