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
func solution3() {}

import Foundation

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
