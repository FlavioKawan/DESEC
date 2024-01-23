#include <stdio.h>                                                                      portscan.c *                                                                               
#include <sys/socket.h>
#include <netdb.h>


int main(int argc, char *argv[]){

        int socket;
        int conecta;

        int porta;
        int inicio = 0;
        int final = 65535;
        char *destino;
        destino = argv[1];

        struct sockaddr_in alvo;

        for(porta=inicio;porta<final;porta++){

        socket = socket(AF_INET, SOCK_STREAM,0);
        alvo.sin_family = AF_INET;
        alvo.sin_port = htons(porta);
        alvo.sin_addr.s_addr = inet_addr(destino);


        conecta = connect(socket ,(struct sockaddr *)&alvo , sizeof alvo);

        if(conecta == 0){
                printf("Porta %d [ABERTA]", porta);
                close(socket);
                close(conecta);
        }else{
                close(socket);
                close(conecta);
        }

}
}

