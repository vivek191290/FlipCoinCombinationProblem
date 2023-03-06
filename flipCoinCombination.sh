echo "Welcome to Flip Coin Simulation prgram to winning percentage of Head or Tail"

flip=$((RANDOM % 2))

if [ $flip -eq 0 ]; then
  echo "Heads"
else
  echo "Tails"
fi
