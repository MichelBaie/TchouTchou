echo "Bienvenue dans tchoutchou le tout premier script ferroviaire de github" 
echo "Nous allons avant tout vérifier que tchoutchou peut se lancer sur ta machine..." 

if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS=$ID
fi

if [ $OS=debian ]
then
  if ! [ -f "/usr/games/sl" ]; then
    echo "* le package sl requis pour faire fonctionner ce script"
    echo "* utilise apt install sl pour installer tchoutchou"
  
    if [[ $EUID -ne 0 ]]; then
      echo "* Tu dois avoir accès au root afin d'installer le module" 1>&2
      exit 1
    fi

  apt install sl -y

  exit 1
elif [ $OS=arch ]
then
  if ! [ -f "/bin/sl" ]; then
    echo "* le package sl requis pour faire fonctionner ce script"
    echo "* utilise pacman -S sl pour installer tchoutchou"
  
    if [[ $EUID -ne 0 ]]; then
      echo "* Tu dois avoir accès au root afin d'installer le module" 1>&2
      exit 1
    fi

  pacman -S --noconfirm sl 

  exit 1
fi

clear

echo "! une fois le train lancé, enfoncez CTRL+C pendant quelque seconde pour stoper le train !"
read -p "appuyer sur ENTRER pour lancer le train"

clear
echo "Lancement de TchouTchou.sh (édition 🎃 Halloween 🎃 2023, bientot 2024 inchallah)"
sleep 1

if [ $OS=arch ]
then
    for (( ; ; ))
    do
        /bin/sl -e
        /bin/sl -laF -e
    done
    clear
elif [ $OS=debian ]
then
    for (( ; ; ))
    do
        /usr/games/sl -e
        /usr/games/sl -laF -e
    done
    clear
fi
