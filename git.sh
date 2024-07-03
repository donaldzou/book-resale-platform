> ./README.md

for fname in ./Exports/*.png; do
    if ! echo "$fname" | grep -q "@2x"; then
        echo "![]($fname)\n" | sed 's/ /%20/g' >> ./README.md
    fi
done

git add .
git commit -m "Update"
git push