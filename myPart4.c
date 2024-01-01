int curious(int num) {
    int result = 0;
    int count = 10;

    do {
        if (num * 2 <= 9) {
            result++;
        } else {
            num -= 4;
        }
        count--;
    } while (count > 0);

    return num;
}
