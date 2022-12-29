func solution20() {}
func solution19() {}
func solution18() {}
func solution17() {}
func solution16() {}
func solution15() {}
func solution14() {}
func solution13() {}
func solution12() {}

import Foundation

func solution11() {
    var sum:Int = 0
    while true {
        guard let line = readLine() else { break }
        sum += Int(line)!
    }
    print(sum)
}

solution11()

func solution10() {
    let length = readLine()!.split(separator: " ").map{ Int($0)! }
    var list:[[Int]] = []
    for _ in 1...length[0]*2 {
        list.append(readLine()!.split(separator: " ").map{ Int($0)! })
    }
    for i in 0...length[0]-1 {
        var str:String = ""
        for j in 0...length[1]-1 {
            if str == "" {
                str += "\(list[i][j] + list[i+length[0]][j])"
            } else {
                str += " \(list[i][j] + list[i+length[0]][j])"
            }
        }
        print(str)
    }
}

func solution9() {
    while true {
        let line = readLine()!
        if line == "0 0" {
            break
        }
        let list = line.split(separator: " ").map{ Int($0)! }
        if list[0] > list[1] {
            print("Yes")
        } else {
            print("No")
        }
    }
}

func solution8() {
    let str = #"""
    .  .   .
    |  | _ | _. _ ._ _  _
    |/\|(/.|(_.(_)[ | )(/.
    """#
    print(str)
}

func solution7() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    if list[0] < list[1] {
        print(list[1]-list[0])
    } else {
        print(list[0]-list[1])
    }
}

func solution6() {
    var formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    formatter.timeZone = NSTimeZone(name: "ko_KR") as TimeZone?
    var current_date_string = formatter.string(from: Date())
    print(current_date_string)
}

func solution5() {
    //let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let list = "0 4 2 5 6".split(separator: " ").map{ Int($0)! }
    var sum:Int = 0
    for i in list {
        sum += Int(pow(Double(i), Double(2)))
    }
    print(sum%10)
}

func solution4() {
    let list = "9223372036854775807 9223372036854775808".split(separator: " ")
    var firstBigInt:[Int] = list[0].map{ Int(String($0))! }.reversed()
    var secondBigInt:[Int] = list[1].map{ Int(String($0))! }.reversed()
    var sumList:[Int] = []
    var onePlus = 0
    for i in 0...max(firstBigInt.count-1, secondBigInt.count-1) {
        var value = (firstBigInt.count > i ? firstBigInt[i] : 0) + (secondBigInt.count > i ? secondBigInt[i] : 0) + (onePlus)
        if value < 10 {
            sumList.append(value)
            onePlus = 0
        } else {
            sumList.append(value%10)
            onePlus = 1
        }
    }
    if onePlus == 1 {
        sumList.append(1)
    }
    sumList.reversed().map{ print($0, terminator: "") }
}

func solution3() {
    let n = Int(readLine()!)!
    for i in 0...n-1 {
        var str:String = String(repeating: " ", count: i) + String(repeating: "*", count: n-i)
        print(str)
    }
}

func solution2() {
    //let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let list = "100 99 1000000000".split(separator: " ").map{ Int($0)! }
    print(((list[2]-list[0])%(list[0]-list[1]) == 0 ? (list[2]-list[0])/(list[0]-list[1]) : (list[2]-list[0])/(list[0]-list[1])+1 )+1)
}

func solution1() {
    //let n = Int(readLine()!)!
    let n = 10
    if n == 0 {
      print(0)
    } else if n == 1 {
        print(1)
    } else if n == 2 {
        print(1)
    } else if n == 3 {
        print(2)
    } else {
        var list = [0, 1, 1, 2]
        for i in 4...n {
            list.append(list[i-1]+list[i-2])
        }
        print(list[n])
    }
}
