Aplikasi ini berjalan dengan melakukan deteksi gerakan pada ruangan dan akan mengambil screnshoot. Screenshoot tersebut akan diupload ke twiter menggunakan api dari twitpic

Yang harus sudah dilakukan :
1. Exroot
2. Install motion

Step by step :

1. Edit file /www/ruterngeksis/upload.sh
-----------------------------------------------------------------------------------------------------------
#!/bin/sh

RET=$(curl -v -F "consumer_token=paste code consumer token disini" -F "consumer_secret=paste code consumer secret disini" -F "oauth_token=paste code oauth token disini" -F "oauth_secret=paste kode oauth secret disini" -F "message=$2	" -F "key=paste code twitpic key disini" -F "media=@$1" http://api.twitpic.com/1/uploadAndPost.json)
---------------------------------------------------------------------------------------------------------
Ganti kode consumer token, consumer secret, oauth token, oauth secret dengan kode anda, Kode tersebut dapat didapatkan dengan mendaftarkan aplikasi baru pada dev.twitter.com. Ganti kode key dengan code twitpic key yang diperoleh dengan mendaftarkan aplikasi baru di dev.twitpic.com

2. Copy script motion.conf ke /etc/
   # cp /www/motion.conf /etc/motion.conf

3. Masuk ke /etc/rc.local kemudian tambahkan baris berikut sebelum baris exit 0;
-----------------------------------------------
motion -c /etc/motion.conf
kode ini akan menjalankan aplikasi motion setiap kali router dihidupkan
-----------------------------------------------

7. Melakukan penjadwalan untuk menghapus otomatis screenshot yang telah diambil

-----------------------------------------------
/etc/init.d/cron stop
echo "*/3 * * * * /www/ruterngeksis/autodelet.sh" >> /etc/crontabs/root
/etc/init.d/cron enable
/etc/init.d/cron start
-----------------------------------------------
script ini akan berjalan setiap 3 menit sekali untuk melakukan penghapusan log screenshot

more -> http://sukabiru.wordpress.com/ruterngeksis/