#!/bin/bash

# 输出文件
output="error_results.csv"
echo "nsteps,relative_error" > $output

# 固定 dimX=1024
dimX=1024

# 不同的 nsteps 值
for nsteps in 100 500 1000 5000 10000; do
  echo "Running dimX=$dimX, nsteps=$nsteps"
  # 运行程序并捕获输出
  output_temp=$(./heat_fdm $dimX $nsteps)
  
  # 解析输出
  rel_error=$(echo "$output_temp" | grep "The relative error of the approximation is " | awk '{print $8}')
  
  # 写入 CSV
  echo "$nsteps,$rel_error" >> $output
done

echo "Error results saved to $output"