cd ~/.vim/bundle

for directory in `ls ~/.vim/bundle`
do
    echo "Checking for $directoryry update..."
    if [ -d "$directory/.git" ]
               then
                   cd $directory
                   git pull
                   cd ..
               else
                   echo "$directory not a git plugin. Skipping update."
               fi
               echo "\n"
           done

           exit 0
    fi
done
