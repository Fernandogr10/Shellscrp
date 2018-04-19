echo "Contador de Arquivos"

DESTINO=$1
CAMINHO=$(cd $DESTINO)
    if [ -f $CAMINHO ]
    then
        CONTADOR=$(ls -a $CAMINHO | wc -l)
        echo "$CONTADOR"
    fi

