Fs = 48;

function [y] = Hd(z)
    a = 1 / (48 * 1 * 1); 
    y = -a ./ z ./ (1 - 1./z);
end

Hz = @(f) Hd(exp(f.*(2i*pi/48)));
Ha = @(f) 1j ./ (2 * pi .* f);

Db = @(x) 20 * log10(x);

Ha(1.3)
Ha(5.89)


xscale log
grid on

in0 = [0.1, 6];
in1 = [0.1, 24];
in2 = [0.1, 96];
tint = in2;

tiledlayout(2,1)

nexttile
hold on
ylim([-60, 10]);
fplot(@(x) Db(abs(Ha(x))), tint);
fplot(@(x) Db(abs(Hz(x))), tint);
title("Charakterystyka amplitudowa względem częstotliwości")
ylabel("|H(f)| [dB]");
xlabel("F [kHz]");
legend("Ha(f)", "Hd(f)");
grid on
hold off

nexttile
hold on


fplot(@(x) angle(Ha(x)), tint);
fplot(@(x) angle(Hz(x)), tint);
title("Charakterystyka argumentowa względem częstotliwości")
ylabel("arg(H(f)) ");
xlabel("F [kHz]");
legend("Ha(f)", "Hd(f)");
grid on
hold off

