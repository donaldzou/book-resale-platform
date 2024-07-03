> ./README.md

for fname in ./Exports/*.png; do
    if ! echo "$fname" | grep -q "@2x"; then
        echo "![]($fname)\n" >> ./README.md
    fi
done