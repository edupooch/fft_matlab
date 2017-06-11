% APENAS PARA NÚMEROS POTÊNCIAS DE 2
% MÉTODO Cooley–Tukey FFT

function res =  my_fft(x)
len = length(x);

if len <= 32
    res = my_dft(x);
else
    x_par = my_fft(x(1:2:end));
    x_impar = my_fft(x(2:2:end));
    
    im = exp(-2j*pi*(1:len/2)/len).*x_impar(1:len/2);
    
    res = [(x_par(1:len/2) + im(1:len/2)) (x_par(1:len/2) - im(1:len/2))];
end
