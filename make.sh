#   Andreas Linz
#   admin@klingt.net
#

#!/usr/bin/env bash

BUILDDIR=build
COMPILER=xelatex
DOCUMENT=presentation
DOCUMENT169=presentation169
PASS_ONE='-halt-on-error -no-pdf'
PASSES='-halt-on-error"'

if [[ -d $BUILDDIR ]]; then
    # change working directory, thanks to http://stackoverflow.com/a/10386924/1706750
    pushd $BUILDDIR
        xelatex $DOCUMENT.tex $PASS_ONE
        if [[ $? == 0 ]]; then
            biber $DOCUMENT
            makeglossaries $DOCUMENT
            echo "2nd pass ..."
            xelatex $DOCUMENT.tex $PASSES > /dev/null
            cp $DOCUMENT.pdf ../output/
        else
            clear
            echo "Error building $DOCUMENT.pdf"
            echo "See tex log ($BUILDDIR/$DOCUMENT.log) for more information."
        fi
        xelatex $DOCUMENT169.tex $PASS_ONE
        if [[ $? == 0 ]]; then
            biber $DOCUMENT169
            makeglossaries $DOCUMENT169
            echo "2nd pass ..."
            xelatex $DOCUMENT169.tex $PASSES > /dev/null
            cp $DOCUMENT169.pdf ../output/
        else
            clear
            echo "Error building $DOCUMENT169.pdf"
            echo "See tex log ($BUILDDIR/$DOCUMENT169.log) for more information."
        fi
    popd
else
    echo "$BUILDDIR does not exist or is not accessible!"
fi
