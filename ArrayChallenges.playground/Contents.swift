//Fibonaic series
func fib(_ num: Int) -> Int {
   switch num {
     case Int.min...1: return max(0, num)
     default: return fib(num-2) + fib(num-1)
   }
}

let fiboArray = Array(0...5)
fiboArray.forEach { print(fib($0)) }

//Factorial of a number uisng recursion
func factorialValue(fNumber: Int) -> Int{
   if fNumber == 0{
      return 1
   } else {
      return fNumber * factorialValue(fNumber:fNumber-1)
   }
}
var value = 4
var output = factorialValue(fNumber: value)


//Print second largest
func getSecondLargest(array: [Int]) -> Int {
    if array.count < 2 {
        print("Invalid")
    }
    var largest = 0
    var secondLargest =  0
    
    for i in array {
        if i > largest {
            secondLargest = largest
            largest = i
        } else if  i > secondLargest {
            secondLargest = i
        }
    }
    return secondLargest
}
print(getSecondLargest(array: [10,20,50,100, 90]))

//Check primenumber or not
func isPrime(num: Int) -> Bool {
    switch(num) {
    case 0...1: return false
    case 2: return true
    default:
        for i in 2..<num {
            if(num % i == 0) {
                return false
            }
        }
    }
    return true
}
print(isPrime(num: 7))

//sum of all elements in array
let sumArray = [10,20,30]
print(sumArray.reduce(0, +))

//Sum of two elements in an array whose value equal to given sum
var inputArray = [2, 4, -1, 3, 0, 6]
var sum = 9
func findTwoSumHash(inputArray: [Int], sum: Int) -> [Int : Int]? {
    var dictionary: [Int: Int] = [:]
    
    for element in inputArray {
        let difference = sum - element
        
        if let _ = dictionary[difference] {
            return [element : difference]
        }
        
        dictionary[element] = element
    }
    return nil
}

print(findTwoSumHash(inputArray: inputArray, sum: sum))

//All numbers are repeating in array except one, findout that one
func singleNumber(_ nums: [Int]) -> Int {
    
    var result = nums[0]
    for i in 1..<nums.count {
        print(result ^ nums[i])
        result = result ^ nums[i]
    }
    return result
}
print(singleNumber([4,1,2,1,2]))


//Find maximum element in the array
let nums = [1, 6, 3, 9, 4, 6];
let numMax = nums.reduce(Int.min, { max($0, $1) })

//Remove duplicates from array
var duplicates = [ 1, 3, 2, 3, 3, 4, 2, 1, 2 ]
var duplicateSet = Set<Int>()
let filteredArray = duplicates.filter{ duplicateSet.insert($0).inserted }
print(filteredArray)

// Recursive function to print all possible subarrays for given array

func printAllSubArray(array:[Int], start: Int, end: Int) {
    if end == array.count {
        return
    } else if start > end {
        printAllSubArray(array: array, start: 0, end: end+1)
    } else {
        print("[", terminator: "")
        for i in start..<end {
            print(array[i], terminator: ", ")
        }
        print(array[end], terminator: "]")
        printAllSubArray(array: array, start: start+1, end: end)
    }
}
print(printAllSubArray(array: [1,2,3], start: 0, end: 0))


//Putting different data types into single array
var arr:[Any] = [1, 2, "three", 0.1]
print(arr)



