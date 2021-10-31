pacman -Suyyy
pacman -S git

git clone https://github.com/gbhattarai/GBArtixPost.git

cd GBArtixPost/aurinstall
make install

cd ../axel
make clean install

cd ../dmenu
make clean install

cd ../dwm
make clean install

cd ../dwmblocks
make clean install

cd ../st
make clean install

cd ..
cp dotfiles/* ~/
cp -r dotfiles/.* ~/

sudo pacman -Ss 
