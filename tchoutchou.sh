echo "Bienvenue dans tchoutchou le tout premier script ferroviaire de github" 
echo "Nous allons avant tout vérifier que tchoutchou peut se lancer sur ta machine..." 

if ! [ -x "$(command -v sl)" ]; then
  echo "* le package sl requis pour faire fonctionner ce script"
  echo "* utilise apt install sl pour installer tchoutchou"

  if [[ $EUID -ne 0 ]]; then
    echo "* Tu dois avoir accés au root afin d'installer le module" 1>&2
    exit 1
  fi

  apt install sl -y

  exit 1
fi

clear

echo "! une fois le train lancé, enfoncez CTRL+C pendant quelque seconde pour stoper le train !"
read -p "appuyer sur ENTRER pour lancer le train"

clear
echo "Lancement de TchouTchou.sh (édition summer 2022)"
sleep 1

for (( ; ; ))
do
   sl -e
   sl -laF -e
done
clear
