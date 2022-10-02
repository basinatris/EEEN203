freq1 = [100, 200, 500, 1e+3, 2e+3, 5e+3, 10e+3, 20e+3, 50e+3, 100e+3, 200e+3, 500e+3, 1e+9, 1.4e+9, 1.5e+9, 1.7e+9, 1.8e+9, 1.9e+9, 2e+9, 2.1e+9, 2.2e+9, 2.3e+9, 2.3e+9, 2.4e+9, 2.5e+9, 2.6e+9, 5e+9, 10e+9, 20e+9, 50e+9, 100e+9];

Vi1 = [7.28, 8.08, 8.72, 8.88, 9.28, 9.68, 9.92, 10.0, 9.80, 9.40, 8.00, 4.60, 2.16, 1.36, 1.36, 1.36, 1.24, 1.20, 1.08, 1.05, 1.00, 1.04, 1.06, 1.20, 1.34, 1.52, 1.44, 1.02, 1.10, 1.40, 1.24];
Vo1 = [608e-3, 680e-3, 736e-3, 768e-3, 792e-3, 816e-3, 832e-3, 860e-3, 820e-3, 800e-3, 680e-3, 380e-3, 168e-3,512e-3, 612e-3, 664e-3, 696e-3, 712e-3, 720e-3, 768e-3, 740e-3, 688e-3, 672e-3, 656e-3, 640e-3, 624e-3, 384e-3, 344e-3, 24e-3, 92e-3, 144e-3]; 

gain1 = Vo1 ./ Vi1;

gain_dB1 = 20*log10(gain1);

freq2 = [100, 200, 500, 1e+3, 2e+3, 5e+3, 10e+3, 20e+3, 50e+3, 100e+3, 200e+3, 420e+3, 430e+3, 440e+3, 450e+3, 460e+3, 470e+3, 480e+3, 490e+3, 500e+3, 510e+3, 520e+3, 530e+3, 540e+3, 550e+3, 560e+3, 570e+3, 580e+3, 1e+9, 2e+9];

Vi2 = [7.12, 7.92, 8.72, 9.04, 9.36, 9.76, 10.6, 10.0, 10.2, 10.0, 8.40, 4.64, 4.48, 4.32, 4.24, 4.12, 4.00, 3.84, 3.72, 3.68, 3.64, 3.65, 3.72, 3.80, 3.88, 3.92, 4.00, 4.00, 2.04, 1.32];
Vo2 = [592e-3, 664e-3, 744e-3, 768e-3, 792e-3, 816e-3, 920e-3, 840e-3, 920e-3, 880e-3, 840e-3, 1.00, 1.04, 1.08, 1.11, 1.18, 1.24, 1.28, 1.32, 1.38, 1.40, 1.42, 1.44, 1.40, 1.34, 1.28, 1.16, 1.08, 56.0e-3, 48.0e-3];

gain2 = Vo2 ./ Vi2;

gain_dB2 = 20*log10(gain2);

semilogx(freq1, gain_dB1, freq2, gain_dB2)
grid on
title('Frequency response of transformer w/ no load vs w/ capacitor')
xlabel('Frequency (Hz)')
ylabel('Gain (dB)')