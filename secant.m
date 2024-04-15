f = @(x) (x^3)-0.165*(x^2)+3.993*(10^(-4));
x1 = input("Enter Xi: ");
x0 = input("Enter Xi-1: ");
e = input("Enter Error tollerance: ");
f1 = f(x1);
f0 = f(x0);

i=0;

while(1)
  xr = x1-((f1*(x1-x0))/(f1-f0));  
  error = abs((xr- x1)/xr)*100 ;
  x1=xr;
  x0=x1;
  if(error<=e)
    break;
  endif
  i++;
  
printf("\nRoot: %d\n", xr);
printf("Error: %d\n", error);
printf("Iteration #%d \n", i);
  
endwhile


