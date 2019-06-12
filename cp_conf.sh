#!/bin/bash           
# add alias ssh='f(){ $HOME/.ssh/cp_conf.sh "$@" && ssh "$@";}; f' to your .bash_profile
UNAME=$1              
OUTPUT="$(ssh-keygen -H -F $UNAME)"
                      
if [ -z "$OUTPUT" ]                                                                                   
then                  
    scp -r $HOME/.ssh/ $UNAME:~/
    scp $HOME/.vimrc $UNAME:~/
    scp $HOME/.bash_profile $UNAME:~/
fi 
