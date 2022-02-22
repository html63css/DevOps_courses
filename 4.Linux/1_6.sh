#!/bin/bash
read -p "Enter 1 char: " CH
if [ ${#CH} -le 1 ]
then
case ${CH} in
[йцукенгшщзхъфывапролджэячсмитьбюa-z]) echo "Letter in the lower register"
;;
[А-ЯA-Z]) echo "Letter in upper case"
;;
[0-9]) echo "Number"
;;
['.,;:-']) echo "Punctuation mark"
;;
'') echo "Space"
;;
*) echo "Something other"
;;
esac
else
echo "More than 1 character entered"
fi
