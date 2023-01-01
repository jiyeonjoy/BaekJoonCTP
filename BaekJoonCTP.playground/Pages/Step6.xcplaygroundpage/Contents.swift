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

import Foundation

func solution23() {
    let a = readLine()!.split(separator: " ").filter{ $0 == "0" }.count
    if a == 0 {
        print("E")
    } else if a == 1 {
        print("A")
    } else if a == 2 {
        print("B")
    } else if a == 3 {
        print("C")
    } else {
        print("D")
    }
}

func solution22() {
    let n = Int(readLine()!)!
    if n == 1 {
        print("*")
    } else {
        for i in 1...n {
            let s = String(repeating: "*", count: i)
            print("\(s)")
        }
        for i in 2...n {
            let s = String(repeating: "*", count: n-i+1)
            print("\(s)")
        }
        
    }
}

func solution21() {
    let n = Int(readLine()!)!
    if n == 1 {
        print("*")
    } else {
        for i in 1...n {
            let b = i == n ? "" : String(repeating: " ", count: n-i)
            let s = String(repeating: "*", count: 1+2*(i-1))
            print("\(b)\(s)")
        }
        for i in 2...n {
            let b = i == 1 ? "" : String(repeating: " ", count: i-1)
            let s = String(repeating: "*", count: 1+2*(n-i))
            print("\(b)\(s)")
        }
        
    }
}

func solution20() {
    let n = Int(readLine()!)!
    for i in 1...n {
        let b = i == 1 ? "" : String(repeating: " ", count: i-1)
        let s = String(repeating: "*", count: 1+2*(n-i))
        print("\(b)\(s)")
    }
}

func solution19() {
    let n = Int(readLine()!)!
    if n == 1 {
        print("**")
    } else {
        for i in 1...n-1 {
            let b = String(repeating: " ", count: (n-i)*2)
            let s = String(repeating: "*", count: i)
            print("\(s)\(b)\(s)")
        }
        print(String(repeating: "*", count: 2*n))
        for i in 1...n-1 {
            let b = String(repeating: " ", count: i*2)
            let s = String(repeating: "*", count: n-i)
            print("\(s)\(b)\(s)")
        }
    }
}

func solution18() {
    let r = Double(readLine()!)!
    let a = String(format: "%.6f", r*r*3.14159265359)
    print(a)
    let b = String(format: "%.6f", r*r*2)
    print(b)
}

func solution17() {
    let n = Int(readLine()!)!
    if n == 1 {
        print("*")
    } else {
        for i in 1...n {
            let b = i == 1 ? "" : String(repeating: " ", count: i-1)
            let s = String(repeating: "*", count: 1+2*(n-i))
            print("\(b)\(s)")
        }
        for i in 2...n {
            let b = i == n ? "" : String(repeating: " ", count: n-i)
            let s = String(repeating: "*", count: 1+2*(i-1))
            print("\(b)\(s)")
        }
    }
}

func solution16() {
    let a = readLine()!.split(separator: " ").map{ Int($0)! }
    let b = readLine()!.split(separator: " ").map{ Int($0)! }
    let c = readLine()!.split(separator: " ").map{ Int($0)! }
    let xl = [a[0], b[0], c[0]].sorted()
    let yl = [a[1], b[1], c[1]].sorted()
    let x = xl[0] == xl[1] ? xl[2] : xl[0]
    let y = yl[0] == yl[1] ? yl[2] : yl[0]
    print("\(x) \(y)")
}

func solution15() {
    let n = Int(readLine()!)!
    for i in 1...n {
        let b = i == n ? "" : String(repeating: " ", count: n-i)
        let s = String(repeating: "*", count: 1+2*(i-1))
        print("\(b)\(s)")
    }
}

func solution14() {
    while true {
        guard let str = readLine() else { break }
        print(str)
    }
}

func solution13() {
    while true {
        let list = readLine()!.split(separator: " ").map{ Double($0)! }.sorted()
        if list[0] == 0 {
            break
        }
        if pow(list[0], 2) + pow(list[1], 2) == pow(list[2], 2) {
            print("right")
        } else {
            print("wrong")
        }
    }
}

func solution12() {
    let str = "OneTwoThreeFourFiveSixSevenEightNineTen"//readLine()!
    let c = (str.count+9)/10
    for i in 1...c {
        let start:Int = (i-1)*10
        let end:Int = min(i*10-1, str.count-1)
        print(String(Array(str)[start...end]))
    }
}

func solution11() {
    //let list = "1 1 5 5"readLine()!.split(separator: " ").map{ Int($0)! }
    let list = "1 1 5 5".split(separator: " ").map{ Int($0)! }
    let v = min(list[2]-list[0], list[3]-list[1], list[1]-0, list[0]-0)
    print(v)
}
func solution10() {
    let t = 1//Int(readLine()!)!
    for _ in 1...t {
    //    let list = readLine()!.split(separator: " ").map{ Int($0)! }
        let list = "30 50 72".split(separator: " ").map{ Int($0)! }
        var n = list[2]
        for i in 1...list[1] {
            for j in 1...list[0] {
                n -= 1
                if n == 0 {
                    if i > 9 {
                        print("\(j)\(i)")
                    } else {
                        print("\(j)0\(i)")
                    }
                }
            }
        }
    }
}

func solution9() {
    let k = Double(readLine()!)!
    let c = 25 + k*0.01
    if c < 100 {
        print(100)
    } else if c > 2000 {
        print(2000)
    } else {
        print(c)
    }
}

func solution8() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = list[0]
    let b = list[1]
    let maxV = max(a-b, a+b)
    let minV = min(a-b, a+b)
    print(maxV)
    print(minV)
}

func solution7() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = list[0]*7
    let p = list[1]&13
    if a > p {
        print("Axel")
    } else if a == p {
        print("lika")
    } else {
        print("Petra")
    }
}

func solution6() {
    let a = Int(readLine()!)!
    let b = Int(readLine()!)!
    let s = (a+b)%13
    print(s)
}

func solution5() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
    if list[0] == list[1] || list[1] == list[2] || list[2] == list[0]+list[1] {
        print("S")
    } else {
        print("N")
    }
}

func solution4() {
    let m2:Double = 1234//Double(readLine()!)!
    let r = sqrt(m2/3.14159265359)
    let v = 2*r*3.14159265359
}

func solution3() {
    let n = Int(readLine()!)!
    let p = Int(readLine()!)!
    var minp = p
    if n >= 5 {
        minp = min(minp, p-500)
    }
    if n >= 10 {
        minp = min(minp, p*9/10)
    }
    if n >= 15 {
        minp = min(minp, p-2000)
    }
    if n >= 20 {
        minp = min(minp, p*3/4)
    }
    print(minp)
}

func solution2() {
    let list = readLine()!.split(separator: " ").map{ Double($0)! }
    let a = sqrt(pow(list[0], 2)+pow(list[1], 2))
    let b = list[0]+list[1]
    print(b-a)
}

func solution1() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    if list[0] > list[1] {
        print(list[0] + list[1])
    } else if list[0] == list[1] {
        print(0)
    } else {
        print(list[1]-list[0])
    }
}