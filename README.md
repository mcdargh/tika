# Tika processing container

## Building

./build.sh

## Usage

- use the runtika.sh script or similar wrapper to run the container mapping the current directory into the tika container and then:

-- for one file run tika \<filename>

-- for folder, run tika \<folder path> \<output path>

The output path will mirror the output path with one text file per input file with all extracted text
