func f() {
    g(3)
}
func g(_ n: Int) {
    print(n)
    g(n - 1)
}
func countdown(_ n: Int) {
    print(n)
    if n > 0 {
        print(n)
        countdown(n - 1)
        print(n)
    } else {
        print("going up")
    }
}

countdown(5)
print("End")
