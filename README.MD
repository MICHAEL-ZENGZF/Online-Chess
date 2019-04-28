# What is this
The server program for online chess
# How to use
## Quickstart
Just bash CompileAndRun.sh
## Build yourself
This project use cmake when compiling, so to compile yourself:
```
mkdir build
cd build 
cmake ..
make //this will create the executable in ${Project Root Dir}/bin/kchat-server
cd ..
./bin/kchat-server port_to_use
```
# Project Structure
This program has 4 threads running simutaneously. 1 is the main thread, 1 for listening to the login and register, 1 for listening to the updates like friends and new messages, 1 for gtk rendering

The program will listen to the login and register request in the given port (the first arguments), and use a free port between 11200 and 12000 to listen to updates from users like new friends and messages.

The program use socket to communicate

|File|Usage|
|---|---|
|main.c|the entrance of the program|
|AnswerQuery.c|listens to updates from users|
|database.c|the database (a map), all users` information is stored into a map|
|decode.c, encode.c|the communication between server and client is encoded into json strings, this two file handles encode and decode|
|login_register.c|handles user`s login and register request|
|server.c|some basic function of socket|

