import Foundation

func solution50() {
    let n = Int(readLine()!)!
    let arr = Array(readLine()!)
    var sum = 0
    for i in 0..<arr.count/2 {
        if arr[i] != arr[arr.count-1-i] {
            sum += 1
        }
    }
    print(sum)
}

// 4706
func solution49() {
    while true {
        let list = readLine()!.split(separator: " ").map{ Double(String($0))! }
        if list[0] == 0 && list[1] == 0 {
            break
        }
        let a = list[0]
        let b = list[1]
        let v = sqrt((1-pow(b/a,2)))
        print(String(format: "%.3f", v))
        break
    }
}

func solution48() {
    readLine()!
    let arr = Array(readLine()!)
    var a = 0
    var strA = ""
    for i in 0...arr.count-1 {
        if a >= arr.count-i {
            break
        }
        var t = 0
        var s = 0
        var str = ""
        for j in i...arr.count-1 {
            if arr[j] == "t" {
                t += 1
                str += "t"
            } else {
                s += 1
                str += "s"
            }
        }
        if s == t && a < s+t {
            a = s+t
            strA = str
        }
    }
    print(strA)
}

func solution47() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let m = list[0]
    let seed = list[1]
    let x = list[2]
    let y = list[3]
    var a = 0
    var c = 0
    var isDone = false
    for i in 0..<m {
        for j in 0..<m {
            if (i*seed+j)%m == x && (i*x+j)%m == y {
                isDone = true
                a = i
                c = j
                break
            }
        }
        if isDone {
            break
        }
    }
    print("\(a) \(c)")
}

func solution46() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let n = list[0]
    let m = list[1]
    let k = list[2]
    if k == 3 || n == 1 {
        print(m)
    } else if k > 3 {
        if (m+(k-3)%n)%n != 0 {
            print((m+(k-3)%n)%n)
        } else {
            print(n)
        }
    } else {
        let v = m-(3-k)
        if v == 0 {
            print(n)
        } else if v > 0 {
            print(v)
        } else {
          print(n+v%n)
        }
    }
}

func solution45() {
    let t = Int(readLine()!)!
    for i in 1...t {
        let n = Int(readLine()!)!
        readLine()
        print("Material Management \(i)")
        for _ in 1...n {
            readLine()
        }
        print("Classification ---- End!")
    }
}

func solution44() {
    let n = Int(readLine()!)!
    var minx = 40
    var maxx = 0
    var miny = 40
    var maxy = 0
    for _ in 1...n {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        if list[0] < minx {
            minx = list[0]
        }
        if list[0] > maxx {
            maxx = list[0]
        }
        if list[1] < miny {
            miny = list[1]
        }
        if list[1] > maxy {
            maxy = list[1]
        }
    }
    let v = (maxx-minx)*2+(maxy-miny)*2
    print(v)
}

func solution43() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    print(list[0]-list[1]-list[2])
    var arr = Array((1...list[0]))
    let list1 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let list2 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    for i in list1 {
        let index = arr.firstIndex(of: i)!
        arr.remove(at: index)
    }
    for i in list2 {
        let index = arr.firstIndex(of: i)!
        arr.remove(at: index)
    }
    var str = ""
    for i in arr {
        if str == "" {
            str += "\(i)"
        } else {
            str += " \(i)"
        }
    }
    print(str)
}

func solution42() {
    let n = Int(readLine()!)!
    var list:[String] = []
    for _ in 1...n {
        let str = readLine()!
        if !list.contains(str) {
            list.append(str)
        }
    }
    print(list.count)
}

func solution41() {
    while true {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        if list[3] == 0 && list[2] == 0 && list[1] == 0 && list[0] == 0 {
            break
        }
        var a = list[0]
        var b = list[1]
        var c = list[2]
        var d = list[3]
        if a == 0 {
            a = d/(b*c)
        } else if b == 0 {
            b = d/(a*c)
        } else if c == 0 {
            c = d/(a*b)
        } else {
            d = a*b*c
        }
        print("\(a) \(b) \(c) \(d)")
    }
}

func solution40() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let s = list[0]
    let e = list[1]
    let n = list[2]
    var a = 0
    for i in s...e {
        a += String(i).filter{ Int(String($0))! == n }.count
    }
    print(a)
}

func solution39() {
    let n = Int(readLine()!)!
    for _ in 1...n {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let i = list[0]
        let d = list[1]
        var v = d*(d+1)/2+d
        print("\(i) \(v)")
    }
}

func solution38() {
    while true {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        if list[0] == 0 && list[1] == 0 {
            break
        }
        let a = list[0]*30+list[1]*40
        let b = list[0]*35+list[1]*30
        let c = list[0]*40+list[1]*20
        print(min(a,b,c))
    }
}

