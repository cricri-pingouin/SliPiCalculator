# SliPiCalculator
Calculating Pi: Pascal versus Asm. Written in Turbo Delphi.

Following up from my Fractal, I though: would Asm be more beneficial if I rely (a bit) less on the FPU?
So I put this sample calculating Pi using the formula:
Pi = 4 * (1 - 1/3 + 1/5 - 1/7 + 1/9 - 1/11 ...

This time, I bundled both fucntions in the same project.

Results for 1e9 iterations:

100% Pascal = 5.478s

Asm = 5.119s

Again, same conclusion as with fractals: meh!
