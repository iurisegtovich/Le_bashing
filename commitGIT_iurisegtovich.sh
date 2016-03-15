# execute me using                                                                                            
#                  . commitGIT_iurisegtovich.sh                                                               
#                                                                                                             

gedit CommitMessage.txt ToDo.txt

quit=false

while true; do
    read -p "Changelog and ToDo updated?***" yn
    case $yn in
        [yY]* ) break;;
        [nN]* ) gedit CommitMessage.txt ToDo.txt;;
        [qQ]* ) quit=true; break;;
        * ) echo "yY to proceed, nN to gedit, qQ to quit";;
    esac
done

if [ $quit = false ]; then

  OLD_CHANGELOG_FNAME=$(ls -t "Changelog"*".txt" | head -n 1) #This gets a list of names that match #I feel lucky*** 

  NEW_CHANGELOG_FNAME=Changelog.$(date +%Y.%m.%d.%Hh.%Mm).txt
  
  echo $OLD_CHANGELOG_FNAME
  echo $NEW_CHANGELOG_FNAME

  echo $(date +%Y.%m.%d.%Hh.%Mm) > $NEW_CHANGELOG_FNAME
  cat CommitMessage.txt >> $NEW_CHANGELOG_FNAME

  cat $OLD_CHANGELOG_FNAME >> $NEW_CHANGELOG_FNAME

  mv $OLD_CHANGELOG_FNAME bk.$OLD_CHANGELOG_FNAME
  
  git init

  git add -A

  git config --global user.name "iurisegtovich"
  git config --global user.email iurisegtovich@gmail.com

  CommitMessageString=$(cat CommitMessage.txt)
  echo $CommitMessageString

  git commit -m "$CommitMessageString"

  7z a ../Le_OOPFortran_.$(date +%Y.%m.%d.%Hh.%Mm)_.7z ../Le_OOPFortran

fi

echo "Done"


#to sync your workspace before working
#to retrieve files from github
#git remote add origin https://github.com/iurisegtovich/Le_OOPFortran
#git pull origin master

#to modify this script to update github consider the following
#to send files to github
#git add -A
#git commit -m "msg"
#git push origin master