func solution37() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let list = readLine()!.split(separator: " ").map{ Double(String($0))! }
        let p = list[0]
        let c = list[1]
        let o = (100*p)/(100+c)
        print(o)
    }
}

func solution36() {
    let n = Int(readLine()!)!
    var arr = [Int](repeating: 0, count: n)
    for i in 1...n {
        let a = Int(readLine()!)!
        arr[a-1] = i
    }
    for s in arr {
        print(s)
    }
}

func solution35() {
    let n = Int(readLine()!)!
    var a = 0
    var b = 0
    var c = 0
    for _ in 1...n {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        a += list[0]
        b += list[1]
        c += list[2]
        if a < 30 || b < 30 || c < 30 {
            print("NO")
        } else {
            let minv = min(a,b,c)
            print(minv)
            a -= minv
            b -= minv
            c -= minv
        }
    }
}

func solution34() {
    readLine()
    let list = Array(readLine()!)
    for i in 1...list.count-1 {
        if list[i] == "J" {
            print(list[i-1])
        }
    }
}

func solution33() {
    readLine()
    let list = Array(readLine()!)
    var a = 0
    var coffee = 0
    for c in list {
        if c == "1" {
            a += 1
            coffee = 2
        } else {
            if coffee > 0 {
                coffee -= 1
                a += 1
            }
        }
    }
    print(a)
}

func solution32() {
    let n = Int(readLine()!)!
    var sum = n
    for i in 1...n/2 {
        if n%i == 0 {
            sum += i
        }
    }
    print(sum)
}

func solution31() {
    let n = Int(readLine()!)!
    var list:[String] = []
    for _ in 1...n {
        list.append(readLine()!)
    }
    var c = 0
    for i in 0..<n {
        let str = readLine()!
        if list[i] == str {
            c += 1
        }
    }
    print(c)
}

func solution30() {
    let n = Int(readLine()!)!
    for _ in 1...n {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        var a = list[2]+list[5]+abs(list[0]-list[3])+abs(list[1]-list[4])
        print(a)
    }
}

func solution29() {
    let n = Int(readLine()!)!
    print(n*n*n)
    print(3)
}

func solution28() {
    let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".map{ String($0) }
    let str = readLine()!
    let i = alphabet.firstIndex(of: str)!
    var v = 84
    if i < 8 {
        v += 8-i
    } else if i > 8 {
        v += i-8
    }
    print(v)
}

func solution27() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let list = readLine()!.split(separator: " ").map{ Double(String($0))! }
        var a = 0
        let d = list[1]
        for _ in 1...Int(list[0]) {
            let l = readLine()!.split(separator: " ").map{ Double(String($0))! }
            let v = l[0]
            let f = l[1]
            let c = l[2]
            if (d/v)*c <= f {
                a += 1
            }
        }
        print(a)
    }
}

func solution26() {
    while true {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        if list[0] == 0 && list[1] == 0 {
            break
        }
        let list1 = readLine()!.split(separator: " ").map{ Int(String($0))! }
        var sum = 0
        for p in list1 {
            sum += min(p, list[1]/list[0])
        }
        print(sum)
    }
}

func solution25() {
    let n = Int(readLine()!)!
    var sum:Double = 0
    for _ in 1...n {
        let list = readLine()!.split(separator: " ").map{ Double(String($0))! }
        sum += list[0]*list[1]
    }
    print(sum)
}

func solution24() {
    let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".map{ String($0) }
    let n = Int(readLine()!)!
    for i in 1...n {
        let list1 = readLine()!.split(separator: " ")
        let index = alphabet.firstIndex(of: String(list1[1]))!
        for j in 1...Int(list1[0])! {
            print(String(repeating: alphabet[(index+j-1)%alphabet.count], count: j))
        }
        if i < n {
            print("")
        }
    }
}

func solution23() {
    let n = Int(readLine()!)!
    print(n*n)
    print(2)
}

func solution22() {
    let list1 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let list2 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var isDone = false
    var s = list1[1]
    while true {
        for i in 1...list1[0] {
            if list2[i-1] < s {
                isDone = true
                print(i)
                break
            }
            s += 1
        }
        if isDone {
            break
        }
    }
}

func solution21() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let list = readLine()!.split(separator: " ").map{ Double(String($0))! }
        let h = list[0]/100
        let w = list[1]
        let bmi = w/(h*h)
        if h >= 2.04 {
            print(4)
        } else if h < 1.401 {
            print(6)
        } else if h < 1.46 {
            print(5)
        } else if h < 1.59 || (h < 1.61 && (bmi < 16 || bmi >= 35)) || (bmi < 16 || bmi >= 35) {
            print(4)
        } else if h < 1.61 || (bmi < 18.5 || bmi >= 30) {
            print(3)
        } else if bmi >= 20 && bmi < 25 {
            print(1)
        } else {
            print(2)
        }
    }
}

