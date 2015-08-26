#!/usr/bin/bash

# depends on "lnif" function (which depends on explicit $HOME paths); 
# see separate bash repo
source $BASH_CUSTOM_FUNCTIONS_FILE

CURRENT_DIR=$(pwd)

#···············································································
#   SETUP HOME DIRECTORY FILES
#···············································································

PG_HOME='/z/750/dot/repos/db-postgres/config/workstation/generic/home_user_normal/linked_files'

lnif "$PG_HOME/psqlrc"                              '/home/rigel/.psqlrc'
lnif "$PG_HOME/histories/psql_history"              '/home/rigel/.psql_history'
lnif "$PG_HOME/histories/psql_history-:HOST-todo"   '/home/rigel/.psql_history-:HOST-todo'


#···············································································
cd $CURRENT_DIR
