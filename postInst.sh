pacman -Suyyy
pacman -S - < pkglist.txt 

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

cp -r startup/ /run/runit/service/

sudo pacman -Ss 
