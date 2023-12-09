for ((i=0;i<=10;i++)); do 
array[$i]=$((RANDOM % 100))
done

echo "Tomb: ${array[@]}"

for ((i=0;i<=10; i++)); do
array[$i]=$((array[$i]+1))
done

echo "1el novelt tomb: ${array[@]}"
