import Foundation

func s1526() {
    let n = Int(readLine()!)!
    for i in 0...n {
        let s = String(n-i)
        if s.filter({ $0 != "4" && $0 != "7" }).count == 0 {
            print(s)
            break
        }
    }
}

func s14696() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        var al = readLine()!.split(separator: " ").map{ Int(String($0))! }
        al.removeFirst()
        al.sort(by: >)
        var bl = readLine()!.split(separator: " ").map{ Int(String($0))! }
        bl.removeFirst()
        bl.sort(by: >)
        var win = ""
        for i in 0...min(al.count, bl.count)-1 {
            if al[i] > bl[i] {
                win = "A"
                break
            } else if al[i] < bl[i] {
                win = "B"
                break
            }
        }
        if win == "" {
            if al.count > bl.count {
                print("A")
            } else if al.count < bl.count {
                print("B")
            } else {
                print("D")
            }
        } else {
            print(win)
        }
    }
}

func s5586() {
    let arr = Array(readLine()!)
    var joi = 0
    var ioi = 0
    if arr.count > 2 {
        for i in 0...arr.count-3 {
            if arr[i] == "J" {
                if arr[i+1] == "O" && arr[i+2] == "I" {
                    joi += 1
                }
            } else if arr[i] == "I" {
                if arr[i+1] == "O" && arr[i+2] == "I" {
                    ioi += 1
                }
            }
        }
    }
    print(joi)
    print(ioi)
}

func s9076() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted(by: <)
        if l[3]-l[1] >= 4 {
            print("KIN")
        } else {
            let s = l[1]+l[2]+l[3]
            print(s)
        }
    }
}

func s1371() {
    var alphabet:[Character:Int] = [
        "a":0,
        "b":0,
        "c":0,
        "d":0,
        "e":0,
        "f":0,
        "g":0,
        "h":0,
        "i":0,
        "j":0,
        "k":0,
        "l":0,
        "m":0,
        "n":0,
        "o":0,
        "p":0,
        "q":0,
        "r":0,
        "s":0,
        "t":0,
        "u":0,
        "v":0,
        "w":0,
        "x":0,
        "y":0,
        "z":0,
    ]
    while true {
        guard let line = readLine() else { break }
        let arr = Array(line)
        arr.forEach{
            if alphabet[$0] != nil {
                alphabet[$0]! += 1
            }
        }
    }
    let sorted = alphabet.sorted{
        if $0.value == $1.value {
            return $0.key < $1.key
        } else {
            return $0.value > $1.value
        }
    }
    var maxV = sorted[0].value
    var str = ""
    for i in 0...sorted.count-1 {
        if sorted[i].value == maxV {
            str.write(String(sorted[i].key))
        } else {
            break
        }
    }
    print(str)
}

func s2702() {
    func gcd(_ a: Int, _ b: Int) -> Int{
        if (b == 0) { return a }
        return gcd(b, a % b)
    }

    let t = Int(readLine()!)!
    for _ in 1...t {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let a = gcd(l[0], l[1])
        let b = l[0]*l[1]/a
        print("\(b) \(a)")
    }
}

func s10822() {
    let s = readLine()!.split(separator: ",").map{ Int(String($0))! }.reduce(0,+)
    print(s)
}

func s2979() {
    let pl = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let t1 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let t2 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let t3 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let st = min(t1[0], t2[0], t3[0])
    let et = max(t1[1], t2[1], t3[1])
    var sp = 0
    for s in st+1...et {
        var m = 0
        if s > t1[0] && s <= t1[1] {
            m += 1
        }
        if s > t2[0] && s <= t2[1] {
            m += 1
        }
        if s > t3[0] && s <= t3[1] {
            m += 1
        }
        if m == 1 {
            sp += pl[0]
        } else if m == 2 {
            sp += pl[1]*2
        } else if m == 3 {
            sp += pl[2]*3
        }
    }
    print(sp)
}

