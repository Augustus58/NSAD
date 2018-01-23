#!/bin/bash

bibflag=false

while getopts 'b' flag; do
    case "${flag}" in
	b) bibflag=true;;
    esac
done

if [ "$bibflag" = true ];
then
    latex xamarin.tex
    bibtex xamarin.aux
    latex xamarin.tex
    latex xamarin.tex
    dvips xamarin.dvi
    ps2pdf xamarin.ps
else
    latex xamarin.tex
    dvips xamarin.dvi
    ps2pdf xamarin.ps
fi
