
$web = Invoke-WebRequest -uri "http://businesscorp.com.br"  -Method Options

echo "O Servidor roda"
$web.headers.server
echo ""
echo "O Servidor Suporta os metodos"
$web.Headers.Allow
echo "" 
echo "links"
$web2 = Invoke-WebRequest -uri "http://businesscorp.com.br"
$web2.links.href | select-String http://