read -p "Enter folder name : " folder
#shows apk
for a in $folder/*.apk; do echo $a; done
#decompile
for a in $folder/*.apk; do apktool d $a -o $folder/$a; done
#grep firebase url
grep_output="grep -rnw $folder/ -e 'firebase_database_url' | grep https | cut -d '>' -f2 | cut -d '<' -f1"
eval_output=$(eval "$grep_output")
#optional
echo "$eval_output"
#scanning for open databaseand printing
for url in $eval_output ; do curl $url/.json?shallow=true; done

