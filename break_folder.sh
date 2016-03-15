target_folder=$1
mv $target_folder/* .
trash $target_folder

#cuidado ao sobrescrever arquivos na pasta superior
#conseguir acessar pasta com nome composto
