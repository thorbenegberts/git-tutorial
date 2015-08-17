
# cleanup/setup

echo "Starting…"

rm -rf build
mkdir build

# Manifesto

mkdir build/manifesto

## German

mkdir build/manifesto/de

### Generate PDF

pandoc -o build/manifesto/de/Manifest\ der\ Plentykratie.pdf manifesto/de/Manifest\ der\ Plentykratie.md  -Vlang=german

# Commentary

mkdir build/commentary

## German

mkdir build/commentary/de

#### Generate PDF

cd commentary/de
pandoc -o ../../build/commentary/de/Kommentar\ zum\ Manifest\ der\ Plentykratie.pdf title.txt Kommentar\ zum\ Manifest.md  --toc -Vlang=german

#### Generate epub

pandoc -o ../../build/commentary/de/Kommentar\ zum\ Manifest\ der\ Plentykratie.epub title.txt Kommentar\ zum\ Manifest.md --epub-cover-image=cover.jpg --epub-metadata=metadata.xml --toc -Vlang=german

cd ../..

# Archive

cd build

zip -r Release.zip ./**

# After this you are in the base directory again…

cd ../..

# …

echo "Done."