#Tokyo Night Themes & Icons
# Giteamos los fuentes y copiamos a las carpetas

wget --version > /dev/null

if [[ $? -ne 0 ]]; then
        echo "wget not no estaba instalado, instalando..."
        sudo apt update && sudo apt install wget -y
fi

unzip >> /dev/null

if [[ $? -ne 0 ]]; then
        echo "unzip no estaba instalado, instalando..."
        sudo apt update && sudo apt install unzip -y
fi

echo "Clonamos repositorio de Tokyo Night..."
git clone https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git

echo "Copiamos carpetas icons y themes..."
sudo cp -R Tokyo-Night-GTK-Theme/icons/.* /usr/share/icons
sudo cp -R Tokyo-Night-GTK-Theme/themes/.* /usr/share/themes

echo "Actualizadmos Icon Cache..."
gtk-update-icon-cache

xfconf-query -c xsettings -p /Net/ThemeName -s "Tokyonight-Dark-B"
xfconf-query -c xsettings -p /Net/IconThemeName -s "Tokyonight-Dark"

echo "Descargamos Tipografias..."
wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/FiraCode.zip"
#wget -O firacode.zip "https://github.com/tonsky/FiraCode/releases/download/1.204/FiraCode_1.204.zip"
wget "https://fonts.google.com/download?family=Inter"
mv download?family=Inter inter-fonts.zip

echo "Copiamos carpetas..."
sudo unzip FiraCode.zip -d /usr/share/fonts
sudo unzip inter-fonts.zip 
mv /inter-fonts/static /inter-fonts/Inter
sudo cp -R /Inter /usr/share/fonts
fc-cache -v -f

echo "Cambiamos tipografias..."
xfconf-query -c xsettings -p /Gtk/FontName -s "Inter Bold 12"
xfconf-query -c xsettings -p /Gtk/MonospaceFontName -s "Fira Code Regular 13"

echo "Instalamos Starship..."
curl -sS https://starship.rs/install.sh | sh
starship preset pastel-powerline > ~/.config/starship.toml

echo "Modificamos el .bashrc..."
printf "%s\n eval \"\$(starship init bash)\"" >> ~/.bashrc
printf "%s\nalias ccl=\"free -m && sync && sudo sysctl vm.drop_caches=3 && free -m\"" >> ~/.bashrc
source .bashrc

echo "Todo concluye al fin..."
