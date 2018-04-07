clc
g = @(x) (10/(x + 4)).**0.5;

fprintf('\n');
p0 = input('Ingrese la aproximacion inicial: ');
#str2double(p0);
fprintf('\n');
TOL = input('Ingrese la tolerancia: ');
str2double(TOL);
fprintf('\n');
N = input('Ingrese el numero de interacciones maximas: ');
str2double(N);
fprintf('\n');

i = 1;
 while (i <= N)
   
   p1 = g(p0);
   p2 = g(p1);
   p = p0 - (p1 - p0)**2/(p2-2*p1+p0);
   if (abs(p - p0) < TOL)
     fprintf('La Raiz es p = %15.10f, fue econtrada en la iteracion %5.0f \n',p,i);
     break;
   endif
   i = i + 1;
   p0 = p;
   
   if (i > N)
     fprintf('El metodo fracaso despues de %5.0f iteracciones\n',N);
   endif
 endwhile