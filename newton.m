x1 = input("Enter Guess: ");
e = input("Enter error tolerance: ");
f = @(x) (x^3)-0.165*(x^2)+3.993*(10^(-4));
fp = @(x) 3*x^2 - 0.33*x;

i = 0;
while(1)
  x2 = x1 - (f(x1)/fp(x1));
  error = abs((x2 - x1)/x2)*100;
  x1 = x2;
  i++;
  if(error<=e)
    break
  endif
  
  
printf("\nIteration: #%d",i);
printf("\nRoot is: %d\n",x2);
printf("Error: %f\n",error);


endwhile


