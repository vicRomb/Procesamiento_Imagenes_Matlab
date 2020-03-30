B = imread('cafe_gray.jpg');
figure;
imshow(B);
pause;
A = imnoise(B,'Gaussian',0.04,0.009);
%tamaño de imagen
[M,N] = size(A);
figure;
imshow(A);
pause;
%aumento de un borde mas a la matriz
L = double(A);

%operacion recorrer muestras
for i=2:M-1 %fila
   for j=2:N-1 %columna
        lista = [L(i-1,j-1), L(i-1,j), L(i-1,j+1), L(i,j-1), L(i,j), L(i,j+1), L(i+1,j-1), L(i+1,j), L(i+1,j+1)];
        C(i,j)= median(lista); %obtiene la mediana de la lista y lo almacena en la matriz A       
    end
end

A=uint8(A);
figure;
imshow(A);
pause; close all;