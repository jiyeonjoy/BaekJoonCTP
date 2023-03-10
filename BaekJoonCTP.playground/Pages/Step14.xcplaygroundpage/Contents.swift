import Foundation

func s10769() {
    let str = readLine()!.replacingOccurrences(of: " ", with: "")
    let happy = "d\(str)d".replacingOccurrences(of: ":-)", with: " /").split(separator: " ").count
    let sad = "d\(str)d".replacingOccurrences(of: ":-(", with: " /").split(separator: " ").count
    if happy == sad {
        if happy == 1 {
            print("none")
        } else {
            print("unsure")
        }
    } else if happy > sad {
        print("happy")
    } else {
        print("sad")
    }
}

func s3985() {
    let L = Int(readLine()!)!
    var list:[Bool] = Array.init(repeating: true, count: L)
    let N = Int(readLine()!)!
    var maxCount = 0
    var maxI = 0
    var maxCount2 = 0
    var maxI2 = 0
    for i in 1...N {
        var l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        var c = 0
        for j in l[0]...l[1] {
            if list[j-1] {
                list[j-1] = false
                c += 1
            }
        }
        if c > maxCount {
            maxCount = c
            maxI = i
        }
        if l[1]-l[0] > maxCount2 {
            maxCount2 = l[1]-l[0]
            maxI2 = i
        }
    }
    print(maxI2)
    print(maxI)
}

func s9933() {
    let n = Int(readLine()!)!
    var list:[String] = []
    for _ in 1...n {
        list.append(readLine()!)
    }
    for i in 0..<n {
        let str = String(list[i].reversed())
        if list.contains(str) {
            print("\(str.count) \(Array(str)[str.count/2])")
            break
        }
    }
}

func s1173() {
    var l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var N = l[0]
    let m = l[1]
    let M = l[2]
    let T = l[3]
    let R = l[4]
    var c = 0
    var a = m
    if m+T > M {
        c = -1
    } else {
        while N > 0 || a > M {
            c += 1
            if a+T <= M {
                a += T
                N -= 1
            } else {
                a = max(m, a-R)
            }
        }
    }
    print(c)
}

func s27333() {
    let n = Int(readLine()!)!
    let arr = Array(readLine()!)
    var s:Character = "A"
    var str = ""
    arr.forEach{
        if $0 == s {
            str.removeLast()
            str.write("\($0.uppercased())\($0.uppercased())")
            s = "A"
        } else {
            str.write("\($0)")
            s = $0
        }
    }
    print(str)
}

func s27329() {
    let n = Int(readLine()!)!
    let arr = Array(readLine()!)
    let a = arr[0..<n/2]
    let b = arr[n/2..<n]
    if a == b {
        print("Yes")
    } else {
        print("No")
    }
}

func s27334() {
    readLine()
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let sorted = l.sorted()
    l.forEach{
        let i = sorted.firstIndex(of: $0)!
        print(i+1)
    }
}

func s27330() {
    readLine()
    let l1 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    readLine()
    let l2 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var s = 0
    l1.forEach{
        s += $0
        if l2.contains(s) {
            s = 0
        }
    }
    print(s)
}

func s27325() {
    let n = Int(readLine()!)!
    let arr = Array(readLine()!)
    var s = 0
    var c = 1
    arr.forEach{
        if $0 == "L" {
            if c > 1 {
                c -= 1
            }
        } else {
            if c >= 2 {
                c = 3
                s += 1
            } else {
                c = 2
            }
        }
    }
    print(s)
}

