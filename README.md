# Swiss-style-Tournament

This project is a swiss-style tournament. It uses a PostgreSQL database and Python code to keep track of the players and matches. In the Swiss-style each player is matched with another player of equal matches, or as close as possible. 


[Here](https://en.wikipedia.org/wiki/Swiss-system_tournament) is an article that goes more in depth about the Swiss-style tournament.


## Installation:
* Install Vagrant
* Install VirtualBox
* Install Git
* Clone the full-stack-nanodegree-vm repository


## The files:
* tournament.py is the python code with the functions that manipulate the database.
* tournament.sql contains the database, tables, and a view.
* tournament_test.py is the file that checks that the functions are working correctly.


## Instructions for running:
* Open terminal.
* Change directory to Fullstack/Vagrant.
* Start VM with the “vagrant up” command.
* Log in to VM with the “vagrant ssh” command.
* Change directory to vagrant using the “cd /vagrant” command.
* Enter PostgreSQL database with the “psql” command.
* Import tournament database by entering “\i tournament.sql”.
* To test the code, log out of PSQL, cd back to vagrant/tournament, and run “python tournament_test.py”.


If everything works properly this will be the output:


![alt text](https://github.com/DavidMcLaughlin29/Swiss_style-Tournament/blob/master/Test_output.png)

## License
This project is licensed under the MIT License.

## Acknowledgements
Roman Levitas and the Udacity Team.
