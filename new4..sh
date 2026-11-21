#! /bin/bash

# dry -dont repeat yourself

echo "testing of execution time in bash"
startime=$(date+%s)
echo "script started at $startime"
echo "script is executing"
endtime=$(date+%s)

echo "time taken = $endtime -$starttime"