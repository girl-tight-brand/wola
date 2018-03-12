#!/bin/bash

photos_html="photos.html"
url_prefix="https://girl-tight-brand.github.io/wola"

# html file header
cat <<EOT > ${photos_html}
<div></div>
EOT

# html file content body
count=1
for file in *.jpg; do
  echo "process ${file}"
  cat <<EOT >> ${photos_html}
<div class="separator" style="clear: both; text-align: center;">
<img id="photo-id-${count}" border="0" height="320" src="${url_prefix}/${file}" width="232" />
</div>
<br />

EOT
  (( count++ ))
done

# html file footer
cat <<EOT >> ${photos_html}
<div></div>
EOT
