% 参数设置
fs = 1000; % 采样率
T = 1;     % 信号持续时间
f0 = 100;  % 主要信号频率

% 生成主要信号
t = 0:1/fs:T-1/fs;
signal_main = sin(2 * pi * f0 * t);

% 计算DFT
num_samples = length(signal_main);
dft_result = fft(signal_main, num_samples);

% 绘制DFT谱
frequencies = linspace(0, fs, num_samples);
plot(frequencies, 20 * log10(abs(dft_result)));
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Ideal DFT Spectrum');
grid on;