#!/bin/bash

echo "Localizando arquivos com permissão SUID BIT..."
find / -perm -4000 2> /bin/null
