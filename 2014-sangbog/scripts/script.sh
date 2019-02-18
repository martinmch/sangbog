#!/usr/bin/env bash


function getRawTitle {
    regexTitle="s/[a-z]\/.*\/([a-z]+[a-z1-9\-]*)/\1/"
    RawTitle=$(echo $1 | sed -r -e $regexTitle)
}

function getRawAuthor {
    regexAuthor="s/[a-z]\/([a-z]+[a-z1-9\-]*)\/.*/\1/"
    RawAuthor=$(echo $1 | sed -r -e $regexAuthor)
}

function getFormattedString {
    FormattedString=$(echo $1 \
        | sed -e "s/\-/ /g" \
        | sed -e "s/\b\(.\)/\u\1/g" \
        | sed -e "s/oe/ø/g" \
        | sed -e "s/ae/æ/g" \
        | sed -e "s/aa/å/g")
}

function echoTitle {
    getRawTitle $1
    getFormattedString $RawTitle
    title=$FormattedString
    echo "{title: $title}"
}
function echoAuthor {
    getRawAuthor $1
    getFormattedString $RawAuthor
    author=$FormattedString
    echo "{artist: $author}"
}

for f in $1;
do
    echoTitle $f
    echoAuthor $f
    echo ""
    cat $f
done
