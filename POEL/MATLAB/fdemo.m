Fg = 48;

Hd = @(f) (-1/Fg) * (exp(-i*2*pi*Fg / f) / (1 - (exp(-i*2*pi*Fg / f))));
Ha = @(f) 1j ./ (2 * pi .* f);

Ha(1.3)
Ha(5.89)

xscale log
yscale log
grid on
fplot(@(x) abs(Ha(x)), [0.1, 6])
