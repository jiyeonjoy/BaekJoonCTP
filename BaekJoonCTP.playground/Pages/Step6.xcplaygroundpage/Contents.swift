import Foundation

func solution50() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let c = Int(readLine()!)!
        var l = 0
        while l+l*l <= c {
            l += 1
        }
        print(l-1)
    }
}

func solution49() {
    let n = Int(readLine()!)!
    for _ in 1...n {
        let sum = readLine()!.split(separator: " ").map{ Int(String($0))! }.reduce(0, +)
        print(sum)
    }
}

func solution48() {
    readLine()
    let list1 = readLine()!.split(separator: " ").map{ Int64(String($0))! }
    let list2 = readLine()!.split(separator: " ").map{ Int64(String($0))! }
    print(list1.max()!+list2.max()!)
}

func solution47() {
    let n = Int(readLine()!)!
    for _ in 1...n {
        let list = Array(readLine()!)
        if list[(list.count-1)/2] == list[(list.count)/2] {
            print("Do-it")
        } else {
            print("Do-it-Not")
        }
    }
}

func solution46() {
    var c = Int(readLine()!)!
    var i = 1
    if c == 1 {
        print(1)
    } else {
        while true {
            var a = c
            if a%2==0 {
                a /= 2
            } else {
                a = a*3+1
            }
            i += 1
            if a == 1 {
                print(i)
                break
            } else {
                c = a
            }
        }
    }
}

func solution45() {
    var a = Int(readLine()!)!
    while true {
        let c = readLine()!
        if c == "=" {
            break
        }
        let num = Int(readLine()!)!
        if c == "-" {
            a -= num
        } else if c == "+" {
            a += num
        } else if c == "*" {
            a *= num
        } else if c == "/" {
            a /= num
        }
    }
    print(a)
}

func solution44() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        var list = readLine()!.split(separator: " ").map{ Double(String($0))! }
        var sum = 0
        let n = list[0]
        let m = list[1]
        if n < 3 {
            print("0")
        } else {
            for b in 2..<Int(n) {
                for a in 1..<b {
                    if (pow(Double(a), 2)+pow(Double(b), 2)+m)/Double(a*b) == Double(Int((pow(Double(a), 2)+pow(Double(b), 2)+m)/Double(a*b))) {
                        sum += 1
                    }
                }
            }
            print(sum)
        }
    }
}

func solution43() {
    while true {
        var list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        if list[0] == 0 && list[1] == 0 {
            break
        }
        let a = list[0]/list[1]
        let b = list[0]%list[1]
        let c = list[1]
        print("\(a) \(b) / \(c)")
    }
}

func solution42() {
    while true {
        var n = readLine()!
        if n == "0" { break }
        var sum = 0
        while true {
            if n.count == 1 {
                sum = Int(n)!
                break
            } else {
                sum = 0
                n.map{ sum += Int(String($0))! }
                n = String(sum)
            }
        }
        print(sum)
    }
}

func solution41() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = list[0]
    let b = list[1]
    let c = list[2]
    if a+b == c {
        print("\(a)+\(b)=\(c)")
    } else if a-b == c {
        print("\(a)-\(b)=\(c)")
    } else if a*b == c {
        print("\(a)*\(b)=\(c)")
    } else if a/b == c {
        print("\(a)/\(b)=\(c)")
    } else if a==b+c {
        print("\(a)=\(b)+\(c)")
    }  else if a==b-c {
        print("\(a)=\(b)-\(c)")
    }  else if a==b/c {
        print("\(a)=\(b)/\(c)")
    }  else if a==b*c {
        print("\(a)=\(b)*\(c)")
    }
}

func solution40() {
    while true {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        if list[0]==0 && list[1]==0 && list[2]==0 {
            break
        }
        if list[1]-list[0] == list[2]-list[1] {
            print("AP \(list[2]+list[2]-list[1])")
        } else {
            print("GP \(list[2]*(list[2]/list[1]))")
        }
    }
}

func solution39() {
    for _ in 1...3 {
        let n = Int(readLine()!)!
        var saveList:[Int64] = []
        var isP = true
        for _ in 1...n {
            var num = Int64(readLine()!)!
            if num > 0 {
                if saveList.isEmpty {
                    saveList.append(num)
                    isP = true
                } else {
                    if isP {
                        saveList.append(num)
                    } else {
                        while true {
                            var a = saveList.last!
                            saveList.removeLast()
                            if -a < num {
                                num += a
                                if saveList.isEmpty {
                                    saveList.append(num)
                                    isP = true
                                    break
                                }
                            } else if -a > num {
                                saveList.append(a+num)
                                break
                            } else {
                                break
                            }
                        }
                    }
                }
            } else if num < 0 {
                if saveList.isEmpty {
                    saveList.append(num)
                    isP = false
                } else {
                    if !isP {
                        saveList.append(num)
                    } else {
                        while true {
                            var a = saveList.last!
                            saveList.removeLast()
                            if a < -num {
                                num += a
                                if saveList.isEmpty {
                                    saveList.append(num)
                                    isP = false
                                    break
                                }
                            } else if a > -num {
                                saveList.append(a+num)
                                break
                            } else {
                                break
                            }
                        }
                    }
                }
            }
        }
        if saveList.isEmpty {
            print("0")
        } else if isP {
            print("+")
        } else {
            print("-")
        }
    }
}

