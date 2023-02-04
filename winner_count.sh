heads_count=0
tails_count=0
flips_count=0
while [ $heads_count -lt 10 ] && [ $tails_count -lt 10 ]
do
    result=$(( RANDOM % 2 ))
    if(( result == 0 ))
    then
        (( tails_count++ ))
    else
        (( heads_count++ ))
    fi

    if (( $heads_count > $tails_count ))
    then
        echo "head wins"
        break
    elif (( $tails_count > $heads_count ))
    then
        echo "tail wins"
        break
done
echo "The Heads count is $heads_count and Tails Count is $tails_count"
