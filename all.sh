echo "nyt-dlp.all: BEGIN"


chmod +x /nyt-dlp/modules/*
echo "nyt-dlp.all: CHANGED PERMISSIONS"

# Run all scripts in /nyt-dlp/modules/ with the name 'script'
for script in /nyt-dlp/modules/*; do
    [ -x "$script" ] && "$script"
done
echo "nyt-dlp.all: RAN ALL MODULES"


echo "nyt-dlp.all: END"