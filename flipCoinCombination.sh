echo "Welcome to Flip Coin Simulation prgram to winning percentage of Head or Tail"

declare -A singletCombos
total=0

echo "Simulating coin flips..."
read -p "Enter the number of times to flip the coin: " numFlips

for (( i=0; i<$numFlips; i++ ))
do
    flip=$(( RANDOM % 2 ))

    if [ $flip -eq 0 ]
    then
        singletCombos[H]+=1
    else
        singletCombos[T]+=1
    fi
done

echo "Results of coin flips:"

for combo in "${!singletCombos[@]}"
do
    count=${#singletCombos[$combo]}
    percentage=$(echo "scale=2; $count / $numFlips * 100" | bc)
    echo "$combo: $count ($percentage%)"
done