func s2153() {
    func isPrime(num: Int) -> Bool {
        if(num<4) {
            return true
        }
        for i in 2...Int(sqrt(Double(num))) {
            if(num % i == 0) { return false }
        }
        return true
    }

    let dic:[Character:Int] = [
        "a":1,
        "b":2,
        "c":3,
        "d":4,
        "e":5,
        "f":6,
        "g":7,
        "h":8,
        "i":9,
        "j":10,
        "k":11,
        "l":12,
        "m":13,
        "n":14,
        "o":15,
        "p":16,
        "q":17,
        "r":18,
        "s":19,
        "t":20,
        "u":21,
        "v":22,
        "w":23,
        "x":24,
        "y":25,
        "z":26,
        "A":27,
        "B":28,
        "C":29,
        "D":30,
        "E":31,
        "F":32,
        "G":33,
        "H":34,
        "I":35,
        "J":36,
        "K":37,
        "L":38,
        "M":39,
        "N":40,
        "O":41,
        "P":42,
        "Q":43,
        "R":44,
        "S":45,
        "T":46,
        "U":47,
        "V":48,
        "W":49,
        "X":50,
        "Y":51,
        "Z":52,
    ]
    let arr = Array(readLine()!)
    var c = 0
    arr.forEach{
        c += dic[$0] ?? 0
    }
    if isPrime(num: c) {
        print("It is a prime word.")
    } else {
        print("It is not a prime word.")
    }
}

func s2774() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let n = readLine()!
        let c = (0...9).filter{
            n.contains("\($0)")
        }.count
        print(c)
    }
}

func s11944() {
    let l = readLine()!.split(separator: " ").map{ String($0) }
    let n = l[0]
    var m = min(Int(l[0])!*n.count, Int(l[1])!)
    var str = ""
    while m > 0 {
        if m >= n.count {
            str.write(n)
            m -= n.count
        } else {
            str.write(String(Array(n)[0...m-1]))
            m = 0
        }
    }
    print(str)
}

func s5054() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        readLine()
        let sorted = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()
        var s = sorted[0]
        var c = 0
        if sorted.count > 1 {
            c = sorted[sorted.count-1]-sorted[0]
            for i in 1...sorted.count-1 {
                c += sorted[i]-s
                s = sorted[i]
            }
        }
        print(c)
    }
}

func s2804() {
    let l = readLine()!.split(separator: " ").map{ Array(String($0)) }
    let a = l[0]
    let b = l[1]
    var ai = 0
    var bi = 0
    var isD = false
    for i in 0...a.count-1 {
        for j in 0...b.count-1 {
            if a[i] == b[j] {
                isD = true
                ai = i
                bi = j
                break
            }
        }
        if isD {
            break
        }
    }
    for i in 0...b.count-1 {
        if i == bi {
            print(String(a))
        } else {
            let s = String(repeating: ".", count: ai)+String(b[i])+String(repeating: ".", count: a.count-ai-1)
            print(s)
        }
    }
}

func s1350() {
    readLine()
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let n = Int(readLine()!)!
    var s = 0
    l.forEach{
        s += ($0+n-1)/n
    }
    print(s*n)
}

func s27294() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let t = l[0]
    let s = l[1]
    if t >= 12 && t <= 16 && s == 0 {
        print(320)
    } else {
        print(280)
    }
}

func s6679() {
    for i in 2992...9999 {
        let s1 = String(i)
        let s2 = String(i, radix: 12)
        let s3 = String(i, radix: 16)
        var a1 = 0
        var a2 = 0
        var a3 = 0
        s1.forEach{
            a1 += Int(String($0))!
        }
        s2.forEach{
            if $0 == "a" {
                a2 += 10
            } else if $0 == "b" {
                a2 += 11
            } else {
                a2 += Int(String($0))!
            }
        }
        s3.forEach{
            if $0 == "a" {
                a3 += 10
            } else if $0 == "b" {
                a3 += 11
            } else if $0 == "c" {
                a3 += 12
            } else if $0 == "d" {
                a3 += 13
            } else if $0 == "e" {
                a3 += 14
            } else if $0 == "f" {
                a3 += 15
            } else {
                a3 += Int(String($0))!
            }
        }
        if a1 == a2 && a2 == a3 {
            print(i)
        }
    }
}

