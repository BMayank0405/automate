#!/bin/sh
pushd ~/college
for i in * 
do
	pushd "$i"
	for j in *
	do
		pushd "$j"
		convert *.jpg  "${PWD##*/}".pdf
		popd
	done
	popd
done