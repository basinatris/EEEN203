freq = [100, 200, 500, 1e+3, 2e+3, 5e+3, 10e+3, 20e+3, 50e+3, 100e+3, 200e+3, 500e+3, 1e+9, 2e+9];

Vi = [7.12, 7.92, 8.72, 9.04, 9.36, 9.76, 10.6, 10.0, 10.2, 10.0, 8.40, 4.40, 2.04, 1.32];
Vo = [592e-3, 664e-3, 744e-3, 768e-3, 792e-3, 816e-3, 920e-3, 840e-3, 920e-3, 880e-3, 840e-3, 1.38, 56.0e-3, 48.0e-3];

gain = Vo ./ Vi;

gain_dB = 20*log10(gain);

semilogx(freq, gain_dB)
grid on
title('Frequency response of transformer with capacitor load')
xlabel('Frequency (Hz)')
ylabel('Gain (dB)')