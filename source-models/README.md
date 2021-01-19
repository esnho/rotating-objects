# compress

tar -cvzf - Venus_de_Milo/* | split -b 70m - "VenusDeMilo-part"

# decompress

cat VenusDeMilo-parta* >VenuDeMilo.tar.gz

