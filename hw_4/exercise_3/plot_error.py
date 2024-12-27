# plot_error.py
import pandas as pd
import matplotlib.pyplot as plt

# 读取数据
data = pd.read_csv('error_results.csv')

# 绘图
plt.figure(figsize=(10,6))
plt.plot(data['nsteps'], data['relative_error'], marker='o')
plt.xlabel('nsteps')
plt.ylabel('Relative Error')
plt.title('Relative Error of Approximation for Different nsteps (dimX=1024)')
plt.grid(True)
plt.xscale('log')
plt.yscale('log')
plt.savefig('error_plot.png')
plt.show()