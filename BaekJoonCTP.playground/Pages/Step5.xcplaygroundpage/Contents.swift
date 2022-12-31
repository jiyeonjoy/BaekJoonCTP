//let list = readLine()!.split(separator: " ").map{ Int($0)! }
//Int(readLine()!)!

func solution50() {}
func solution49() {}
func solution48() {}
func solution47() {}
func solution46() {}
func solution45() {}
func solution44() {}
func solution43() {}
func solution42() {}
func solution41() {}
func solution40() {}
func solution39() {}
func solution38() {}
func solution37() {}
func solution36() {}
func solution35() {}
func solution34() {}
func solution33() {}
func solution32() {}
func solution31() {}
func solution30() {}
func solution29() {}
func solution28() {}
func solution27() {}
func solution26() {}
func solution25() {}
func solution24() {}
func solution23() {}
func solution22() {}
func solution21() {}
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

func solution11() {}

func solution10() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    var oneCount = 0
    for i in list {
        if i == 1 {
            oneCount += 1
        }
    }
    if oneCount > 1 {
        print(1)
    } else {
        print(2)
    }
}

func solution9() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let one = readLine()!.split(separator: " ").map{ Int($0)! }
    let index:Int = list.firstIndex(of: one[0]) ?? -1
    print(index+1)
}

func solution8() {
    let num:Double = 64//Int64(readLine()!)!
    sqrt(num)*4
    //print(a)
}

func solution7() {
    var count = 0
    for _ in 1...6 {
        let str = readLine()!
        if str == "W" {
            count += 1
        }
    }
    if count > 4 {
        print(1)
    } else if count > 2 {
        print(2)
    } else if count > 0 {
        print(3)
    } else {
        print(4)
    }
}

func solution6() {
    let a = Int(readLine()!)!
    let b = Int(readLine()!)!
    let c = Int(readLine()!)!
    let d = Int(readLine()!)!
    var firstCondition = (a == 8 || a == 9)
    var secondCondition = (d == 8 || d == 9)
    var thirdCondition = b == c
    if firstCondition && secondCondition && thirdCondition {
        print("ignore")
    } else {
        print("answer")
    }
}

func solution5() {
    let s = Int(readLine()!)!
    let m = Int(readLine()!)!
    let l = Int(readLine()!)!
    let v = s + m*2 + l*3
    if v >= 10 {
        print("happy")
    } else {
        print("sad")
    }
}

func solution4() {
    let a = Int(readLine()!)!
    let b = Int(readLine()!)!
    let c = Int(readLine()!)!
    let d = Int(readLine()!)!
    if a == b && b == c && c == d {
        print("Fish At Constant Depth")
    } else if a < b && b < c && c < d {
        print("Fish Rising")
    } else if a > b && b > c && c > d {
        print("Fish Diving")
    } else {
        print("No Fish.")
    }
}

func solution3() {
    let list1 = readLine()!.split(separator: " ").map{ Int($0)! }
    let list2 = readLine()!.split(separator: " ").map{ Int($0)! }
    var sum = 0
    for i in 0...3 {
        if list1[i] < list2[i] {
            sum += list2[i]-list1[i]
        }
    }
    print(sum)
}

func solution2() {
//    let list = readLine()!.split(separator: " ").map{ Double($0)! }
    let list = "2000 1800".split(separator: " ").map{ Double($0)! }
    let m = (list[1]-list[0])/400
    let p = 1/(1+pow(10, m))
    print(p)
}

solution2()

func solution1() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    if list[0] == list[1] {
        print(list[0])
    } else if list[0] > list[1] {
        print(list[0])
    } else {
        print(list[1])
    }
}