func s23037() {
    let arr = Array(readLine()!)
    var s:Double = 0
    for i in 0...arr.count-1 {
        let n = Double(String(arr[i]))!
        s += pow(n, 5)
    }
    print(Int(s))
}

func s3062() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let s = readLine()!
        let n = Int(s)! + Int(String(s.reversed()))!
        if String(n) == String(String(n).reversed()) {
            print("YES")
        } else {
            print("NO")
        }
    }
}

func s14467() {
    let t = Int(readLine()!)!
    var c = 0
    var dic:[Int:Int] = [:]
    for _ in 1...t {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let n = dic[l[0]] ?? -1
        if n > -1 {
            if n != l[1] {
                dic[l[0]] = l[1]
                c += 1
            }
        } else {
            dic[l[0]] = l[1]
        }
    }
    print(c)
}

func s11328() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let l = readLine()!.split(separator: " ").map{ Array(String($0)).sorted() }
        if l[0] == l[1] {
            print("Possible")
        } else {
            print("Impossible")
        }
    }
}

func s19532() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = l[0]
    let b = l[1]
    let c = l[2]
    let d = l[3]
    let e = l[4]
    let f = l[5]
    var isD = false
    var ax = 0
    var ay = 0
    for x in -999...999 {
        for y in -999...999 {
            if a*x+b*y == c && d*x+e*y == f {
                isD = true
                ax = x
                ay = y
                break
            }
        }
        if isD {
            break
        }
    }
    print("\(ax) \(ay)")
}

func s10813() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let n = l[0]
    let m = l[1]
    var dic:[Int:Int] = [:]
    for i in 1...n {
        dic[i] = i
    }
    for _ in 1...m {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let a = l[0]
        let b = l[1]
        let c = dic[a]!
        dic[a] = dic[b]!
        dic[b] = c
    }
    var str = ""
    for i in 1...n {
        str.write("\(dic[i]!) ")
    }
    str.removeLast()
    print(str)
}

func s6996() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let l = readLine()!.split(separator: " ").map{ String($0) }
        let a = Array(l[0]).sorted()
        let b = Array(l[1]).sorted()
        if a == b {
            print("\(l[0]) & \(l[1]) are anagrams.")
        } else {
            print("\(l[0]) & \(l[1]) are NOT anagrams.")
        }
    }
}

func s1668() {
    let n = Int(readLine()!)!
    var l:[Int] = []
    for _ in 1...n {
        l.append(Int(readLine()!)!)
    }
    var lc = 0
    var rc = 0
    var lm = 0
    var rm = 0
    for i in 0...n-1 {
        if l[i] > lm {
            lm = l[i]
            lc += 1
        }
        if l[n-i-1] > rm {
            rm = l[n-i-1]
            rc += 1
        }
    }
    print(lc)
    print(rc)
}

func s8320() {
    let n = Int(readLine()!)!
    var c = 0
    for i in 1...n {
        for j in 1...i {
            if i*j <= n {
                c += 1
            } else {
                break
            }
        }
    }
    print(c)
}

func s11816() {
    let arr = Array(readLine()!)
    if arr.count > 1 && arr[0] == "0" {
        if arr[1] == "x" {
            print(Int(String(arr[2...arr.count-1]), radix: 16)!)
        } else {
            print(Int(String(arr), radix: 8)!)
        }
    } else {
        print(String(arr))
    }
}

func s1592() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let n = list[0]
    let m = list[1]
    let l = list[2]
    var dic:[Int:Int] = [:]
    for i in 1...n {
        dic[i] = 0
    }
    var c = 1
    var s = 0
    while true {
        let a = dic[c] ?? 0
        dic[c] = a+1
        if dic[c] == m {
            break
        }
        if (a+1)%2 == 1 {
            c = (c+l)%n == 0 ? n : (c+l)%n
        } else {
            c = c-l > 0 ? c-l : c-l+n
        }
        s += 1
    }
    print(s)
}

