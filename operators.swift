import Foundation

// Complete the solve function below.
func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {

let mealCost = meal_cost
let tipPercent = Double(tip_percent)
let taxPercent = Double(tax_percent)

let tip = Double(mealCost) * tipPercent / 100
let tax = Double(mealCost) * taxPercent / 100

let totalCost = mealCost + tip + tax

print(Int(totalCost.rounded()))

}

guard let meal_cost = Double((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let tip_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let tax_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

solve(meal_cost: meal_cost, tip_percent: tip_percent, tax_percent: tax_percent)
