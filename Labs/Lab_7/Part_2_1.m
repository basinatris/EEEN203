freq = [1.4e+9, 1.5e+9, 1.7e+9, 1.8e+9, 1.9e+9, 2e+9, 2.1e+9, 2.2e+9, 2.3e+9, 2.3e+9, 2.4e+9, 2.5e+9, 2.6e+9];
    
Vi = [1.36, 1.36, 1.36, 1.24, 1.20, 1.08, 1.05, 1.00, 1.04, 1.06, 1.20, 1.34, 1.52];
Vo = [512e-3, 612e-3, 664e-3, 696e-3, 712e-3, 720e-3, 768e-3, 740e-3, 688e-3, 672e-3, 656e-3, 640e-3, 624e-3];

gain = Vo ./ Vi;

gain_dB = 20*log10(gain); % Convert to dB

semilogx(freq, gain_dB)
grid on
title('Transformer no load around resonance')
xlabel('Frequency')
ylabel('Gain dB')