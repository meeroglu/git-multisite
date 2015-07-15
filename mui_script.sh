#!/bin/sh
echo this is begining of script 
freshCopy()
{
  git clone $1
  reponame=$(echo $url | awk -F/ '{print $NF}' | sed -e 's/.git$//');
  cd $reponame 
  git init
  git add .  
}
repoSync()
{
git fetch $1 $2
git merge $1/$2
git add .
git commit -m "updated"
git checkout master
}
remoteAdd()
{
git remote add $1 $2
}
pushRepo()
{
git push $1 $2
}

export GIT_WORK_TREE=/home/meroglu/mui
git checkout -f

cd /home/meroglu/mui
unset GIT_DIR
git pull
















#touch ~/diff.txt
#chmod 755  ~/diff.txt
#git fetch first master
#git diff --name-only HEAD~0 HEAD~1 >> ~/diff.txt 
#	if  -s ~/diff.txt   ;then
#pwd
# echo "Degisiklik bulunan dosyalar:"
#    git diff HEAD~~1 --name-only
# echo "first repositorydeki deigiklikler aliniyor"
#   repoSync first master
# echo "first repodaki degisiklikler alindi"
#   else
#   echo "there is no changed files"
#fi

#git fetch second master
#git diff --name-only HEAD~0 HEAD~1 >> ~/diff.txt
#	if ! -s ~/diff.txt; then
#echo "Degisiklik bulunan dosyalar:"
#    git diff HEAD~~1 --name-only
# echo "second repositorydeki deigiklikler aliniyor"
#   repoSync second master
# echo "second repodaki degisiklikler alindi"
#   else
#   echo "there is no changed files"
fi

#zero="0"
#empty=""
#name= git diff 
#echo $name
#exit
#if !  $name == $empty ; then
#     echo "Degisiklik bulunan dosyalar:"
#      git diff HEAD~~1 --name-only
#     echo "repositorylerden birinde degisiklik var "
#     echo "bu degisiklikler aliniyor"
#repoSync first master
#repoSync second master
#     echo "Degisikler alindi repolar sync ediliyor "
#pushRepo first master
#     echo "first repo sync edildi"
#     echo "second repo sync ediliyor"
#pushRepo second master
#     echo "second repo sync edildi"			
#else
#     echo "no changed file in repos"
#fi

#freshCopy git@github.com:muicss/mui.git
#remoteAdd first git@github.com:meeroglu/first.git
#remoteAdd second git@github.com:meeroglu/second.git
#pushRepo first master
#pushRepo second master
#repoSync first master second master
#pushRepo second master

#repoSync first master
#repoSync second master
#pushRepo first master
#pushRepo second master

