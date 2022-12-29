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
    let s = "baekjoon" // readLine()!
    var str:String = ""
    for a in "abcdefghijklmnopqrstuvwxyz" {
        let count:Int = s.filter{ $0 == a }.count
        if str == "" {
            str += "\(count)"
        } else {
            str += " \(count)"
        }
    }
    print(str)
}

solution11()

func solution10() {
    let count = Int(readLine()!)!
    for _ in 1...count {
        let line = readLine()!
        if line.count >= 6 && line.count <= 9 {
            print("yes")
        } else {
            print("no")
        }
    }
}

func solution9() {
    //let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let list = "200 20".split(separator: " ").map{ Int($0)! }
    if list[0]*(100-list[1])/100 >= 100 {
        print(0)
    } else {
        print(1)
    }
}

func solution8() {
    //let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let list = "0 0 0 23 3 100".split(separator: " ").map{ Int($0)! }
    var sum:Int = 0
    for v in list {
        if v == 0 {
//            sum -= 10
//            sum += 5
        } else {
            sum += v*5
        }
    }
    print(sum)
}

solution8()

func solution7() {
    var n = 20/4//Int(readLine()!)!/4
    print(String(repeating: "long ", count: n)+"int")
}

func solution6() {
    var sum = 10//Int(readLine()!)!
    var cha = 2//Int(readLine()!)!
    var second = (sum-cha)/2
    var first = sum - second
    print(first)
    print(second)
}

func solution5() {
    //let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let list = "1 10 100 1000".split(separator: " ").map{ Int($0)! }
    var v = 56*list[0]+24*list[1]+14*list[2]+6*list[3]
    print(v)
}

func solution4() {
    //let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let list = "15 18 11".split(separator: " ").map{ Int($0)! }
    var v = (list[0]+1)*(list[1]+1)/(list[2]+1)-1
    print(v)
}

func solution3() {
    let h = readLine()!
    let str = """
:fan::fan::fan:
:fan::\(h)::fan:
:fan::fan::fan:
"""
    print(str)
}

func solution2() {
    let aList = readLine()!.split(separator: " ").map{ Int($0)! }
    let cList = readLine()!.split(separator: " ").map{ Int($0)! }
    print("\(cList[0]-aList[2]) \(cList[1]/aList[1]) \(cList[2]-aList[0])")
}

func solution1() {
    let price:Double = 10000000//Int(readLine()!)!
    let first = price*0.78
    let second = price - price*0.2*0.22
    print("\(Int(first)) \(Int(second))")
}
