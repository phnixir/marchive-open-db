#!/bin/bash
echo "mod_id,mod_status,mod_filename,mod_title,mod_size,mod_md5,mod_format,mod_spotlit,mod_download,mod_fav,mod_scrape_time,mod_channel,mod_genre,mod_upload_date"
for number in {1..192}; do
	cat "$number".unit
done
