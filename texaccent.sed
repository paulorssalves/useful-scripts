# edita os caracteres que não são plenamente suportados pelo
# LaTeX para um formatos que permite sua renderização
# sem problemas 

# vogais 
# a
s/á/\\'{a}/g;
s/à/\\`{a}/g;
s/ã/\\~{a}/g;
s/â/\\^{a}/g;

# e
s/ê/\\^{e}/g;
s/é/\\'{e}/g;

# i
s/í/\\'{i}/g;

# o
s/õ/\\~{o}/g;
s/ó/\\'{o}/g;
s/ô/\\^{o}/g;

# u
s/ú/\\'{u}/g;

# consoantes 
# cedilha 
s/ç/\\c{c}/g;