func s10829() {
    let n = Int(readLine()!)!
    let a = String(n, radix: 2)
    print(a)
}

func s14659() {
    readLine()
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var maxC = 0
    var c = 0
    var m = 0
    for i in 0...l.count-1 {
        if l[i] > m {
            m = l[i]
            c = 0
        } else {
            c += 1
            if maxC < c {
                maxC = c
            }
        }
    }
    print(maxC)
}

func s5032() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var s = l[0] + l[1]
    let c = l[2]
    var a = 0
    while s >= c {
        a += s/c
        s = s%c + s/c
    }
    print(a)
}

func s11170() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        var s = 0
        for i in l[0]...l[1] {
            let c = String(i).filter{ $0 == "0" }.count
            s += c
        }
        print(s)
    }
}

func s1252() {
    let l = readLine()!.split(separator: " ").map{ Array(String($0.reversed())) }
    let a = l[0]
    let b = l[1]
    let ai = a.lastIndex(of: "1") ?? 0
    let bi = b.lastIndex(of: "1") ?? 0
    var c = ""
    var plusOne = false
    for i in 0...max(ai, bi) {
        var s = plusOne ? 1 : 0
        if i < a.count {
            if a[i] == "1" {
                s += 1
            }
        }
        if i < b.count {
            if b[i] == "1" {
                s += 1
            }
        }
        if s > 1 {
            plusOne = true
            s = s%2
        } else {
            plusOne = false
        }
        c.write("\(s)")
    }
    if plusOne {
        c.write("1")
    }
    print(String(c.reversed()))
}

func s2526() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let n = l[0]
    let p = l[1]
    var list:[Int] = []
    var c = n
    while true {
        c = c*n%p
        if list.contains(c) {
            let i = list.firstIndex(of: c) ?? 0
            print(list.count-i)
            break
        } else {
            list.append(c)
        }
    }
}

func KMP(source:[String], target:[String]) -> Bool {
    let sourceCnt = source.count
    let targetCnt = target.count
    
    var LPS = Array(repeating: 0, count: targetCnt)
    LPS = LPScompute(target:target, LPS:LPS)
    
    var sourceIdx = 0
    var targetIdx = 0
    
    while (sourceIdx < sourceCnt) {
        if target[targetIdx] == source[sourceIdx] {
            sourceIdx += 1
            targetIdx += 1
        } else {
            if targetIdx == 0 {
                sourceIdx += 1
            } else {
                targetIdx = LPS[targetIdx - 1]
            }
        }
        if targetIdx == targetCnt {
            return true
        }
    }
    return false
}

func LPScompute(target:[String], LPS:[Int]) -> [Int] {
    var length = 0
    var idx = 1
    var LPS = LPS
    while (idx < target.count) {
        if target[idx] == target[length] {
            length += 1
            LPS[idx] = length
            idx += 1
        } else {
            if length == 0 {
                LPS[idx] = 0
                idx += 1
            } else {
                length = LPS[length - 1]
            }
        }
    }
    return LPS
}

func s16916() {
    let s = Array(readLine()!.map{String($0)})
    let p = Array(readLine()!.map{String($0)})
    if KMP(source: s, target: p) {
        print(1)
    } else {
        print(0)
    }
}

func s2495() {
    while true {
        guard let line = readLine() else { break }
        let arr = Array(line)
        var c:Character = "A"
        var maxCount = 1
        var count = 1
        for i in 0...arr.count-1 {
            if arr[i] == c {
                count += 1
                if maxCount < count {
                    maxCount = count
                }
            } else {
                count = 1
                c = arr[i]
            }
        }
        print(maxCount)
    }
}

func s10539() {
    readLine()
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var str = ""
    var s = 0
    for i in 0...l.count-1 {
        let n = l[i]*(i+1)-s
        s += n
        str += "\(n) "
    }
    str.removeLast()
    print(str)
}

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
