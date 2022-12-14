#include <algorithm>

#include "primes.hpp"

VectorLong primes(const long &n) {
    std::vector<char> isPrime(n + 1); // faster than std::vector<bool>
    std::fill(isPrime.begin(), isPrime.end(), true);

    for (long value = 2; value * value <= n; ++value) {
        if (!isPrime[value]) { continue; }

        for (long multiple = value * 2; multiple <= n; multiple += value) {
            isPrime[multiple] = false;
        }
    }

    VectorLong result;

    for (long value = 2; value <= n; ++value) {
        if (!isPrime[value]) { continue; }

        result.push_back(value);
    }

    return result;
}
