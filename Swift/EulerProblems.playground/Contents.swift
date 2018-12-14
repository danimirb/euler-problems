import Foundation

// Multiples of 3 and 5
//If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
//
//Find the sum of all the multiples of 3 or 5 below 1000.

func sum(until: Int) -> Int {
    var total = 0
    for i in 3 ..< until {
        guard i % 3 == 0 || i % 5 == 0 else {
            continue
        }
        total = total  + i
    }
    return total
}

func sumMultiplesOf3And5(until: Int) -> Int {
    print(#function, until)
    if until == 3 {
        return 3
    }
    guard until % 3 == 0 || until % 5 == 0 else {
        print(#function, until)
        return sumMultiplesOf3And5(until: until - 1)
    }
    return until + sumMultiplesOf3And5(until: until - 1)
}

print(sumMultiplesOf3And5(until: 10))
