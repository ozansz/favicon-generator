# Favicon Generator

A shell script that generates favicon from given image

## Usage

First clone the repository to your local machine:

```shell
git clone https://github.com/ozansz/favicon-generator
cd favicon-generator
```

And run `gen.sh`:

```shell
chmod +x gen.sh
./gen.sh foobar.png
```

The command above generates a favicon from `foobar.png` and saves as `favicon.ico`

To save the generated favicon with a different name from `favicon.ico`, pass the file name as the second argument.
The command below saves the generated favicon from `foo.png` to `bar.ico`.

```shell
./gen.sh foo.png bar.ico
```

## Script Arguments

`gen.sh <file> [outfile]`

* `file`: Image file which will be used to generate favicon
* `outfile`: Custom favicon output file name
