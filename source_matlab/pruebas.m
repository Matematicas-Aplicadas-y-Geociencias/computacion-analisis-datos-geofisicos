matrixA = readmatrix("../data/matrices_tarea.xlsx", Range="A3");
vectorB = readmatrix("../data/matrices_tarea.xlsx", Sheet="vector_b");

if issymmetric(matrixA)
    disp('matrixA is symmetric.');
else
    disp('matrixA is not symmetric.');
end


if all(eig(matrixA))
    disp('matrixA is definida positiva.');
else
    disp('matrixA is not definida positiva.');
end

x = pcg(matrixA,vectorB, 1e-6)