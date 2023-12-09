echo 'For:'

for i in {1..10}
do
echo $i
i=i-1
done

echo 'while:'

declare -i i=0
while [ $i -le 10 ]; do
	echo $i
	i=$((i + 1))
done

echo 'until:'

declare -i i=0
until [ $i -gt 10 ]; do
	echo $i
	i=$((i + 1))
done
