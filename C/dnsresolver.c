#include <stdio.h>
#include <netdb.h>
#include <arpa/inet.h>

int main(int argc, char *args[]){

	if(argc <=1){
		printf("Modo de uso: ./Dnsresolver <URL>");
		return 0;
	}else{
		struct hostent *alvo = gethostbyname(args[1]);

	if (alvo == NULL){
		printf("Host nao encontrado");
	}else{
		
		printf("IP: %s" , inet_ntoa(*((struct in_addr *)alvo->h_addr)));
	}


}

}
