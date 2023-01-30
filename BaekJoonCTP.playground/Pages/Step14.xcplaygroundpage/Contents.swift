import Foundation

func s1568() {
    var n = Int(readLine()!)!
    var c = 0
    while n > 0 {
        var s = 0
        var i = 1
        while s <= n {
            s += i
            i += 1
        }
        c += i-2
        n -= s-i+1
    }
    print(c)
}

func s2355() {
    var l = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()
    let a = l[0]
    let b = l[1]
    if a*b < 0 {
        let c = (-a)*(-a+1)/2
        let d = b*(b+1)/2
        print(-c+d)
    } else if a > 0 {
        let c = (a)*(a-1)/2
        let d = b*(b+1)/2
        print(d-c)
    } else {
        let c = (-a)*(-a+1)/2
        let d = -b*(-b-1)/2
        print(d-c)
    }
}

func s10093() {
    var l = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()
    if l[1] - l[0] < 2 {
        print(0)
    } else {
        print(l[1]-l[0]-1)
        var str = ""
        for i in l[0]+1..<l[1] {
            str += "\(i) "
        }
        str.removeLast()
        print(str)
    }
}

func s1964() {
    let n = Int(readLine()!)!
    let s = 5+((n-1)*4%45678)+(((n-1)*n/2)*3%45678)
    print(s%45678)
}

func s2947() {
    var l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    while !(l[0]==1 && l[1]==2 && l[2]==3 && l[3]==4 && l[4]==5) {
        for i in 0...3 {
            if l[i] > l[i+1] {
                let n = l[i]
                l[i] = l[i+1]
                l[i+1] = n
                print("\(l[0]) \(l[1]) \(l[2]) \(l[3]) \(l[4])")
            }
        }
    }
}

func s10821() {
    var l = readLine()!.split(separator: ",")
    print(l.count)
}

func s5576() {
    var a:[Int] = []
    var b:[Int] = []
    for _ in 1...10 {
        a.append(Int(readLine()!)!)
    }
    for _ in 1...10 {
        b.append(Int(readLine()!)!)
    }
    a.sort(by: >)
    b.sort(by: >)
    var asum = 0
    var bsum = 0
    for i in 0...2 {
        asum += a[i]
        bsum += b[i]
    }
    print("\(asum) \(bsum)")
}

func s1225() {
    var l = readLine()!.split(separator: " ")
    let a = l[0].map { Int(String($0))! }.reduce(0, +)
    let b = l[1].map { Int(String($0))! }.reduce(0, +)
    print(a*b)
}

func s1919() {
    var arr1 = Array(readLine()!)
    var arr2 = Array(readLine()!)

    var dic1:[Character:Int] = [:]
    var dic2:[Character:Int] = [:]
    let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
    arr1.map {
        let n = dic1[$0] ?? 0
        dic1[$0] = n+1
    }
    arr2.map {
        let n = dic2[$0] ?? 0
        dic2[$0] = n+1
    }
    var c = 0
    alphabet.map {
        let c1 = dic1[$0] ?? 0
        let c2 = dic2[$0] ?? 0
        c += abs(c1-c2)
    }
    print(c)
}

func s10804() {
    var dic:[Int:Int] = [:]
    for i in 1...20 {
        dic[i] = i
    }
    for _ in 1...10 {
        var l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let s = l[0]
        let e = l[1]
        var list:[Int] = []
        for i in s...e {
            list.append(dic[i]!)
        }
        list.reverse()
        for i in s...e {
            dic[i] = list[i-s]
        }
    }
    var str = ""
    for i in 1...20 {
        str += "\(dic[i]!) "
    }
    str.removeLast()
    print(str)
}

func s24416() {
    let n = Int(readLine()!)!
    var l = [1,1]
    for i in 2...n-1 {
        l.append(l[i-1]+l[i-2])
    }
    print("\(l[n-1]) \(n-2)")
}

func s9506() {
    while true {
        let n = Int(readLine()!)!
        if n == -1 { break }
        var l:[Int] = []
        var s = 0
        for i in 1...n/2 {
            if n%i == 0 {
                l.append(i)
                s += i
            }
        }
        if s == n {
            var str = "\(n) = "
            for i in 0...l.count-1 {
                if i == l.count-1 {
                    str.write("\(l[i])")
                } else {
                    str.write("\(l[i]) + ")
                }
            }
            print(str)

        } else {
            print("\(n) is NOT perfect.")
        }
    }
}

func s10448() {
    let t = Int(readLine()!)!
    var l:[Int] = [1]
    for _ in 1...t {
        let n = Int(readLine()!)!
        var isP = false
        for i in 0...n {
            for j in 0...i {
                for k in 0...j {
                    if i == l.count {
                        l.append(l[l.count-1]+i+1)
                    }
                    if l[i]+l[j]+l[k] == n {
                        isP = true
                        break
                    } else if l[i]+l[j]+l[k] > n {
                        break
                    }
                }
                if isP {
                    break
                }
            }
            if isP {
                break
            }
        }
        
        if isP {
            print(1)
        } else {
            print(0)
        }
    }
}

func s1931() {
    let n = Int(readLine()!)!
    var list:[[Int]] = []
    for _ in 1...n {
        var l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        list.append(l)
    }
    var c = 0
    var e = 0
    list.sorted {
        if $0[1] == $1[1] {
            return $0[0] < $1[1]
        } else {
            return $0[1] < $1[1]
        }
    }.map {
        if $0[0] >= e {
            e = $0[1]
            c += 1
        }
    }

    print(c)
}

func s1012() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        var l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let k = l[2]
        var list:[[Int]] = Array.init(repeating: [0], count: k)
        for i in 0...k-1 {
            var l = readLine()!.split(separator: " ").map{ Int(String($0))! }
            list[i] = ([l[0], l[1]])
        }
        var dic:[[Int]:Bool] = [:]
        let dir = [[0,1],[0,-1],[1,0],[-1,0]]
        var c = 0
        for i in 0...k-1 {
            if dic[[list[i][0], list[i][1]]] == nil {
                dic[[list[i][0], list[i][1]]] = true
                c += 1
                setD(i)
            }
        }
        
        func setD(_ i:Int) {
            for d in dir {
                let x = list[i][0]+d[0]
                let y = list[i][1]+d[1]
                let index = list.firstIndex(of: [x, y]) ?? -1
                if index > -1 && dic[[list[index][0], list[index][1]]] == nil {
                    dic[[list[index][0], list[index][1]]] = true
                    setD(index)
                }
            }
        }
        
        print(c)
    }
}
