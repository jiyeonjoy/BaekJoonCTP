func solution20() {}
func solution19() {}

import Foundation

func solution18() {
    let line = readLine()!
    if line.count == 2 {
        let a = Int(String(line.first!))!
        let b = Int(String(line.last!))!
        print(a+b)
    } else if line.count == 3 {
        if Array(line)[1] == "0" {
            let a = 10
            let b = Int(String(line.last!))!
            print(a+b)
        } else {
            let a = Int(String(line.first!))!
            let b = 10
            print(a+b)
        }
    } else {
        print(20)
    }
}

func solution17() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
    print(abs(list[3]+list[0]-list[2]-list[1]))
}

func solution16() {
    //let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let list = "3 1".split(separator: " ").map{ Int($0)! }
    if (list[0]+list[1])%2 == 1 || list[0] < list[1] {
        print(-1)
    } else {
        print("\((list[0]+list[1])/2) \((list[0]+list[1])/2-list[1])")
    }
}

func solution15() {
    let width = Double(readLine()!)!
    let r = Double(readLine()!)!
    print(width*2 + r*2*3.141592)
}

func solution14() {
    let list = readLine()!.split(separator: "/").map{ Int($0)! }
    if list[0]+list[2] < list[1] || list[1] == 0 {
        print("hasu")
    } else {
        print("gosu")
    }
}

func solution13() {
    let line = "1001" // readLine()!
    var n:Int = 0
    if line.count > 3 {
        n = Int(String(Array(line)[line.count-3..<line.count]))!%8
    } else {
        n = Int(line)!%8
    }
    if n == 1 {
        print(1)
    } else if n == 2 || n == 0 {
        print(2)
    } else if n == 3 || n == 7 {
        print(3)
    } else if n == 4 || n == 6 {
        print(4)
    } else {
        print(5)
    }
}

func solution12() {
    let n = Int(readLine()!)!
    print(n*n-n)
}

func solution11() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    var sum = list.reduce(0, +)
    if sum >= 100 {
        print("OK")
    } else {
        let index = list.firstIndex(of: list.min()!)!
        if index == 0 {
            print("Soongsil")
        } else if index == 1 {
            print("Korea")
        } else {
            print("Hanyang")
        }
    }
}

func solution10() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    if list[0] > 0 {
        for _ in 1...list[0] {
            let line = readLine()!
            print(String(line.reversed()))
        }
    }
}

func solution9() {
    for _ in 1...3 {
        let line = readLine()!.split(separator: " ").map{ Int($0)! }
        let oneMinusM:Bool = line[5] < line[2]
        let s = !oneMinusM ? line[5] - line[2] : 60+line[5] - line[2]
        let oneMinusH:Bool = line[4] - (oneMinusM ? 1 : 0) < line[1]
        let m = !oneMinusH ? line[4] - (oneMinusM ? 1 : 0) - line[1] : 60+line[4] - (oneMinusM ? 1 : 0) - line[1]
        let h = line[3] - (oneMinusH ? 1 : 0) - line[0]
        print("\(h) \(m) \(s)")
    }
}

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
