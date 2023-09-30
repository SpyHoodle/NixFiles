#!/usr/bin/env sh

printf "YT URL: " && read url
printf "Title: " && read title
printf "Artist: " && read artist

# Download file from youtube
yt-dlp -x --no-playlist --embed-thumbnail --no-embed-metadata --audio-quality 0 --audio-format flac -o "$title.flac" "$url"

# Set metadata flags
metaflac --set-tag="TITLE=$title" --set-tag="ARTIST=$artist" "$title.flac"

# Export thumbnail
metaflac --export-picture-to="$title.png" "$title.flac"

# Convert png to jpg
mogrify -format jpg "$title.png"
rm -rf "$title.png"

# Convert to square
convert "$title.jpg" -gravity center -crop 1:1 "$title.jpg"

# Move the files to the correct directory
mv "$title.flac" "$title.jpg" $HOME/Music/iPod
