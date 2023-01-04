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
func solution11() {}

import Foundation

// 15780번 - 멀티탭 충분하니?
func solution10() {
    let n = readLine()!.split(separator: " ").map{ Int(String($0))! }.first!
    let sum = readLine()!.split(separator: " ").map{ (Int(String($0))!+1)/2 }.reduce(0,+)
    if sum >= n {
        print("YES")
    } else {
        print("NO")
    }
}

// 2991번 - 사나운 개
func solution9() {
    let list1 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let list2 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    for i in list2 {
        var c = 0
        var f = i%(list1[0]+list1[1])
        if f == 0 || f > list1[0] {
          
        } else {
            c += 1
        }
        var s = i%(list1[2]+list1[3])
        if s == 0 || s > list1[2] {
            
        } else {
            c += 1
        }
        print(c)
    }
}


// 15921번 - 수찬은 마린보이야!!
func solution8() {
    let n = Int(readLine()!)!
    if n == 0 {
        print("divide by zero")
    } else {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let a = Double(list.reduce(0, +))/Double(n)
        let b = list.map{ Double($0)/Double(n) }.reduce(0, +)
        print(String(format: "%.2f", Double(a)/Double(b)))
    }
}

// 6131번 - 완전 제곱수
func solution7() {
    let n = Int(readLine()!)!
    var c = 0
    for a in 1...500 {
        for b in 1..<a {
            if a*a-n == b*b {
                c += 1
            }
        }
    }
    print(c)
}

// 5612번 - 터널의 입구와 출구
func solution6() {
    let n = Int(readLine()!)!
    var m = Int(readLine()!)!
    var maxm = m
    for _ in 1...n {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        m = m + list[0] - list[1]
        if maxm < m {
            maxm = m
        }
        if m < 0 {
            maxm = 0
            break
        }
    }
    print(maxm)
}

// 4690번 - 완전 세제곱
func solution5() {
    for a in 5...100 {
        var list:[[Int]] = []
        for d in 4..<a {
            for c in 3..<d {
                for b in 2..<c {
                    if pow(Double(a), 3) == pow(Double(b), 3)+pow(Double(c), 3)+pow(Double(d), 3) {
                        list.append([b,c,d])
                    }
                }
            }
        }
        for s in list.sorted(by: { $0[0] < $1[0] }) {
            var str = "(\(s[0]),\(s[1]),\(s[2]))"
            print("Cube = \(a), Triple = \(str)")
        }
    }
}

// 15667번 - 2018 연세대학교 프로그래밍 경진대회
func solution4() {
    let n = Int(readLine()!)!
    for k in 1...n {
        if n == k*k+k+1 {
            print(k)
            break
        }
    }
}

// 9517번 - 아이 러브 크로아티아
func solution3() {
    var k = Int(readLine()!)!
    let n = Int(readLine()!)!
    var ac = 210
    for _ in 1...n {
        let list = readLine()!.split(separator: " ")
        ac -= Int(list[0])!
        if ac <= 0 {
            print(k)
            break
        }
        if list[1] == "T" {
            k = k == 8 ? 1 : k+1
        }
    }
}

// 2863번 - 이게 분수?
func solution2() {
    let list1 = readLine()!.split(separator: " ").map{ Double(String($0))! }
    let list2 = readLine()!.split(separator: " ").map{ Double(String($0))! }
    let a = list1[0]
    let b = list1[1]
    let c = list2[0]
    let d = list2[1]
    let l = [a/c+b/d, c/d+a/b, d/b+c/a, b/a+d/c]
    let i = l.firstIndex(of: l.max()!)!
    print(i)
}

func mod(_ s:String, _ p:Int) -> Int {
    var ret = 0
    for c in s {
        ret = (ret*10+Int(String(c))!)%p
    }
    return ret
}

func isPrime(_ num: Int) -> Bool {
    if(num<4) {
        return num == 1 ? false : true
    }
    for i in 2...Int(sqrt(Double(num))) {
        if(num % i == 0) { return false }
    }
    return true
}

// 1837번 - 암호제작
func solution1() {
    let list = readLine()!.split(separator: " ")
    let str = String(list[0])
    let k = Int(list[1])!
    var isDone = false
    for i in 2..<k {
        if isPrime(i) {
            if mod(str, i) == 0 {
                print("BAD \(i)")
                isDone = true
                break
            }
        }
    }
    if !isDone {
        print("GOOD")
    }
}
