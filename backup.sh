function backup(){
	if [ -d "$1" ]; then
		echo "Criando $1.backup.";
		echo "pasta criada com sucesso";
		ls -l  "$1.backup";
		cp -rp $1 "$1.backup";


	elif [ -f "$1" ]; then
		echo "$1 é um arquivo.";
	else 
		echo "$1 não existe.";
	fi
}

backup $1
