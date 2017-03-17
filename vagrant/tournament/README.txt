Tournament Program version 1.0 30/11/2016

APP DESCRIPTION
-----------------

- This applications creates a database for a Swiss Pairing style 
  tournament. Players in the tournament are stored in an SQL table 
  with id, name, and the matches are stored in a match table with 
  id, wins and losses columns. This app supports one tournament, 
  and then players are cleared and the app can be run again. 

- tournament.py contains the code to run the database. This file contains
  all the necessary functionality to add, delete, register, count and 
  pair players. For more specifics on each function, please refer directly
  to the tournament.py files and function docstrings. 

FILE STRUCTURE
----------------

/fullstack-nanodegree-vm
|-- blog.py
|-- .git
|-- vagrant/
    |-- .vagrant
    |-- Vagrantfile
    |-- pg_config.sh
    |-- tournament/
	|-- tournament.py
	|-- tournament.pyc
	|-- tournament.sql
	|-- tournament_text.py
	|-- README.txt


SETUP AND INSTALLATION
------------------------------------------------------------------
To use and run this app, please install python, virtual box and 
vagrant. Once installed, open a terminal and cd to the
fullstack-nanodegree-vm/vagrant directory and run the following 
command:

$ vagrant up

This command will install the necessary dependencies, like
PostgresSQL, to run the app. Once the virtual machine has been
configured, run the following command to log into the virtual
machine: 

$ vagrant ssh

After logging in, the database schema needs to be setup. The 
schema for the database is located in the tournament.sql file. In 
the terminal, navigate to the tournament directory and run the 
following command to configure the database:

$ psql -f tournament.sql

After running this command, the tables will be imported from the 
tournament.sql file and ready to be used in the application. To
run the app, run tournament_test.py with the following commands: 

$ cd /vagrant/tournament
$ python tournament_test.py