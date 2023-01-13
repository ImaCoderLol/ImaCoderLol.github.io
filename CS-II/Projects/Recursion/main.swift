import Foundation

func calc(_ n: Int) {
    print("start")
    if n > 2 {
        print(n)
        calc(n / 2)
        print(n)
    } else {
        print("going down")
    }
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

func test(_ x: Int, _ y: Int) {
    if x == 0 {
        print(y)
    } else {
        print(x, y)
        return test(x - 1, x + y)
    }
}

func work(_ n: Int) -> Int {
    print(n)
    if n > 4 {
        return work(n - 1) + work(n - 2) + work(n - 3)
    } else {
        return 0
    }
    try await Task.sleep(nanoseconds: 3_000_000_000)
}

calc(12)
print("separation")

test(7, 1)
print(work(107))
