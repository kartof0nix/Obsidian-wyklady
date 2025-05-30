Fg = 48;

Hd = @(f) (-1/Fg) .* (exp(-1i*2*pi*Fg ./ f) ./ (1 - (exp(-1i*2*pi*Fg ./ f))));
Ha = @(f) 1j ./ (2 * pi .* f);

Db = @(x) 20 * log(x);

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
fplot(@(x) Db(abs(Ha(x))), tint);
fplot(@(x) Db(abs(Hd(x))), tint);
ylabel("|H(f)| [dB]");
xlabel("F [kHz]");
legend("Ha(f)", "Hd(f)");
grid on
hold off

nexttile
hold on
fplot(@(x) angle(Ha(x)), tint);
fplot(@(x) angle(Hd(x)), tint);
ylabel("arg(H(f)) ");
xlabel("F [kHz]");
legend("Ha(f)", "Hd(f)");
grid on
hold off

