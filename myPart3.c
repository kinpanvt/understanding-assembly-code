int what_is_this(int limit) {
    int sum = 0;
    for (int i = 0; i <= limit; ) {
        i += 2;
        sum += i;
    }
    return sum;
}
