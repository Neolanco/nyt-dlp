#!/bin/sh
while true; do
    echo "nyt-dlp.void: STARTING all.sh"
    sleep 3s
    
    	chmod +x /nyt-dlp/modules-script/*
	echo "nyt-dlp.void: CHANGED PERMISSIONS"

	for script in /nyt-dlp/modules-script/*; do
    		[ -x "$script" ] && "$script"
	done

    echo "nyt-dlp.void: DONE all.sh"
    echo "nyt-dlp.void: WAITING FOR NEXT LOOP..."
    sleep 3h
done
