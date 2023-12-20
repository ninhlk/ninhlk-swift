import UIKit

//Bài 1:
let numberArray: [Int] = [2, 7, 5, 9, 2, 6, 3]

var firstOddIndex: Int? // Biến để lưu trữ vị trí đầu tiên của số lẻ
var lastEvenIndex: Int? // Biến để lưu trữ vị trí cuối cùng của số chẵn
for index in 0..<numberArray.count {
    if numberArray[index] % 2 != 0 { // Nếu là số lẻ
        if firstOddIndex == nil {
            firstOddIndex = index
        }
    }   else { // Nếu là số chẵn
        lastEvenIndex = index
        }
}
if let firstOddIndex { print("Số lẻ đầu tiên trong mảng có index là \(firstOddIndex)")
} else {
    print("Không có số lẻ nào trong mảng")
}
if let lastEvenIndex {
    print("Số chẵn cuối cùng trong mảng có index là \(lastEvenIndex)")
} else {
    print("Không có số chẵn nào trong mảng")
}

// Bài 2:
let myNumber: [Int] = [2, 7, 5, 9, 2, 6, 3]
var min, max: Int
min = myNumber[0]
max = myNumber[0]
for i in myNumber {
    min = min > i ? i : min
    max = max < i ? i : max
}
print("Số nhỏ nhất là \(min), số lớn nhất là \(max)")

// Bài 3:
print("Nhập vào số nguyên n (1 <= n <= 10): ", terminator: "")
var n = Int(readLine()!)
if let n {
    print("Bảng cửu chương của \(n) là:")
    for i in 1...10 {
        print("\(n) * \(i) = \(n * i)")
    }
} else {
    print("Giá trị vừa nhập không phải là số nguyên")
}

// Bài 4:
print("Nhập vào số nguyên n: ", terminator: "")
let n = Int(readLine()!)
if let n {
    var factorial = 1
    for i in 1...n {
        factorial *= i
    }
    print("\(n)! = \(factorial)")
} else {
    print("Giá trị vừa nhập không phải là số nguyên")
}

// Bài 5:
enum Weekdays: String {
    case Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}
let today = Weekdays.Wednesday
switch today {
case .Monday:
    print("Today is Monday")
case .Tuesday:
    print("Today is Tuesday")
case .Wednesday:
    print("Today is Wednesday")
case .Thursday:
    print("Today is Thursday")
case .Friday:
    print("Today is Friday")
case .Saturday:
    print("Today is Saturday")
case .Sunday:
    print("Today is Sunday")
default:
    print("Unknow")
}
