import Foundation

func s8574() {
    let l = readLine()!.split(separator: " ").map{ Double(String($0))! }
    let n = l[0]
    let k = l[1]
    let x = l[2]
    let y = l[3]
    var c = 0
    for _ in 1...Int(n) {
        let l = readLine()!.split(separator: " ").map{ Double(String($0))! }
        let x1 = l[0]
        let y1 = l[1]
        let v = sqrt(pow(abs(x-x1), 2)+pow(abs(y-y1), 2))
        if v > k {
            c += 1
        }
    }
    print(c)
}

func s4459() {
    let t = Int(readLine()!)!
    var dic:[Int:String] = [:]
    for i in 1...t {
        dic[i] = readLine()!
    }
    let n = Int(readLine()!)!
    for _ in 1...n {
        let a = Int(readLine()!)!
        let str:String = dic[a] ?? "No such rule"
        print("Rule \(a): \(str)")
    }
}

func s11161() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let m = Int(readLine()!)!
        var c = 0
        var s = 0
        for _ in 1...m {
            let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
            let a = l[0]
            let b = l[1]
            if a+s < b {
                c += b-(a+s)
                s = 0
            } else {
                s += a-b
            }
        }
        print(c)
    }
}

func s10902() {
    let n = Int(readLine()!)!
    var list:[[Int]] = []
    var v1 = -1
    var v2 = -1
    var f = -1
    for i in 1...n {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        list.append(l)
        if l[1] == 1 && v1 == -1 && v2 == -1 {
            v1 = l[0]
            f = i
        } else if l[1] == 4 && v2 == -1  {
            v2 = l[0]
            f = i
        }
    }
    var p = 0
    if v2 > -1 {
        p += v2+(f-1)*20
    } else if v1 > -1 {
        p += v1+(f-1)*20
    }
    print(p)
}

func s4388() {
    while true {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        var a = list[0]
        var b = list[1]
        if a == 0 && b == 0 { break }
        var onePlus = false
        var c = 0
        while (a > 0 && b > 0) || onePlus {
            if a%10+b%10+(onePlus ? 1 : 0) > 9 {
                onePlus = true
                c += 1
            } else {
                onePlus = false
            }
            a /= 10
            b /= 10
        }
        print(c)
    }
}

func s24333() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let l1 = list[0]
    let r1 = list[1]
    let l2 = list[2]
    let r2 = list[3]
    let k = list[4]
    var c = 0
    for i in l1...r1 {
        if i >= l2 {
            if i > r2 {
                break
            } else {
                if i != k {
                    c += 1
                }
            }
        }
    }
    print(c)
}

func s24349() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var n = list[0]-1
    let a = list[1]
    let b = list[2]
    let c = list[3]
    var v = 0
    let v1 = min(a,b)
    let v2 = min(a,b,c)
    var isF = true
    while n > 0 {
        if isF {
            isF = false
            v += v1
        } else {
            v += v2
        }
        n -= 1
    }
    print("\(v/100) \(v%100)")
}

func s24366() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let n = list[0]
    let k = list[1]
    let a = k-1
    let b = n-k
    let c = b%a
    print(a-c)
}

func s24569() {
    let n = Int(readLine()!)!
    var c = 0
    for _ in 1...n {
        let a = Int(readLine()!)!
        let b = Int(readLine()!)!
        let v = a*5-b*3
        if v > 40 {
            c += 1
        }
    }
    if c == n {
        print("\(c)+")
    } else {
        print(c)
    }
}

func s24603() {
    let list = readLine()!.split(separator: " ").map{ Double(String($0))! }
    let n = list[0]
    let x = list[1]
    let y = list[2]
    for _ in 1...Int(n) {
        let a = Double(readLine()!)!
        print(Int(a/x*y))
    }
}

func s24803() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let g = list[0]
    let s = list[1]
    let c = list[2]

    var v = g*3+s*2+c
    var r = ""
    if v >= 8 {
        r += "Province or "
    } else if v >= 5 {
        r += "Duchy or "
    } else if v >= 2 {
        r += "Estate or "
    }
    if v >= 6 {
        r += "Gold"
    } else if v >= 3 {
        r += "Silver"
    } else {
        r += "Copper"
    }
    print(r)
}

func s24807() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let b = list[0]
    let d = list[1]
    let c = list[2]
    let l = list[3]

    var isImp = true
    for i in 0...l/b {
        for j in 0...l/d {
            for k in 0...l/c {
                if i*b+j*d+k*c == l {
                    print("\(i) \(j) \(k)")
                    isImp = false
                } else if i*b+j*d+k*c > l {
                    break
                }
            }
        }
    }
    if isImp {
        print("impossible")
    }
}

