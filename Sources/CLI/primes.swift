func primes(n: Int) -> [Int] {
    var isPrime = [Bool](repeating: true, count: n + 1)

    for value in stride(from: 2, to: n + 1, by: 1) where isPrime[value] {
        if value * value > n { break }

        for multiple in stride(from: value * 2, to: n + 1, by: value) {
            isPrime[multiple] = false
        }
    }

    var result = [Int]()

    for value in stride(from: 2, to: n + 1, by: 1) where isPrime[value] {
        result.append(value)
    }

    return result
}

