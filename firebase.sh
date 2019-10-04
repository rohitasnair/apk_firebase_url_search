#shows apk
for a in *.apk; do echo $a; done
#decompile
for a in *.apk; do apktool d $a; done
#grep firebase url
grep_output="grep -rnw  -e 'firebase_database_url' | grep https | cut -d '>' -f2 | cut -d '<' -f1"
eval_output=$(eval "$grep_output")
