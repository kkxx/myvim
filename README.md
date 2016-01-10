  
  source ~/.vim/.vimrc
  
  echo "## my vimrc" >> README.md
  
  git init
  
  git add README.md
  
  git add .vimrc
  
  git commit -m "first commit"
  
  git remote add origin git@github.com:kkxx/myvim.git
  
  git push -u origin master


  
