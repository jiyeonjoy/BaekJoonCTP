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

import Foundation

func solution8() {
    var list1:[Int] = []
    var list2:[Int] = []
    for _ in 1...4 {
        list1.append(Int(readLine()!)!)
    }
    for _ in 1...2 {
        list2.append(Int(readLine()!)!)
    }
    list1.sort()
    list2.sort()
    var sum = list1[1]+list1[2]+list1[3]+list2[1]
    print(sum)
}

func solution7() {
    let list = readLine()!.split(separator: " ")
    if list[0] == list[1] {
        print(1)
    } else {
        print(0)
    }
}

func solution6() {
    let m = Int(readLine()!)!
    let d = Int(readLine()!)!
    if m > 2 {
        print("After")
    } else if m == 2 {
        if d > 18 {
            print("After")
        } else if d == 18 {
            print("Special")
        } else {
            print("Before")
        }
    } else {
        print("Before")
    }
}

func solution5() {
    let c = Int(readLine()!)!
    let b = Int(readLine()!)!
    print(b+b-c)
}

func solution4() {
    let a = readLine()!.split(separator: " ").map{ Int($0)! }
    let b = readLine()!.split(separator: " ").map{ Int($0)! }
    print(min(a[0]+b[1], a[1]+b[0]))
}

func solution3() {
    while true {
        let line = "2 2"//readLine()!
        if line == "0 0" {
            break
        }
        let sum = line.split(separator: " ").map{ Int($0)! }.reduce(0,+)
        print(sum)
        break
    }

    while true {
        let line = "How are you today?" //readLine()!
        if line == "#" {
            break
        }
        let list:[Character] = ["a", "e", "i", "o", "u","A", "E", "I", "O", "U"]
        print(line.filter{ list.contains($0) }.count)
        break
    }
}

func solution2() {
    while true {
        let line = "!edoc doog a tahW"//readLine()!
        if line == "END" {
            break
        }
        print(String(line.reversed()))
        break
    }
}

func solution1() {
    let s1 = readLine()!.split(separator: " ").map{ Int($0)! }.reduce(0, +)
    let s2 = readLine()!.split(separator: " ").map{ Int($0)! }.reduce(0, +)
    print(max(s1, s2))
}
