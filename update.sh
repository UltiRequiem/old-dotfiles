cp ~/bin/* bin -r
cp ~/.zshrc ./.zshrc -r
cp ~/.xinitrc ./.xinitrc -r
cp ~/.vimrc ./.vimrc -r
cp ~/.gitconfig ./.gitconfig -r


# Add And Push
git add .
git commit -m "🚀 Update $(date)"
git push
