% 参数设置
fs = 1000; % 采样率
T = 1;     % 信号持续时间
f0 = 100;  % 主要信号频率
f_leakage = 150; % 引入功率泄露的附加频率

% 生成主要信号
t = 0:1/fs:T-1/fs;
signal_main = sin(2 * pi * f0 * t);

% 引入功率泄露的附加信号
signal_leakage = 0.5 * sin(2 * pi * f_leakage * t);

% 组合信号（主要信号 + 功率泄露）
signal_combined = signal_main + signal_leakage;

% 计算DFT
num_samples = length(signal_combined);
dft_result = fft(signal_combined, num_samples);

% 绘制DFT谱
frequencies = linspace(0, fs, num_samples);
plot(frequencies, 20 * log10(abs(dft_result)));
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('DFT Spectrum with Power Leakage');
grid on;