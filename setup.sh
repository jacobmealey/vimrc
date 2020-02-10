echo "Jacob Mealeys VIMRC configuration tool!"
cp vimrc ~/.vimrc
cp -rf ./ ~/.vim

python3 ~/.vim/plugged/YouCompleteMe/install.py --clang-completer
