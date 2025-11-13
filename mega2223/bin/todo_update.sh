cd ~/EDPET/TODO
cp ~/bin/todo_update.sh ~/EDPET/TODO/todo_update.sh

git add .
git commit -m "update"
git pull
git push
git pull

kitty nvim TODO.txt
# kitty less TODO.txt
