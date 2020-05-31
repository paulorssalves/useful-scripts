# remover periodicamente os arquivos de backup do emacs

# diretório dos arquivos org; variável de ambiente 
dir=$orgdir

# remover arquivos de backup  
for item in $dir*~;
do rm --verbose $item;
done

# remoer backups de save 
for item in $dir#*#;
do rm --verbose $item;
done
