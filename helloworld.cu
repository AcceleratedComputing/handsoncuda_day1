#include <stdio.h>
#include <stdlib.h>
#include "cuda_runtime.h"
#include "device_launch_parameters.h"

__global__ void hello_kernel()
{
	printf("Hello World from Thread %d", threadIdx.x);
}


int main(int argc, char *argv[])
{

	dim3 blocksPerGrid(1, 1, 1);
	dim3 threadsPerBlock(10, 1, 1);
	hello_kernel<<<blocksPerGrid, threadsPerBlock>>>();
	
	return 0;
}