import Foundation

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

func solution17() {
    let n = Int(readLine()!)!
    var c = 0
    for i in 1...n {
        var v = i + String(i).map{ Int(String($0))! }.reduce(0,+)
        if v == n {
            c = i
            break
        }
    }
    print(c)
}

func solution16() {
    let list1 = readLine()!.split(separator: ":").map{ Int($0)! }
    let list2 = readLine()!.split(separator: ":").map{ Int($0)! }
    let h1 = list1[0]
    let m1 = list1[1]
    let s1 = list1[2]
    let h2 = list2[0]
    let m2 = list2[1]
    let s2 = list2[2]

    let minusM = s2-s1 < 0
    let ns = s2-s1+(minusM ? 60 : 0)
    let minusH = m2-m1-(minusM ? 1 : 0) < 0
    let nm = m2-m1-(minusM ? 1 : 0)+(minusH ? 60 : 0)
    let plusDay = h2-h1-(minusH ? 1 : 0) < 0
    let nh = h2-h1-(minusH ? 1 : 0)+(plusDay ? 24 : 0)
    
    if nh == 0 && nm == 0 && ns == 0 {
        print("24:00:00")
    } else {
        print("\(nh > 9 ? "\(nh)" : "0\(nh)"):\(nm > 9 ? "\(nm)" : "0\(nm)"):\(ns > 9 ? "\(ns)" : "0\(ns)")")
    }
}

func solution15() {
    func isPrime(num: Int) -> Bool {
        if(num<4) {
            return num == 1 ? false : true
        }
        for i in 2...Int(sqrt(Double(num))) {
            if(num % i == 0) { return false }
        }
        return true
    }

    let n = Int(readLine()!)!
    print(n)
    var str = ""
    for i in 1...n {
        var v = 0
        if i < n {
            v = i
        } else {
            for j in i...1000 {
                if isPrime(num: j) {
                    v = j
                    break
                }
            }
        }
        if str == "" {
            str += "\(v)"
        } else {
            str += " \(v)"
        }
    }
    print(str)
}

func solution14() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = list[0]
    let m = list[1]
    let nl = readLine()!.split(separator: " ").map{ Int($0)! }
    var al = [Int](repeating: 0, count: n+m)
    for i in 0...nl.count-1 {
        al[i] = nl[i]
    }
    for j in 1...n {
        let ml =  readLine()!.split(separator: " ").map{ Int($0)! }
        al[j-1] -= ml.reduce(0, +)
        for k in 0..<n+m {
            al[k] += ml[k]
        }
    }
    var str = ""
    for l in 0...al.count-1 {
        if str == "" {
            str += "\(al[l])"
        } else {
            str += " \(al[l])"
        }
    }
    print(str)
}

func solution13() {
    let n = Int(readLine()!)!
    var sum = 0
    var cs = 0
    if n <= 2 {
        print(0)
        print(3)
    } else {
        for i in 1...n-2 {
            cs += i
            sum += cs
        }
        print(sum)
        print(3)
    }
}

func solution12() {
    let n = Int(readLine()!)!
    let c = readLine()!.split(separator: " ").map{ Int($0)! }.filter{ $0%2==0 }.count
    if n/2 == c {
        print(1)
    } else {
        print(0)
    }
}

func solution11() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    var a = list[0]
    var b = list[1]
    var isB = true
    while true {
        if isB {
            isB = false
            b += a
            if b >= 5 {
                print("yt")
                break
            }
        } else {
            isB = true
            a += b
            if a >= 5 {
                print("yj")
                break
            }
        }
    }
}

func solution10() {
    let n = Int(readLine()!)!
    if n >= 229 {
        print(4)
    } else if n >= 218 {
        print(3)
    } else if n >= 206 {
        print(2)
    } else {
        print(1)
    }
}

func solution9() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = list[0]
    let t = list[1]
    var v = 0
    var isAdd = true
    for _ in 1...t {
        if isAdd {
            if v == n*2 {
                isAdd = false
                v -= 1
            } else {
                v += 1
            }
        } else {
            if v == 1 {
                isAdd = true
                v += 1
            } else {
                v -= 1
            }
        }
    }
    print(v)
}

func solution8() {
    let n = Int(readLine()!)!
    for _ in 1...n {
        let m = Int(readLine()!)!
        var list:[[Int]] = []
        for _ in 1...m {
            let l = readLine()!.split(separator: " ").map{ Int($0)! }
            list.append(l)
        }
        let l = readLine()!.split(separator: " ").map{ Int($0)! }
        let kv = l[0]
        let dv = l[1]
        let av = l[2]
        
        var sum = 0
        for l in list {
            let a = l[0]*kv-l[1]*dv+l[2]*av
            if a > 0 {
                sum += a
            }
        }
        print(sum)
    }
}

func solution7() {
    let n = Int(readLine()!)!
    let list = readLine()!.split(separator: " ").map{ Double($0)! }
    var cv:Double = 0
    for i in list {
        cv = (1-(1-cv/100)*(1-i/100))*100
        print(cv)
    }
}

func solution6() {
    let n = Int(readLine()!)!
    if n == 1 {
        readLine()
        print(0)
    } else {
        var minx = 10000
        var maxx = -10000
        var miny = 10000
        var maxy = -10000
        for _ in 1...n {
            let list = readLine()!.split(separator: " ").map{ Int($0)! }
            if list[0] > maxx {
                maxx = list[0]
            }
            if list[0] < minx {
                minx = list[0]
            }
            if list[1] > maxy {
                maxy = list[1]
            }
            if list[1] < miny {
                miny = list[1]
            }
        }
        let v = (maxx-minx)*(maxy-miny)
        print(v)
    }
}

func solution5() {
    let n = Int(readLine()!)!
    let a = n*(n-1)/2
    print(a)
    print(2)
}

func solution4() {
    readLine()
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let v = list.reduce(0, +)-list.max()!
    print(v)
}

func solution3() {
    while true {
        let list = readLine()!.split(separator: " ").map{ Double($0)! }
        if list[0] == 0 && list[1] == 0 && list[2] == 0 {
            break
        }
        let m = list[0]
        let a = list[1]
        let b = list[2]
        let v = Int(round((m/a-m/b)*60*60))
        
        let ha = v/3600
        let ma = (v%3600)/60 > 9 ? "\((v%3600)/60)" : "0\((v%3600)/60)"
        let sa = (v%3600)%60 > 9 ? "\((v%3600)%60)" : "0\((v%3600)%60)"
        print("\(ha):\(ma):\(sa)")
    }
}

func solution2() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let list = readLine()!.split(separator: " ").map{ Int($0)! }
        var y = list[0]
        var m = list[1]
        var d = 0
        if m == 1 {
            y -= 1
            m = 12
            d = 31
        } else {
            m -= 1
            if m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 {
                d = 31
            } else if m == 2 {
                if y%400 == 0 || (y%4 == 0 && y%100 != 0) {
                    d = 29
                } else {
                    d = 28
                }
            } else {
                d = 30
            }
        }
        print("\(y) \(m) \(d)")
    }
}

func solution1() {
    let n = Int(readLine()!)!
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    var a = 0 // 현재 연결된 핸드폰 번호
    var b = 0 // 직전 배터리 소모량
    var p = 0 // 배터리 양
    for i in list {
        if p >= 100 {
            p = 0
            a = 0
            b = 0
        }
        if i == a {
            p += b*2
            b *= 2
        } else {
            p += 2
            a = i
            b = 2
        }
    }
    if p >= 100 {
        p = 0
    }
    print(p)
}
