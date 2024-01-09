
Param($p1)
if (!$p1){
    echo "Modo de Uso: IP"
    echo "Exemplo: ./Ping Sweep.ps1 192.168.1"

} else {

foreach ($ip in 1..254){
try{ resp = ping -n 1 "$p1.$ip" | Select-String "Bytes=32"
$resp.Line.split(" ")[2] -replace ":",""
} catch {}
}
}