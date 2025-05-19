#!/bin/bash
#Program to tell a persons fortune

echo -e "\n~~ Fortune Teller ~~\n"

RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
echo -e "\n"
echo ${RESPONSES[5]}

N=$(( RANDOM % 6 ))
echo -e "\n${RESPONSES[$N]}"

GET_FORTUNE again
GET_FORTUNE(){
  echo -e "Ask a yes or no question:\n"

  read QUESTION

  if [[ ! $1 ]]
  then
    echo Ask a yes or no question:
  else
    echo Try again. Make sure it ends with a question mark:
  fi
}

until [[ $QUESTION =~ \?$ ]]
do
  GET_FORTUNE
done
