import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for number in 1...10{
    var total: Int = n * Int(number);
    print( "\(n) x \(number) = \(total)");    
}
