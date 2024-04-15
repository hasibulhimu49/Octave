a=input ("Power of e:");
n=input ("Number of term:");
sum=0;
for(i=0:n-1)
sum+=(power(a,i)/factorial(i));
endfor
printf("Result=%d",sum);
