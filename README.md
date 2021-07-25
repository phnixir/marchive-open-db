# Open Modarchive Database
This is a full database of every module in modarchive starting from 1 to
the 192,000th module and after 3 days of scraping i have collected all of
it into this small repository to help developers use modarchive without
having to issue a request to their servers for every small need, then
using that webpage they got to run an unstable set of functions on to
finally acquire the data they need.

The rust library  [trackermeta](https://crates.io/crates/trackermeta) 
(written by me), also on [github](https://github.com/phnixir/trackermeta) and 
actively maintained. the [scraper i used](https://github.com/phnixir/trackerconqueror)
for gathering all of this data was also written by me utilizing this library.

Self promotion aside i hope that by publishing this to everyone that you will
use a pruned version of this db in your program so that there wont be a need
to request a webpage from modarchive for every single small data you need and
also that you can have a reliable source to read from instead of a library that
can fall apart if the design of modarchive changes.

## Notes and warnings
- The titles are the censored version because modarchive
- Double quotes were removed from the titles
- Some titles have random utf8 code points and i have no idea why
- In conclusion, please don't primarily use titles, filenames are much more reliable and nicer

## The data it can provide
- mod id
- mod status (present or absent)
- mod filename
- mod title
- mod file size
- mod md5
- mod format
- mod spotlit status
- mod download count
- mod favourite count
- mod scrape time
- mod channel count
- mod genre
- mod upload date

## How do i assemble the fulldb myself?
If you use linux just clone this repo cd into the db directory and run
`./compiler.sh > fulldb.csv` and then youll have the database fresh, enjoy.

## How do i use this data in my program?
Well, thats on you to figure out based on your programming language, BUT
if you use rust that trackermeta library i mentioned does have a struct
called `ModInfo`, you can use the `csv` crate on crates.io to load the
fulldb.csv as a struct, if you pruned your database you have to create
your own struct and pass that to the `csv` crate and load it, which i
will eventually include an example of in this very repository since
my other project that depended on a database like this will be using a
pruned version as well.
