//write a function that iterates through number 1-100
//for numbers divisible by 3, print "FIZZ"
//for numbers divisible by 5, print "BUZZ"
//for numbers divisible by 3 and 5, print "FIZZBUZZ"
//for numbers that don't meet any of there qualifications, print the number.



func fizzbuzz() {
    for number in 0...100 {
        if number % 3 == 0 && number % 5 == 0 {
           print("FIZZBUZZ")
        }
        else
        if(number % 3 == 0){
            print("FIZZ")
        }
        else if number % 5 == 0 {
            print("BUZZ")
        }
        else
        {
            print("\(number)")
        }
    }
}

fizzbuzz()

