#Tokyo Night Themes & Icons
# Giteamos los fuentes y copiamos a las carpetas
sudo apt install gtk2-engines-murrine
git clone https://github.com/Fausto-Korpsvart/Material-GTK-Themes.git
cd Material-GTK-Themes
cd icons
sudo cp -R .* /usr/share/icons
cd ..
cd themes
sudo cp -R .* /usr/share/themes
