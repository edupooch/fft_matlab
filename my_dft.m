function xk = my_dft(xn)
N= length(xn);
xk(1:N) = 0;

for k=0:N-1
    for n=0:N-1
       xk(k+1) = xk(k+1) + (xn(n+1) * ((cos(2*pi*k*n/N)) - (1i*sin(2*pi*k*n/N)))); %coeficiente dft
    end
end

end