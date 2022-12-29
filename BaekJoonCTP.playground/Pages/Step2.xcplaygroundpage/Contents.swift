func solution20() {}
func solution19() {}
func solution18() {}
func solution17() {}
func solution16() {}
func solution15() {}
func solution14() {}
func solution13() {}
func solution12() {}
func solution11() {}
func solution10() {}
func solution9() {}
func solution8() {}
func solution7() {}
func solution6() {}
func solution5() {}
func solution4() {}

import Foundation

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
