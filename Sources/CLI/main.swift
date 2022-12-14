import OSLog

import CXX

private func run() {
    let cxxVector = primes(100)
    let swiftArray = [Int](cxxVector)
    print(swiftArray)
}

private func profile() {
    let signposter = OSSignposter()

    let count = 100
    let n = 10_000_000

    for _ in 0..<count {
        let state = signposter.beginInterval("C++")
        let _ = primes(n)
        signposter.endInterval("C++", state)
    }

    for _ in 0..<count {
        let state = signposter.beginInterval("Swift")
        let _ = primes(n: n)
        signposter.endInterval("Swift", state)
    }
}

if UserDefaults.standard.bool(forKey: "profile") {
    profile()
} else {
    run()
}
