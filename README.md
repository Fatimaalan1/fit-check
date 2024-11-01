# SENG513 - Project

## Name

The project name is called FitCheck.

## Description

Not sure what to wear to that date? Just ask the users of FitCheck! Post your options and other users can rate which one they think you should wear. Can't find what to wear? Business partners will also post their products for users to browse.

## Installation

## Docker Setup with Web and Database

0. Ensure you have Docker Desktop installed and ready to run. Additionally, ensure you have the .env file from developers
1. Download files, for the sake of this example, let's imagine we extracted the zip into C:\Users\john\Downloads.
2. In this folder, paste/move the .env file
3. In C:\Users\john\Downloads\seng513-fall24-group-27, open PowerShell and type ``` docker-compose up --build ``` and wait for the logs to reach: ``` [Note] [Entrypoint]: MySQL init process done. Ready for start up. ``` This indicates that the web server AND database has been successfully set up.
4. Open Docker Desktop and open the link for the web server: 8080:80⁠
5. To view the MySQL contents within the docker container, open a new PowerShell window and enter the command: ``` docker exec -it mysql_db mysql -u root -p ``` then enter the root password found in the .env file. You should now by greeted with mysql>. Enter: ``` SHOW databases; ``` to see the databases available. Next, enter: ``` USE fitcheckdatabase; ``` then use: ``` SHOW tables; ``` to see the tables in the db. To see the contents in each table use: ``` SELECT * FROM users; ``` or replace ``` users ``` with any of the table names. You can exit at any time using Ctrl-Z.

## Usage

Use examples liberally, and show the expected output if you can. It's helpful to have inline the smallest example of usage that you can demonstrate, while providing links to more sophisticated examples if they are too long to reasonably include in the README.

## Authors and acknowledgment

Michele Pham - 30117189
Sayma Haque - 30093666
Jana Afifi - 30119866
Akansha Malik - 30056048
Fatimaalzhra Ahmed - 30119664

## Project status

In progress.