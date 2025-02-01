#!/data/data/com.termux/files/usr/bin/bash

clear
echo "===================================="
echo "     Guia de Hack Ético no Termux   "
echo "===================================="
echo ""
echo "1) Instalar ferramentas de segurança"
echo "2) Dicas sobre Pentest"
echo "3) Guia de comandos básicos"
echo "4) Sair"
echo ""
read -p "Escolha uma opção: " opcao

if [ "$opcao" == "1" ]; then
    echo "Instalando ferramentas essenciais..."
    pkg update && pkg upgrade -y
    pkg install nmap sqlmap hydra metasploit -y
    echo "Ferramentas instaladas com sucesso!"

elif [ "$opcao" == "2" ]; then
    echo "Dicas sobre Pentest:"
    echo "- Use o Nmap para mapear redes: nmap -sV <IP>"
    echo "- Use o SQLMap para testar SQL Injection: sqlmap -u <URL> --dbs"
    echo "- O Hydra pode testar senhas SSH: hydra -l admin -P passwords.txt ssh://<IP>"
    echo "- Aprenda sempre com responsabilidade!"

elif [ "$opcao" == "3" ]; then
    echo "Guia de comandos básicos:"
    echo "- Atualizar pacotes: pkg update && pkg upgrade"
    echo "- Instalar pacotes: pkg install <nome>"
    echo "- Listar arquivos: ls"
    echo "- Navegar entre diretórios: cd <pasta>"
    echo "- Testar conexão de rede: ping google.com"

else
    echo "Saindo..."
fi
