#!/bin/bash


output="flops_results.csv"
echo "dimX,nsteps,flops" > $output

for dimX in 512 1024 2048 4096 8192; do

  nsteps=1000
  echo "Running dimX=$dimX, nsteps=$nsteps"

  output_temp=$(./heat_fdm $dimX $nsteps)

  flops=$(echo "$output_temp" | grep "The FLOPS is " | awk '{print $4}')
  
  echo "$dimX,$nsteps,$flops" >> $output
done

echo "FLOPS results saved to $output"