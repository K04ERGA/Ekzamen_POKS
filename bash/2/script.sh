//Используя конструкции bash, напишите функцию, которая принимает в качестве аргумента число n и выводит на экран n-ый член последовательности Фибоначчи.
#!/bin/bash

fibonacci() {
    n=$1

    if [ $n -eq 1 ] || [ $n -eq 2 ]; then
        echo 1
        return
    fi

    a=1
    b=1

    for (( i=3; i<=n; i++ )); do
        c=$((a + b))
        a=$b
        b=$c
    done

    echo $b
}

fibonacci $1
