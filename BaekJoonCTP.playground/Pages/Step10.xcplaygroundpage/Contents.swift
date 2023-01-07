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

import Foundation

func solution12() {}

func solution11() {
    let t = Int(readLine()!)!
    var a = 0
    var maxa = 0
    var minb = 50
    var minc = 179
    for i in 1...t {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        if list[0] > maxa {
            maxa = list[0]
            minb = list[1]
            minc = list[2]
            a = i
        } else if list[0] == maxa {
            if minb > list[1] {
                minb = list[1]
                minc = list[2]
                a = i
            } else if minb == list[1] {
                if minc > list[2] {
                    minc = list[2]
                    a = i
                }
            }
        }
    }
    print(a)
}

func solution10() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let a = list[0]
        let b = list[1]
        var sum = 0
        for i in 1...a/b {
            sum += 1+(i-1)*2
        }
        print(sum)
    }
}

func solution9() {
    let n = Int(readLine()!)!
    for _ in 1...n {
        print(String(repeating: "@", count: n*5))
    }
    for _ in 1...n*3 {
        print("\(String(repeating: "@", count: n))\(String(repeating: " ", count: 3*n))\(String(repeating: "@", count: n))")
    }
    for _ in 1...n {
        print(String(repeating: "@", count: n*5))
    }
}

func solution8() {
    let list1 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let list2 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let m = list1[1]
    var v = 1
    for i in list2 {
        v *= (i%m)
        v = v%m
    }
    print(v%m)
}

func solution7() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let list = readLine()!.split(separator: " ").map{ Double(String($0))! }
        var sum = 0
        sum += Int(9.23076*pow((26.7-list[0]), 1.835))
        sum += Int(1.84523*pow((list[1]-75), 1.348))
        sum += Int(56.0211*pow((list[2]-1.5), 1.05))
        sum += Int(4.99087*pow((42.5-list[3]), 1.81))
        sum += Int(0.188807*pow((list[4]-210), 1.41))
        sum += Int(15.9803*pow((list[5]-3.8), 1.04))
        sum += Int(0.11193*pow((254-list[6]), 1.88))
        print(sum)
    }
}

func solution6() {
    let n = Int(readLine()!)!
    for _ in 1...n {
        print(String(repeating: "@", count: n*5))
    }
    for _ in 1...3*n {
        print(String(repeating: "@", count: n))
    }
    for _ in 1...n {
        print(String(repeating: "@", count: n*5))
    }
}

func solution5() {
    var i = 0
    while true {
        let list = readLine()!.split(separator: " ").map{ Double(String($0))! }
        if list[1] == 0 {
            break
        }
        i += 1
        let a = list[0] // 지름
        let b = list[1] // 회전 수
        let c = list[2] // 초
        
        let v1 = a*3.14159265359*b/(5280*12)
        let v2 = v1/(c/3600)
        
        print("Trip #\(i): \(String(format: "%.2f", v1)) \(String(format: "%.2f", v2))")
    }
}

func solution4() {
    let t = Int(readLine()!)!
    for i in 1...t {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let s = list[0]
        let e = list[1]
        var sum = 0
        if s != e {
            if s < 0 {
                if e <= 0 {
                    sum = -(abs(s)*(abs(s)+1)/2 - (abs(e)-1)*abs(e)/2)
                } else {
                    sum = -(abs(s)*(abs(s)+1)/2)+e*(e+1)/2
                }
            } else {
                sum = e*(e+1)/2-(s-1)*s/2
            }
        } else {
            sum = s
        }
        print("Scenario #\(i):")
        print(sum)
        if i < t {
            print("")
        }
    }
}

func solution3() {
    let t = Int(readLine()!)!
    var sum = 0
    for _ in 1...t {
        let str = Array(readLine()!)
        sum += Int(pow(Double(String(str[0...str.count-2]))!, Double(String(str[str.count-1]))!))
    }
    print(sum)
}

func solution2() {
    let t = Int(readLine()!)!
    for i in 1...t {
        print("Data Set \(i):")
        var h = Int(readLine()!)!
        var list = Array(readLine()!)
        for c in list {
            if c == "c" {
                h += 1
            } else {
                h -= 1
            }
        }
        print(h)
        if i < t {
            print("")
        }
    }
}

func solution1() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = list[0]
    let d = list[1]
    let k = list[2]

    let v = k-a
    if v%d != 0 || v/d <= -1 {
        print("X")
    } else {
        print(v/d+1)
    }
}
