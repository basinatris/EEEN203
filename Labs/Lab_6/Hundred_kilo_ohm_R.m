
freq = [100, 200, 500, 1e+3, 2e+3, 5e+3, 100e+3, 200e+3, 500e+3, 1e+9, 2e+9, 5e+9, 10e+9, 20e+9, 50e+9, 100e+9]; % [Hz] Replace this with your data.
period = 1./freq;

Vi = [7.28, 8.08, 8.72, 8.88, 9.28, 9.68, 9.92, 10.0, 9.80, 9.40, 8.00, 4.60, 2.16, 1.04, 1.44, 1.02, 1.10, 1.40, 1.24]; % [V] Replace this with your data.
Vo = [608e-3, 680e-3, 736e-3, 768e-3, 792e-3, 816e-3, 832e-3, 860e-3, 820e-3, 800e-3, 680e-3, 380e-3, 168e-3, 696e-3, 
    384e-3, 344e-3, 24e-3, 92e-3, 144e-3]; % [V] Replace this with your data.

gain = Vo ./ Vi;

gain_dB = 20*log10(gain); % Convert to dB

subplot(211)
semilogx(freq, gain_dB)
