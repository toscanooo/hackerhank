import Foundation

// Complete the plusMinus function below.
func plusMinus(arr: [Int]) -> Void {

    var positiveNumbers: [Int] = []
    var negativeNumbers: [Int] = []
    var zeroes: [Int] = []

    for element in arr {
        if element == 0 {
            zeroes.append(element)
        } else if element > 0 {
            positiveNumbers.append(element)
        } else {
            negativeNumbers.append(element)
        }
    }

    func calculatePercentage (of numbers: [Int], from arr: [Int]) -> Double {
        return Double(numbers.count) / Double(arr.count)
    }

    print(calculatePercentage(of: positiveNumbers, from: arr))
    print(calculatePercentage(of: negativeNumbers, from: arr))
    print(calculatePercentage(of: zeroes, from: arr))
}

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let arrTemp = readLine() else { fatalError("Bad input") }
let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

plusMinus(arr: arr)
