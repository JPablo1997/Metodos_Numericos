clc
func = input('Ingrese la funcion a la cual desea encontrar los puntos fijos: ', 's');
g = inline(func);

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
   p = g(p0);
   if (abs(p - p0) < TOL)
     fprintf('El punto fijo p = %15.10f \n',p);
     break;
   endif
   i = i + 1;
   p0 = p;
   
   if (i > N)
     fprintf('El metodo fracaso despues de %5.0f iteracciones\n',N);
   endif
 endwhile 