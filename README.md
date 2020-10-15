# SliPiCalculator
Calculating Pi: Pascal versus Asm. Written in Turbo Delphi.

Following up from my Mandelbrot set calculations fractal fun, I wondered: would Asm be more beneficial if I rely (a bit) less on the FPU?
So I put this sample calculating π using the Leibniz formula (which converges slowly, so not great for calculating π, but good to for the purpose of testing Pascal vs Asm speed):

π/4 = 1 - 1/3 + 1/5 - 1/7 + 1/9 - 1/11 + ...

This time, I bundled both functions in the same project.

Results for 1e9 iterations:

100% Pascal = 5.478s

Asm = 5.119s

Again, same conclusion as with fractals: meh!
