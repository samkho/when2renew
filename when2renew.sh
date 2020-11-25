# from https://github.com/samkho/when2renew

# please REPLACE list with YOUR domains before running!
declare -a domains=(
    "example.org"
    "letsencrypt.org"
    "www.freebsd.org"
    "www.github.com"
    "www.mit.edu"
    )

clear
for domain in "${domains[@]}"
do
    echo "$domain"
    curl -v --head "https://$domain" 2>&1 | grep expire
done
echo

