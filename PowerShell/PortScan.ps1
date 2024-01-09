param($ip)

if(!$ip){
echo "Modo de Uso: Endereço"
echo "Exemplo. ./PortScan.ps1 192.168.0.1"
    
}else{
$topports = 21,22,3306,80,443,8080,43,25,445,143,110 
    foreach ($port in $topports) {
        if (Test-NetConnection $ip -Port $port -WarningAction SilentlyContinue -InformationLevel Quiet) {
            echo "Porta $port Aberta"
        } else {
       
        }
}
}