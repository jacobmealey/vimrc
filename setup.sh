echo " _    ________  _______  ______"
echo "| |  / /  _/  |/  / __ \/ ____/"
echo "| | / // // /|_/ / /_/ / /     "
echo "| |/ // // /  / / _, _/ /___   "
echo "|___/___/_/  /_/_/ |_|\____/   "
echo -e "\033[1;31mJacob Mealeys VIMRC configuration tool!\033[0m"

echo "Copying Files"
cp vimrc ~/.vimrc
cp -rf ./ ~/.vim

echo "Building YouCompleteMe"
python3 ~/.vim/plugged/YouCompleteMe/install.py --clang-completer

echo "Cleaning"
rm -rf ~/.vim/plugged/*

