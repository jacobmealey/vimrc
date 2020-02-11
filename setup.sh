echo " _    ________  _______  ______"
echo "| |  / /  _/  |/  / __ \/ ____/"
echo "| | / // // /|_/ / /_/ / /     "
echo "| |/ // // /  / / _, _/ /___   "
echo "|___/___/_/  /_/_/ |_|\____/   "
echo "Jacob Mealeys VIMRC configuration tool!"

echo "Copying Files"
cp vimrc ~/.vimrc
cp -rf ./ ~/.vim

echo "Compiling plugins"
python3 ~/.vim/plugged/YouCompleteMe/install.py --clang-completer
