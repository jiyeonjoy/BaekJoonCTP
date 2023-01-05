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

import Foundation

// 26502
func solution38() {
    let n = 1//Int(readLine()!)!
    let dic:[Character:Character] = [
        "y":"a"
        "a":"e",
        "e":"i",
        "i":"o",
        "o":"u",
        "u":"y",
        "Y":"A",
        "A":"E",
        "E":"I",
        "I":"O",
        "O":"U",
        "U":"Y",
    ]
    for _ in 1...n {
        let str = String(readLine()!.map {
            dic[$0] ?? $0
        })
        print(str)
    }
}

// 5343
func solution37() {
    let n = Int(readLine()!)!
    for _ in 1...n {
        var c = 0
        let line = Array(readLine()!)
        for i in 1...line.count/8 {
            let oneCount = line[(i-1)*8...i*8-2].filter{ $0==Character("1") }.count
            if Int(String(line[i*8-1]))! != oneCount%2 {
                c += 1
            }
        }
        print(c)
    }
}

// 26741
func solution36() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let h = list[0]
    let l = list[1]
    let chicken = (h*4-l)/2
    let cow = h-chicken
    print("\(chicken) \(cow)")
}

// 26392
func solution35() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let n = list[0]
    let r = list[1]
    let s = list[2]
    for _ in 1...n {
        var l:[Int] = []
        for i in 1...r {
            let c = readLine()!
            if c.contains("#") {
                l.append(r-i+1)
            }
        }
        if l.count < 2 {
            print(0)
        } else {
            print(l[0]-l[l.count-1])
        }
    }
}

func solution33() {
    let n = Int(readLine()!)!
    for _ in 1...n {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let y = list[0]
        let m = list[1]
        let d = list[2]
        if y < 1989 {
            print("Yes")
        } else if y > 1989 {
            print("No")
        } else {
            if m < 2 {
                print("Yes")
            } else if m > 2 {
                print("No")
            } else {
                if d < 28 {
                    print("Yes")
                } else {
                    print("No")
                }
            }
        }
    }
}

func solution32() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    for n in list {
        print("*\(String(repeating: " ", count: 1+2*(n-2)))*")
        if n > 2 {
            for i in 1..<n-1 {
                print("\(String(repeating: " ", count: i))*\(String(repeating: " ", count:1+2*(n-i-2)))*")
            }
        }
        print("\(String(repeating: " ", count: n-1))*")
    }
}

func solution31() {
    let n = Int(readLine()!)!
    for _ in 1...n {
        let list1 = readLine()!.split(separator: " ").map{ Double(String($0))! }.sorted()
        let list2 = readLine()!.split(separator: " ").map{ Double(String($0))! }.sorted()
        var isc1 =  pow(list1[1], 2)+pow(list1[0], 2) == pow(list1[2], 2)
        var isc2 =  pow(list2[1], 2)+pow(list2[0], 2) == pow(list2[2], 2)
        if list1 == list2 && isc1 && isc2 {
            print("YES")
        } else {
            print("NO")
        }
    }
}

func solution30() {
    let n = Int(readLine()!)!
    for _ in 1...n {
        let list = readLine()!.split(separator: " ").map{ Double(String($0))! }
        let a = list[0]
        let b = list[1]
        if abs(abs(a/b) - 1.61803399) < 1.61803399*0.01 {
            print("golden")
        } else {
            print("not")
        }
    }
}

// 26548
func solution29() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let list = readLine()!.split(separator: " ").map{ Double(String($0))! }
        let a = list[0]
        let b = list[1]
        let c = list[2]
        var x1 = (-b+sqrt(b*b-4*a*c))/(2*a)
        var x2 = (-b-sqrt(b*b-4*a*c))/(2*a)
        print("\(String(format: "%.3f", x1)), \(String(format: "%.3f", x2))")
    }
}

// 6903
func solution28() {
    let a = Int(readLine()!)!
    let b = Int(readLine()!)!
    let c = Int(readLine()!)!
    var s1 = "*\(b > 0 ? String(repeating: " ", count: b) : "")*\(b > 0 ? String(repeating: " ", count: b) : "")*"
    if a > 0 {
        for _ in 1...a {
            print(s1)
        }
    }
    print(String(repeating: "*", count: 3+2*b))
    if c != 0 {
        var s2 = "\(String(repeating: " ", count: b+1))*"
        for _ in 1...c {
            print(s2)
        }
    }
}

// 26941
func solution27() {
    var n = Int(readLine()!)!
    var c = 0
    while n >= 0 {
        c += 1
        let w = (1+2*(c-1))
        n -= w*w
        print(n)
    }
    print(c-1)
}

// 26940
func solution26() {
    readLine()
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var a = 0
    var c = 0
    for i in list {
        if a > 0 && i > a {
            c += 1
        }
        a = i
    }
    print(c)
}

// 26906
func solution25() {
    let t = Int(readLine()!)!
    var dic:[String:String] = [:]
    for _ in 1...t {
        let list = readLine()!.split(separator: " ").map{ String($0) }
        dic[list[1]] = list[0]
    }
    var str = Array(readLine()!)
    var a = ""
    for i in 0..<str.count/4 {
        a += dic[String(str[i*4..<i*4+4])] ?? "?"
    }
    print(a)
}

// 26714
func solution24() {
    let n = Int(readLine()!)!
    let str = Array(readLine()!)
    let c = n/10
    var a = 0
    for i in 0..<10 {
        if !str[i*c..<i*c+c].contains("N") {
            a += 1
        }
    }
    print(a)
}

