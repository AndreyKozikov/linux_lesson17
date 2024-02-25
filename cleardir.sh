#!/bin/bash

directory=$1

if [ -d "$directory" ] 
then
    echo "Начало очистки директории $directory"
    find "$directory" -type f \( -name "*.bak" -o -name "*.tmp" -o -name "*.backup" \) -delete
    echo 'Очистка завершена'
else
    echo "Ошибка: Директория $directory не существует"
fi
