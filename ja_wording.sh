#! /bin/sh
cat <<"EOF"
#! /bin/sh
EOF
echo for f in "$@"
cat <<"EOF"
do  d="`basename -s .md "$f"`_w.md"
    echo "$f" "$d"
    cat "$f" |
    sed '
EOF
cat ../word.list |
sed 's/^\([^|][^|]*\)|\(.*\)$/s\/\1\/<red>\2<\\\/red>\/g/'
cat <<"EOF"
    ' > "$d"
done
EOF
