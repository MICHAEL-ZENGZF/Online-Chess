# What is this
This is an online chess game, written in C and gtk.

This branch contains the client program, the server branch contains the server program

# How to use
## quick start
First you need to have a server program running, then
just bash CompileAndRun.sh

## Compile yourself
This project use cmake in building, so to build the bin yourself:
```
mkdir build
cd build
cmake ..
make //this will build the executable in ${Project Root Dir}/bin/kchat-client server_address server_port
cd ..
./bin/kchat-client server_address server_port
```
## Note
Must run the program from project root dir (./bin/kchat-client server_address server_port), otherwise unhandled exception is expected.

Currently I have deployed a server at 3.16.180.60 11000 (which is the default address when you bash CompileAndRun.sh), you can try it for a quick start, but it`s only for temporary use, a long-term support is not promised.

To sum up, use this command to try the program after building (only for temporary use):
>./bin/kchat-client 3.16.180.60 11000
# Project Structure
The server is only for managing the status of users, not responsible for intermidiating between users when playing chess.

Each user will be a local server when playing chess, they communicate with each other directly.

All the communication is encoded into json strings.

The program use socket to communicate.

|File|Usage|
|---|---|
|main.c|the entrance of the program|
|ChatMenu.c|manage the GUI and logic of the chat menu, where you chat with other guys|
|connection.c|handles the connection to server|
|decode.c, encode.c|the communication between server and client is encoded into json strings, this two file handles encode and decode|
|ENV.c|the file that handles chess game environment|
|GUI.c|offline chess GUI|
|GUIO.c|online chess GUI|
|msgChat.c|the database (a map), the chat records between users are stored into the map|
|PlayBetweenSender.c, PlayBetweenServer.c|creates an local server, helps playing chess between users|

# About
This is originally the course project of UCI EECS22L, that`s why the executable is called kchat, a name decided by group members, but since I want to do some extension, thus extract it and create a new repo.

## References
This projects use the following libraries:

[jsmn][jsmn-link]
[map][cmap-link]

[jsmn-link]: https://github.com/zserge/jsmn
[cmap-link]: https://github.com/rxi/map