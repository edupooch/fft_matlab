% taxa de amostragem 4000 amostras por segundo
% media variancia e autocorrela��o dos trechos de 10 em 10 QRS
sinal = importdata('teste.txt');
sinal = sinal(1:16384);
sinal = sinal.'; %inverte linhas e colunas

len = length(sinal);
fsample = 4000;
res = fsample/len;

Y = fft(sinal);

Pyy = Y.*conj(Y)/len; %para representar num complexos
f = res*(0:(len/2)-1);
figure; plot(f,Pyy(1:len/2));
title('Densidade espectral'); xlabel('Frequ�ncia (Hz)'); ylabel('Amplitude')

figure; plot(f(1:500),Pyy(1:500));
title('Densidade espectral ZOOM'); xlabel('Frequ�ncia (Hz)');  ylabel('Amplitude')