func solution20() {
    let n = Int(readLine()!)!
    let s = readLine()!.filter{ $0 == "s" }.count
    let b = n-s
    if s == b {
        print("bigdata? security!")
    } else if s > b {
        print("security!")
    } else {
        print("bigdata?")
    }
}

func solution19() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let k = list[0]
    let n = list[1]
    if n == 1 {
        print(-1)
    } else {
        if k*n%(n-1) == 0 {
            print(k*n/(n-1))
        } else {
            print(k*n/(n-1)+1)
        }
    }
}

func solution18() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let sum = (-2)*list[0]
    let gob = list[1]
    if gob > 0 {
        if sum > 0 {
            for i in 1...gob {
                if gob%i == 0 {
                    if gob/i+i == sum {
                        if gob/i > i {
                            print("\(i) \(gob/i)")
                            break
                        } else {
                            if i == gob/i {
                                print(i)
                                break
                            }
                            print("\(gob/i) \(i)")
                            break
                        }
                    }
                }
            }
        } else {
            for i in 1...gob {
                if gob%i == 0 {
                    if gob/i+i == -sum {
                        if gob/i < i {
                            print("\(-i) \(-gob/i)")
                            break
                        } else {
                            if i == gob/i {
                                print(-i)
                                break
                            }
                            print("\(-gob/i) \(-i)")
                            break
                        }
                    }
                }
            }
        }
    } else if gob == 0 {
        if sum > 0 {
            print("0 \(sum)")
        } else if sum == 0 {
            print(0)
        } else {
            print("\(sum) 0")
        }
    } else {
        if sum > 0 {
            for i in 1...(-gob) {
                if gob%i == 0 {
                    if gob/i+i == sum {
                        print("\(-i) \(-gob/i)")
                        break
                    }
                }
            }
        } else if sum == 0 {
            for i in 1...(-gob) {
                if gob%i == 0 {
                    print("\(i)")
                    break
                }
            }
        } else {
            for i in 1...(-gob) {
                if gob%i == 0 {
                    if gob/i+i == sum {
                        print("\(gob/i) \(i)")
                        break
                    }
                }
            }
        }
    }
}

func solution17() {
    let n = Int(readLine()!)!
    let arr = Array(readLine()!)
    var str = ""
    for i in 1...arr.count {
        if i%n == 1 {
            str += String(arr[i-1])
        }
    }
    print(str)
}

func solution16() {
    let sl:[Double] = readLine()!.split(separator: " ").map{ Double(String($0))! }
    let nl:[Double] = readLine()!.split(separator: " ").map{ Double(String($0))! }
    let ul:[Double] = readLine()!.split(separator: " ").map{ Double(String($0))! }
    let s = sl[1]*10/(sl[0] >= 500 ? sl[0]*10-500 : sl[0]*10)
    let n = nl[1]*10/(nl[0] >= 500 ? nl[0]*10-500 : nl[0]*10)
    let u = ul[1]*10/(ul[0] >= 500 ? ul[0]*10-500 : ul[0]*10)
    if s > n && s > u {
        print("S")
    } else if n > u {
        print("N")
    } else {
        print("U")
    }
}

func solution15() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let n = Int(readLine()!)!
    var v = list[0]*60*60+list[1]*60+list[2]
    for _ in 1...n {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        if l[0] == 1 {
            v += l[1]%86400
            v = v%86400
        } else if l[0] == 2 {
            v -= l[1]%86400
            if v < 0 {
                v += 86400
            }
        } else {
            if v < 0 {
                v += 86400
            }
            let h = v/3600
            let m = (v%3600)/60
            let s = (v%3600)%60
            print("\(h) \(m) \(s)")
        }
    }
}

func solution14() {
    let n = Int(readLine()!)!
    let s = Int(readLine()!)!
    if n >= 6 {
        print("Love is open door")
    } else {
        for i in 2...n {
            if i%2 == 0 {
                if s == 0 {
                    print(1)
                } else {
                    print(0)
                }
            } else {
                if s == 0 {
                    print(0)
                } else {
                    print(1)
                }
            }
        }
    }
}

func solution13() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var m = 5000
    for i in list {
        if i == 1 {
            m -= 500
        } else if i == 2 {
            m -= 800
        } else {
            m -= 1000
        }
    }
    print(m)
}

func solution12() {
    let n = Int(readLine()!)!
    if n < 4 {
        print(0)
    } else {
        let v = (n-1)*(n-2)*(n-3)/6
        print(v)
    }
}

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
