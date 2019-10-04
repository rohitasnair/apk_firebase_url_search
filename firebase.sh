#shows apk
for a in *.apk; do echo $a; done
#decompile
for a in *.apk; do apktool d $a; done
#grep firebase url
