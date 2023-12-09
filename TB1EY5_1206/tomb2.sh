read -r num
for ((i=0;i<num;i++)); do
array[$i]=$((RANDOM % 100))
done

echo "tomb: ${array[@]}"

min=${array[0]}
max=${array[0]}
mindex=0
mxindex=0

for ((i=1;i<num;i++)); do
if ((array[i] <min)); then
min=${array[i]}
mindex=$i
fi

if ((array[i] > max)); then
max=${array[i]}
mxindex=$i
fi
done

echo "legkisebb: $min, hanyadik elem: $mindex"
echo "legnagyobb: $max, hanyadik elem: $mxindex"

declare -i sum=0
for i in $(seq 0 $((n - 1))); do
	sum=$((sum + arr[i]))
done
echo "Összeg: $sum"

avg=$((sum / n))
echo "Átlag: $avg"
