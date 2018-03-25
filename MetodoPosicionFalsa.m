clc
func = input('Ingrese la funcion a la cual desea encontrar los puntos fijos: ', 's');
f = inline(func);
fprintf('\n');
p0 = input('Ingrese la aproximacion inicial p0: ');
p1 = input('Ingrese la aproximacion inicial p1: ');
fprintf('\n');
TOL = input('Ingrese la tolerancia: ');
fprintf('\n');
N = input('Ingrese el numero de interacciones maximas: ');
fprintf('\n');

i = 2;
 while (i <= N)
   q0 = f(p0);
   q1 = f(p1);
   p = p1 - q1*(p1-p0)/(q1-q0);
   if (abs(p - p1) < TOL)
     fprintf('El punto fijo p = %15.10f \n',p);
     break;
   endif
   i = i + 1;
   q = f(p);
   
   if q*q1 < 0
     p0 = p1;
     q0 = q1;
   endif
     
   
   p1 = p;
   q1 = q;
   
   if (i > N)
     fprintf('El metodo fracaso despues de %5.0f iteracciones\n',N);
   endif
 endwhile 