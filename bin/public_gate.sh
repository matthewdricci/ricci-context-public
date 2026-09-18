#!/bin/sh
set -eu

repo_root=$(git rev-parse --show-toplevel 2>/dev/null || pwd)
cd "$repo_root"

failed=0

for forbidden_file in $(find . -path './.git' -prune -o -type f \( \
  -iname '*.mp3' -o \
  -iname '*.m4a' -o \
  -iname '*.wav' -o \
  -iname '*.pdf' -o \
  -iname '*.docx' -o \
  -iname '*transcript*' \
\) -print); do
  echo "public gate: forbidden raw/archive-shaped file: $forbidden_file" >&2
  failed=1
done

while IFS= read -r large_file; do
  [ -z "$large_file" ] && continue
  echo "public gate: file exceeds 1 MB: $large_file" >&2
  failed=1
done <<EOF
$(find . -path './.git' -prune -o -type f -size +1M -print)
EOF

if rg -n --hidden \
  -g '!.git/**' \
  -g '!bin/public_gate.sh' \
  '(^|[^A-Za-z0-9])(gh[pousr]_[A-Za-z0-9]{20,}|sk-[A-Za-z0-9_-]{20,}|AKIA[0-9A-Z]{16})|/Users/matt/|siterxinc\.slack\.com/archives/|atlassian\.net/browse/|app\.todoist\.com/app/task/' \
  .; then
  echo "public gate: possible credential, private path, or internal link detected" >&2
  failed=1
fi

if [ "$failed" -ne 0 ]; then
  exit 1
fi

echo "public gate: clean"
