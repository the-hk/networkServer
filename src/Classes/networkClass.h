#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <unistd.h>
#define PORT 8080

#include<iostream>

class networkClass{

public:
    int networkInit();
    int readSocket();
    int sendSocket();

private:
    int createSocket();
    int bindNewConnection();
    int listen();
    int accept();
};