func s24830() {
    let t = Int(readLine()!)!
    var e = 1
    for _ in 1...t {
        let list = readLine()!.split(separator: " ").map{ String($0) }
        let y = list[1]
        let a = Int(list[0])!
        let b = Int(list[2])!
        var v = 0
        if y == "+" {
            v = a+b-e
        } else if y == "-" {
            v = (a-b)*e
        } else if y == "*" {
            v = Int(pow(Double(a*b), 2))
        } else {
            v = a%2==0 ? a/2 : (a+1)/2
        }
        print(v)
        e = v
    }
}

func s24867() {
    let k = Int(readLine()!)!
    let list1 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = list1[0]
    let x = list1[1]
    let list2 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let b = list2[0]
    let y = list2[1]

    if k <= a && k <= b {
        print(0)
    } else if k > a && k <= b {
        print((k-a)*x)
    } else if k > b && k <= a {
        print((k-b)*y)
    } else {
        var v1 = (k-a)*x + max(0, (k-a-b)*y)
        var v2 = (k-b)*y + max(0, (k-a-b)*x)
        print(max(v1, v2))
    }
}

func s25084() {
    let t = Int(readLine()!)!
    for i in 1...t {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        var r = list[0]
        let a = list[1]
        let b = list[2]
        var sum:Double = 3.14159265359*pow(Double(r), 2)
        while r > 0 {
            r *= a
            sum += 3.14159265359*pow(Double(r), 2)
            r /= b
            sum += 3.14159265359*pow(Double(r), 2)
        }
        print("Case #\(i): \(String(format: "%.6f", sum))")
    }
}

func s25278() {
    let t = Int(readLine()!)!
    var te = -30
    var ox = 0
    var oc = 0
    for _ in 1...t {
        let list = readLine()!.split(separator: " ").map{ String($0) }
        let n = Int(list[1])!
        if list[0] == "temperature" {
            te += n
        } else if list[0] == "oxygen" {
            ox += n
        } else {
            oc += n
        }
    }
    if oc >= 9 && ox >= 14 && te >= 8 {
        print("liveable")
    } else {
        print("not liveable")
    }
}

func s25786() {
    var a = Int(readLine()!)!
    var b = Int(readLine()!)!
    var v = ""
    if a == 0 && b == 0 {
        v = "0"
    } else {
        while a > 0 || b > 0 {
            let c = a%10
            let d = b%10
            if (c >= 7 && d >= 7) || (c <= 2 && d <= 2) {
                v = "0"+v
            } else {
                v = "9"+v
            }
            a /= 10
            b /= 10
        }
    }
    print(v)

}

func s25813() {
    let str = Array(readLine()!)
    let u:Int = str.firstIndex(of: "U")!
    let f:Int = str.lastIndex(of: "F")!
    var v = ""
    if u > 0 {
        v += String(repeating: "-", count: u)
    }
    v += "U"
    v += String(repeating: "C", count: f-u-1)
    v += "F"
    if f < str.count-1 {
        v += String(repeating: "-", count: str.count-1-f)
    }

    print(v)
}

func s25985() {
    let list = readLine()!.split(separator: " ").map{ Double(String($0))! }
    let x = list[0]
    let y = list[1]
    let a = 100-x
    let b = 100-y
    print((b*x)/(a*y))
}

func s26198() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let str = readLine()!
        var sum = 0
        str.map{
            if $0 == "I" {
                sum += 1
            } else if $0 == "V" {
                sum += 5
            } else if $0 == "X" {
                sum += 10
            } else if $0 == "L" {
                sum += 50
            } else if $0 == "C" {
                sum += 100
            } else if $0 == "D" {
                sum += 500
            } else if $0 == "M" {
                sum += 1000
            }
        }
        print(sum)
    }
}

func s26314() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let name = readLine()!
        print(name)
        let a = name.count
        let b = name.filter{ "aeiou".contains($0) }.count
        if a-b < b {
            print(1)
        } else {
            print(0)
        }
    }
}

func s26432() {
    let t = Int(readLine()!)!
    for i in 1...t {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let m = list[0]
        let n = list[1]
        let p = list[2]
        var john:[Int] = []
        var dic:[Int:Int] = [:]
        for j in 1...m {
            let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
            if j == p {
                john = l
            }
            for k in 0..<n {
                let a:Int = dic[k] ?? 0
                if a < l[k] {
                    dic[k] = l[k]
                }
            }
        }
        var v = 0
        for k in 0..<n {
            var a:Int = dic[k] ?? 0
            if john[k] < a {
                v += a-john[k]
            }
        }
        print("Case #\(i): \(v)")
    }
}
