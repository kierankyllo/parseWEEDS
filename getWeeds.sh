#!/bin/sh
# This script will fetch the zipped WY3 files from the government of canada google drive repository and place them in /WY3 

mkdir WY3
cd WY3

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1TxHIYcMzTHdJj7FvIHp6hmR1EHdOqhZy' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1TxHIYcMzTHdJj7FvIHp6hmR1EHdOqhZy" -O yt.zip && rm -rf /tmp/cookies.txt
unzip -j yt.zip
rm yt.zip

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1h83zD5-HBiV4oSbg6tw3st5UoX_Ldivm' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1h83zD5-HBiV4oSbg6tw3st5UoX_Ldivm" -O sk.zip && rm -rf /tmp/cookies.txt
unzip -j sk.zip
rm sk.zip

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1ewhpJJmP3JgB2-C7tVqobryj4mE8HQJ6' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1ewhpJJmP3JgB2-C7tVqobryj4mE8HQJ6" -O qc.zip && rm -rf /tmp/cookies.txt
unzip -j qc.zip
rm qc.zip

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1fS9sOamh0dD7FeQDUGANEc7g5aCXKfyj' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1fS9sOamh0dD7FeQDUGANEc7g5aCXKfyj" -O pe.zip && rm -rf /tmp/cookies.txt
unzip -j pe.zip
rm pe.zip

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1oJ5EOFrLlfHvkxebmLe6bdnlJOYdN7qP' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1oJ5EOFrLlfHvkxebmLe6bdnlJOYdN7qP" -O on.zip && rm -rf /tmp/cookies.txt
unzip -j on.zip
rm on.zip

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1qQ07xBw4EXqgwqQB-SKaBrtiC2VQAXiM' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1qQ07xBw4EXqgwqQB-SKaBrtiC2VQAXiM" -O nu.zip && rm -rf /tmp/cookies.txt
unzip -j nu.zip
rm nu.zip

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1rMhzFSa-neXBIGJegIXcWUF1DhRJegMG' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1rMhzFSa-neXBIGJegIXcWUF1DhRJegMG" -O nt.zip && rm -rf /tmp/cookies.txt
unzip -j nt.zip
rm nt.zip

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1moBs6cpR3Yxbv2-KvhXbug2pDUCUJMi5' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1moBs6cpR3Yxbv2-KvhXbug2pDUCUJMi5" -O ns.zip && rm -rf /tmp/cookies.txt
unzip -j ns.zip
rm ns.zip

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1un_trQBLtQcORn-mTm1I0Hd1lk0sQgqD' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1un_trQBLtQcORn-mTm1I0Hd1lk0sQgqD" -O nl.zip && rm -rf /tmp/cookies.txt
unzip -j nl.zip
rm nl.zip

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1jPBm76kwjtwiRKPmiSu09yk2EBtndTQK' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1jPBm76kwjtwiRKPmiSu09yk2EBtndTQK" -O nb.zip && rm -rf /tmp/cookies.txt
unzip -j nb.zip
rm nb.zip

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1ujD4zvTpjg-UPkWdhRUlEYbDUUDwkBpK' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1ujD4zvTpjg-UPkWdhRUlEYbDUUDwkBpK" -O  mb.zip && rm -rf /tmp/cookies.txt
unzip -j mb.zip
rm mb.zip

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1OPOaVjVt-eOWaWSYkApSjGJXOhVTt03h' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1OPOaVjVt-eOWaWSYkApSjGJXOhVTt03h" -O bc.zip && rm -rf /tmp/cookies.txt
unzip -j bc.zip
rm bc.zip

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1kOOeJMrRP39OpOL_n081G8CmzCkxHcdq' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1kOOeJMrRP39OpOL_n081G8CmzCkxHcdq" -O ab.zip && rm -rf /tmp/cookies.txt
unzip -j ab.zip
rm ab.zip
