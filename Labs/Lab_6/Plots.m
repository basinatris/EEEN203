
freq = [10, 20, 50, 100, 200, 500, 1e+3, 2e+3, 5e+3, 1e+9]; % [Hz] Replace this with your data.
period = 1./freq;

Vi = [0.168, 0.216, 0.256, 0.256, 0.272, 0.272, 0.272, 0.272, 0.288, 0.6]; % [V] Replace this with your data.
Vo = [1.72, 2.24, 2.88, 2.88, 2.88, 2.88, 2.88, 2.96, 2.96, 0.134]; % [V] Replace this with your data.

t_delay = [-262e-6, -200e-6, -40e-6, 20e-6, -35e-6, -15e-6, -3.50e-6, -2.52e-6, -2.2e-6, -281e-9]; % [s] Replace this with your data.
disp(t_delay)

gain = Vo ./ Vi;

gain_dB = 20*log10(gain); % Convert to dB

phase = t_delay ./ period .* 360; % [degrees]

subplot(211)
semilogx(freq, gain_dB)
subplot(212)
semilogx(freq, phase)
