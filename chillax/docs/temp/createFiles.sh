#!/bin/bash

tr -d '[:blank:]' < vc-list.txt > outputList.tmp

start=1
for i in $(cat outputList.tmp)
do

echo "---" >> ${i}.md
echo "layout: default" >> ${i}.md
echo "title: ${i}" >> ${i}.md
# echo "permalink: /${i}/" >> ${i}.md
echo "has_children: false" >> ${i}.md
echo "parent: Visual Composer Elements" >> ${i}.md
echo "nav_order: $(($start+326))" >> ${i}.md
echo "---" >> ${i}.md

echo "##${i}" >> ${i}.md

start=$(($start+1))

done
exit 0


