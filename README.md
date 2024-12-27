# GPU_Work

## hw_4: GPU Heat Equation Solver

A simple 1D heat equation solver using CUDA (cuSPARSE + cuBLAS).

### Compile

```bash
nvcc -o heat_fdm heat_fdm.cu -lcusparse -lcublas
```

### Example

```bash
./heat_fdm 1024 1000
```

### Scripts

run_flops.sh: Tests different dimX, writes to flops_results.csv.

run_error.sh: Tests different nsteps, writes to error_results.csv.

plot_flops.py / plot_error.py: Plot results (optional).