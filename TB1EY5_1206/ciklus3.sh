read input
  if [[ $input ]] && [ $input -eq $input 2>/dev/null ]
  then
     echo "$input egy szam"
     i=2
 
if [ $input -lt 2 ]
then
    echo "$input nem prim"
    exit
fi
 
while [ $i -lt $input ]
do
    if [ `expr $input % $i` -eq 0 ]
    then
        echo "$input nem  prim"
        exit
    fi
    i=`expr $i + 1`
done
 
echo "$input prim szam"

  else
     echo "$input nem egy szam"
  fi
