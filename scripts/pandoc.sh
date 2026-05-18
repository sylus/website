#!/usr/bin/env bash
set -euo pipefail

cat > /tmp/pandoc-br.lua <<'LUA'
function RawInline(el)
  if el.format == "html" and el.text:match("^<br%s*/?>$") then
    return pandoc.LineBreak()
  end
end
LUA

pandoc content/english/pages/resume.md \
  -o william-hearn-resume.pdf \
  --template eisvogel \
  --pdf-engine=xelatex \
  -V title='\textbf{William Hearn} \textbf{Senior Cloud Architect (IT-04)}' \
  -V author="William Hearn" \
  -V date="" \
  -V geometry:margin=0.75in \
  -V fontsize=10pt \
  -V colorlinks=true \
  -V linkcolor=blue \
  -V urlcolor=blue \
  --lua-filter=/tmp/pandoc-br.lua

rm -f /tmp/pandoc-br.lua
