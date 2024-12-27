# plot_flops.py
import pandas as pd
import matplotlib.pyplot as plt

# 读取数据
data = pd.read_csv('flops_results.csv')

# 绘图
plt.figure(figsize=(10,6))
plt.plot(data['dimX'], data['flops'], marker='o')
plt.xlabel('dimX')
plt.ylabel('FLOPS Achieved')
plt.title('FLOPS Achieved for Different dimX Values')
plt.grid(True)
plt.xscale('log')
plt.yscale('log')
plt.savefig('flops_plot.png')
plt.show()