// 24198
func solution23() {
    var n = Int(readLine()!)!
    var a = 0
    var b = 0
    var isB = true
    while n > 0 {
        if isB {
            b += (n+1)/2
            isB = false
        } else {
            a += (n+1)/2
            isB = true
        }
        
        n -= (n+1)/2
    }
    print("\(a) \(b)")
}

// 27130
func solution22() {
    let a = 123//Int(readLine()!)!
    let b = 456//Int(readLine()!)!
    print(a)
    print(b)
    var c = b
    while c > 0 {
        print((c%10)*a)
        c /= 10
    }
    print(a*b)
}

// 27101
func solution21() {
    let n = Int(readLine()!)!
    var list:[[Int]] = []
    var isDone = false
    for i in 0..<n {
        list.append(readLine()!.split(separator: " ").map{ Int(String($0))! })
        if list[i][i] != 0 {
            print(1)
            isDone = true
            break
        }
    }
    if !isDone {
        for i in 0..<n {
            for j in 0..<n {
                if i != j && list[i][j] <= 0 {
                    print(2)
                    isDone = true
                    break
                }
            }
            if isDone {
                break
            }
        }
    }
    if !isDone {
        for i in 0..<n {
            for j in 0..<n {
                if i != j && list[i][j] != list[j][i] {
                    print(3)
                    isDone = true
                    break
                }
            }
            if isDone {
                break
            }
        }
    }
    if !isDone {
        for i in 0..<n {
            for j in 0..<n {
                for k in 0..<n {
                    if list[i][j] + list[j][k] < list[i][k] {
                        print(4)
                        isDone = true
                        break
                    }
                }
                
                if isDone {
                    break
                }
            }
            if isDone {
                break
            }
        }
    }
    if !isDone {
        print(0)
    }
}

func solution20() {
    let n = Int(readLine()!)!
    var sum = n
    for i in 1...n/2 {
        if n%i == 0 {
            sum += i
        }
    }
    print(sum)
}

struct DoublePriorityQueue {
    private var _elements = [Int]()
    
    mutating func insert(_ number: Int) {
        _elements.append(number)
    }
    
    mutating func deleteMaximum() {
        guard !_elements.isEmpty else { return }
        let max = _elements.max()!
        let index = _elements.firstIndex { $0 == max }
        _elements.remove(at: index!)
    }
    
    mutating func deleteMinimum() {
        guard !_elements.isEmpty else { return }
        let min = _elements.min()!
        let index = _elements.firstIndex { $0 == min }
        _elements.remove(at: index!)
    }
    
    var elements: [Int] {
        if _elements.isEmpty {
            return [0, 0]
        } else {
            let maximum = _elements.max()!
            let minimum = _elements.min()!
            return [maximum, minimum]
        }
    }
}

func solution19() {
    let t = 1//Int(readLine()!)!
    var str = ""
    for i in 1...t {
        readLine()
        var q = DoublePriorityQueue()
        readLine()!.split(separator: " ").forEach{ q.insert(Int(String($0))!) }
        let list = q.elements
        if i < t {
            str += "\(list[1]) \(list[0])\n"
        } else {
            str += "\(list[1]) \(list[0])"
        }
    }
    print(str)
}

func solution18() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let n = Int(readLine()!)!
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()
        print("\(list[0]) \(list[n-1])")
    }
}

func solution17() {
    while true {
        let n = Int(readLine()!)!
        if n == 0 {
            break
        }
        var sum = 0
        for i in 1...n {
            sum += (n+1-i)*((n+1-i))
        }
        print(sum)
    }
}

func solution16() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        if list[0] < list[1] {
            print("NO BRAINS")
        } else {
            print("MMM BRAINS")
        }
    }
}

func solution15() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let list =  readLine()!.split(separator: " ").map{ Int(String($0))! }
        print((list[0]+list[1]-1)/list[1])
    }
}

func solution14() {
    let c = readLine()!.split(separator: " ").filter{ Int(String($0))! > 0 }.count
    print(c)
}

func solution13() {
    let t = Int(readLine()!)!
    let a = [1,2,3,3,4,10]
    let b = [1,2,2,2,3,5,10]
    for i in 1...t {
        var al = readLine()!.split(separator: " ").map{ Int(String($0))! }
        var asum = 0
        for j in 0..<al.count {
            asum += a[j]*al[j]
        }
        var bl = readLine()!.split(separator: " ").map{ Int(String($0))! }
        var bsum = 0
        for j in 0..<bl.count {
            bsum += b[j]*bl[j]
        }
        if asum > bsum {
            print("Battle \(i): Good triumphs over Evil")
        } else if asum == bsum {
            print("Battle \(i): No victor on this battle field")
        } else {
            print("Battle \(i): Evil eradicates all trace of Good")
        }
    }
}

func solution12() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let n = Int(readLine()!)!
        var w = 0
        var sum = 1
        for i in 1...n {
            sum += i+1
            w += sum*i
        }
        print(w)
    }
}

// 17618번번 - 신기한 수 - 부분성공
func solution11() {
    let n = 10000000//Int(readLine()!)!
    if n < 10 {
        print(n)
    } else {
        var c = 9
        for i in 10...n {
            var sum = 0
            var j = i
            while j != 0 {
                sum += j%10
                j /= 10
            }
            if i%sum == 0 {
                c += 1
            }
        }
        print(c)
    }
}

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
