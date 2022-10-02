freq = [420e+3, 430e+3, 440e+3, 450e+3, 460e+3, 470e+3, 480e+3, 490e+3, 500e+3, 510e+3, 520e+3, 530e+3, 540e+3, 550e+3, 560e+3, 570e+3, 580e+3];

Vi = [4.64, 4.48, 4.32, 4.24, 4.12, 4.00, 3.84, 3.72, 3.68, 3.64, 3.65, 3.72, 3.80, 3.88, 3.92, 4.00, 4.00];
Vo = [1.00, 1.04, 1.08, 1.11, 1.18, 1.24, 1.28, 1.32, 1.38, 1.40, 1.42, 1.44, 1.40, 1.34, 1.28, 1.16, 1.08];

gain = Vo ./ Vi;

gain_dB = 20*log10(gain);

semilogx(freq, gain_dB)
grid on
title('Transformer with capacitor load around resonance')
xlabel('Frequency (Hz)')
ylabel('Gain (dB)')