func s2511() {
    let al = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let bl = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var ac = 0
    var bc = 0
    var lastW = ""
    for i in 0...9 {
        if al[i] > bl[i] {
            ac += 3
            lastW = "a"
        } else if al[i] < bl[i] {
            bc += 3
            lastW = "b"
        } else {
            ac += 1
            bc += 1
        }
    }
    print("\(ac) \(bc)")
    if ac > bc {
        print("A")
    } else if ac < bc {
        print("B")
    } else {
        if lastW == "a" {
            print("A")
        } else if lastW == "b" {
            print("B")
        } else {
            print("D")
        }
    }
}

func s10801() {
    let al = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let bl = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var ac = 0
    var bc = 0
    for i in 0...9 {
        if al[i] > bl[i] {
            ac += 1
        } else if al[i] < bl[i] {
            bc += 1
        }
    }
    if ac > bc {
        print("A")
    } else if ac < bc {
        print("B")
    } else {
        print("D")
    }
}

func s5218() {
    let t = Int(readLine()!)!
    let alphabet:[Character:Int] = [
        "A":1,
        "B":2,
        "C":3,
        "D":4,
        "E":5,
        "F":6,
        "G":7,
        "H":8,
        "I":9,
        "J":10,
        "K":11,
        "L":12,
        "M":13,
        "N":14,
        "O":15,
        "P":16,
        "Q":17,
        "R":18,
        "S":19,
        "T":20,
        "U":21,
        "V":22,
        "W":23,
        "X":24,
        "Y":25,
        "Z":26,
    ]
    for _ in 1...t {
        var list = readLine()!.split(separator: " ").map{ String($0) }
        let arr1 = Array(list[0])
        let arr2 = Array(list[1])
        var str = "Distances:"
        for i in 0...arr1.count-1 {
            let s1 = alphabet[arr1[i]] ?? 0
            let s2 = alphabet[arr2[i]] ?? 0
            str.write(s1 <= s2 ? " \(s2-s1)" : " \(s2-s1+26)")
        }
        print(str)
    }
}

func s14697() {
    var list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = list[0]
    let b = list[1]
    let c = list[2]
    let n = list[3]
    var isP = false
    for i in 0...n/a {
        for j in 0...(n-a*i)/b {
            if (n-a*i-j*b)%c == 0 {
                isP = true
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

func s1408() {
    var l1 = readLine()!.split(separator: ":").map{ Int(String($0))! }
    var l2 = readLine()!.split(separator: ":").map{ Int(String($0))! }

    let ch = l1[0]
    let cm = l1[1]
    let cs = l1[2]

    let sh = l2[0]
    let sm = l2[1]
    let ss = l2[2]

    let minusM = ss < cs
    let rs = minusM ? ss+60-cs : ss-cs
    let minusH = sm-(minusM ? 1 : 0) < cm
    let rm = sm-(minusM ? 1 : 0)-cm+(minusH ? 60 : 0)
    var rh = sh-(minusH ? 1 : 0)-ch
    if rh < 0 {
        rh += 24
    }
    print("\(rh < 10 ? "0\(rh)" : "\(rh)"):\(rm < 10 ? "0\(rm)" : "\(rm)"):\(rs < 10 ? "0\(rs)" : "\(rs)")")
}

func s18406() {
    var l = readLine()!.map{ Int(String($0))! }
    var s1 = 0
    var s2 = 0
    for i in 0..<l.count/2 {
        s1 += l[i]
    }
    for i in l.count/2...l.count-1 {
        s2 += l[i]
    }
    if s1 == s2 {
        print("LUCKY")
    } else {
        print("READY")
    }
}

func s1834() {
    let n = Int(readLine()!)!
    var s = (n+1)*n*(n-1)/2
    print(s)
}

func s11098() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let n = Int(readLine()!)!
        var dic:[Int:String] = [:]
        for _ in 1...n {
            var l = readLine()!.split(separator: " ")
            dic[Int(String(l[0]))!] = String(l[1])
        }
        let sorted = dic.sorted{ $0.key > $1.key }
        print(sorted[0].value)
    }
}

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
