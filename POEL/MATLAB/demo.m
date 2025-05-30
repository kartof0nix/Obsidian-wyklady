Fg = 48;

Hd = @(f) (-1/Fg) * (exp(-i*2*pi*Fg / f) / (1 - (exp(-i*2*pi*Fg / f))));
Ha = @(f) j / (2 * pi * f)

Ha(1.3)
Ha(5.89)