func solution38() {
    var maxp = 0
    var cp = 0
    while true {
        guard let line = readLine() else { break }
        let list = line.split(separator: " ").map{ Int($0)! }
        cp -= list[0]
        cp += list[1]
        maxp = max(maxp, cp)
    }
    print(maxp)
}

func solution37() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = list[0]
    let m = list[1]
    var k = list[2]

    var maxtc = min(n/2, m)
    k -= n-(maxtc*2)
    k -= m-maxtc
    if k < 1 {
        print(maxtc)
    } else {
        print(maxtc-(k+2)/3)
    }
}

func solution36() {
    let n = Int(readLine()!)!
    var sum = 0
    for _ in 1...n {
        let num = Int(readLine()!)!
        sum += num-1
    }
    print(sum)
}

func solution35() {
    let list = readLine()!.split(separator: " ")
    let a = Int(list[0] + list[1])!
    let b = Int(list[2] + list[3])!
    print(a+b)
}

func solution34() {
    let n = Int(readLine()!)!
    if n == 1 {
        print("*")
    } else {
        for i in 1...n {
            let b = i > n-1 ? "" : String(repeating: " ", count: n-1-i)
            if i == n {
                let s = String(repeating: "*", count: (i-1)*2+1)
                print("\(s)")
            } else if i == 1 {
                let s = String(repeating: " *", count: 1)
                print("\(b)\(s)")
            } else {
                let s = String(repeating: " *", count: 1)
                let b2 = i == 1 ? "" : String(repeating: " ", count: (i-2)*2+1)
                print("\(b)\(s)\(b2)*")
            }
        }
    }
}

func solution33() {
    var sum = Int(readLine()!)!
    for _ in 1...9 {
        sum -= Int(readLine()!)!
    }
    print(sum)
}

func solution32() {
    var i = 0
    var maxi = 0
    var maxv = 0
    while true {
        guard let line = readLine() else { break }
        let sum = line.split(separator: " ").map{ Int($0)! }.reduce(0, +)
        i += 1
        if sum > maxv {
            maxv = sum
            maxi = i
        }
    }
    print("\(maxi) \(maxv)")
}

func solution31() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let l = (1...list[0]).filter {
        list[0]%$0 == 0
    }
    if list[1] > l.count {
        print("0")
    } else {
        print(l[list[1]-1])
    }
}

func solution30() {
    let n = Int(readLine()!)!
    var c = 0
    for i in 1...n {
        let v = readLine()!
        if v == "1" {
            c += 1
        }
    }
    if c < n-c {
        print("Junhee is not cute!")
    } else {
        print("Junhee is cute!")
    }
}

func solution29() {
    let n = Int(readLine()!)!
    if n == 1 {
        print("*")
    } else {
        for i in 1...n {
            let b = i > n-1 ? "" : String(repeating: " ", count: n-1-i)
            if i == n {
                let s = "*"+String(repeating: " *", count: i-1)
                print("\(b)\(s)")
            } else {
                let s = String(repeating: " *", count: i)
                print("\(b)\(s)")
            }
        }
    }
}

func solution28() {
    var list:[Int] = []
    var minv = 0
    while true {
        guard let line = readLine() else { break }
        let n = Int(line)!
        if n%2 == 1 {
            list.append(n)
            if minv == 0 {
                minv = n
            } else {
                minv = min(minv, n)
            }
        }
    }
    if minv == 0 {
        print(-1)
    } else {
        print(list.reduce(0, +))
        print(minv)
    }
}

func solution27() {
    let n = Int(readLine()!)!
    if n == 1 {
        print("*")
    } else {
        for i in 1...n {
            let b = i == n ? "" : String(repeating: " ", count: n-i)
            let s = String(repeating: "*", count: i)
            print("\(b)\(s)")
        }
        for i in 2...n {
            let b = String(repeating: " ", count: i-1)
            let s = String(repeating: "*", count: n-i+1)
            print("\(b)\(s)")
        }
    }
}

func solution26() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let sum = list[0]*(list[1]-1)
    print(sum+1)
}

func solution25() {
    var maxv = 0
    var c = 0
    while true {
        guard let line = readLine() else { break }
        let list = line.split(separator: " ").map{ Int($0)! }
        c = c + list[1] - list[0]
        maxv = max(c, maxv)
    }
    print(maxv)
}

func solution24() {
    while true {
        let line = readLine()!
        if line == "0 0" {
            break
        }
        let list = line.split(separator: " ").map{ Int($0)! }
        if list[1]%list[0] == 0 {
            print("factor")
        } else if list[0]%list[1] == 0 {
            print("multiple")
        } else {
            print("neither")
        }
    }
}

func solution23() {
    while true {
        guard let line = readLine() else { break }
        let a = line.split(separator: " ").filter{ $0 == "0" }.count
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
