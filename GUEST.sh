if [ "$(for i in 1 2 3; do echo -n "$i";done)" = "123" ]
then
export for_in_do_done=True
else echo "in your \"$(getprop ro.product.model)\" not founded commands \"for\" \"in\" \"do\" \"done\"
or Download last version MT Manager"
fi
if [ "$(basename $0)" = "$(echo $0 | grep -wo $(basename $0))" ]
then
export grep_basename_0=True
else echo "in your \"$(getprop ro.product.model)\" not founded commands \"grep\" \"basename\"
or Download last version MT Manager"
fi
if [ "$for_in_do_done" != "True" ] || [ "$grep_basename_0" != "True" ]
then exit
fi
if [ "$for_in_do_done" = "True" ] && [ "$grep_basename_0" = "True" ]
then echo "Your device \"$(getprop ro.product.model)\" is good to use Repachino shell scripts"
if [ "$(basename $0)" = "GUEST.sh" ]
then VERSION="com.tencent.ig"
elif [ "$(basename $0)" = "kr.GUEST.sh" ]
then VERSION="com.pubg.krmobile"
elif [ "$(basename $0)" = "vng.GUEST.sh" ]
then VERSION="com.vng.pubgmobile"
else echo "Wrong name $(basename $0)
for global set name GUEST.sh
for korea set name kr.GUEST.sh
for vng set name vng.GUEST.sh"
exit
fi
if [ ! -d /data/data/$VERSION/shared_prefs ]
then echo "$VERSION not founded!"
else
GUEST="/data/data/$VERSION/shared_prefs/device_id.xml"
echo -n "Guest in $VERSION "
if [ "$(grep -wo "install" $GUEST)" = "install" ]
then
INSTALL=$(grep -w "install" $GUEST)
else
INSTALL="    <string name=\"install\">Repachino</string>"
fi
#uuid geneeator
for symbol in q a z w s x e d c r f v t g b y h n u j m i k o l p 1 2 3 4 5 6 7 8 9 0 Repachino
do rand=$rand$symbol
done
RANDOM=256
for i in $(seq 1 32)
do
uuid=$uuid${rand:$(expr $RANDOM % ${#rand}):1}
done
#uuid generator
kill $VERSION > /dev/null 2>&1
cp $GUEST $GUEST.bak
echo -n "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name=\"random\"></string>
$INSTALL
    <string name=\"uuid\">$uuid</string>
</map>
" > $GUEST
echo "changed"
rm -rf /data/data/$VERSION/databases
rm -rf /data/data/$VERSION/shared_prefs/device_id.xml.bak
rm -rf /data/media/0/Android/data/$VERSION/files/login-identifier.txt
rm -rf /data/media/0/.backups/com.tencent.ig
fi
chmod -R 660 $GUEST
fi
echo "By Repachino a.k.a ecag | NRCLan"