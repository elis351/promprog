#!/bin/bash


reducers_count=1
mappers_count=1
reducer_executable=""
mapper_executable=""

for i in {1..$reducers_count}
do
    eval "reducer_data_$i=()"
done

for i in {1..$END}; do echo $i; done 
