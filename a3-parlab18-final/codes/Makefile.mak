CC=mpicc
CFLAGS=-O3 -lm -Wall
RES=-DPRINT_RESULTS
#CONV=-DTEST_CONV

all: jacobi_mpi jacobi2_mpi gaussSeidel_mpi redblack_mpi

jacobi_mpi: Jacobi.c utils.c
        $(CC) $(CFLAGS) $(RES) $(CONV) Jacobi.c utils.c -o jacobi_mpi

jacobi2_mpi: Jacobi2.c utils.c
        $(CC) $(CFLAGS) $(RES) $(CONV) Jacobi2.c utils.c -o jacobi2_mpi

gaussSeidel_mpi: Gauss-Seidel_SOR.c utils.c
        $(CC) $(CFLAGS) $(RES) $(CONV) Gauss-Seidel_SOR.c utils.c -o gaussSeidel_mpi

redblack_mpi: Red-Black_SOR.c utils.c
        $(CC) $(CFLAGS) $(RES) $(CONV) Red-Black_SOR.c utils.c -o redblack_mpi

clean:
        rm jacobi_mpi jacobi2_mpi gaussSeidel_mpi redblack_mpi
