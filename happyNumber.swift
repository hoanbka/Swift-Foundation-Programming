/*
This is my very first program in Swift
*/
func happyNumber(n: Int) -> Bool {
    var set = Set<Int>()
    set.insert(n)
    var curr = n
    while true {
        var num = sumOfSquares(n: curr)
        if num == 1 {
            return true
        }
        
        if set.contains(num){
            return false
        }
        
        set.insert(num)
        curr = num
    }
    return false
}

func sumOfSquares(n: Int) -> Int {
    var sum: Int = 0
    var curr = n
    
    while curr > 0 {
        var temp: Int = 0
        temp = curr % 10
        sum += temp * temp
        curr = curr / 10
    }
    return sum
}