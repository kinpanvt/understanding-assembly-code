int what(int a, int b, int c) {
    if (a > c) {
        b = c - a;
    } else {
        b = a - c;
    }
    return b;
}
