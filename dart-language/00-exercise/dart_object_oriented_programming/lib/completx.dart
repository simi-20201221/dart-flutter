class Complex {
  const Complex(
    this.re,
    this.im,
  );

  const Complex.zero()
      : re = 0,
        im = 0;
  const Complex.indentity()
      : re = 1,
        im = 0;
  const Complex.real(this.re) : im = 0;
  const Complex.imaginary(this.im) : re = 0;

  final double re;
  final double im;
}
