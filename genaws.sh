#!/bin/bash

# Passo 1: Decodificar o conteúdo do arquivo terraformaws.txt e salvar em um arquivo temporário
cat terraformaws.txt | base64 --decode > temp_script.sh

# Passo 2: Executar o arquivo temporário criado
. ./temp_script.sh

# Passo 3: Excluir o arquivo temporário
rm temp_script.sh

set | grep -i aws | grep -vi zle | grep -vi genaws

echo "Script concluído com sucesso."