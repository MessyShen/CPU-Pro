int frac(int n) {
    if (n == 1) return 1;
    return n * frac(n - 1);
}