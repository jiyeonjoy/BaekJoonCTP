import Foundation

func solution50() {}
func solution49() {}
func solution48() {}
func solution47() {}
func solution46() {}

class Deque<T: Equatable> {
    var enqueue: [T]
    var dequeue: [T] = []
    var count: Int {
        return enqueue.count + dequeue.count
    }
    var isEmpty: Bool {
        return enqueue.isEmpty && dequeue.isEmpty
    }
    var first: T? {
        if dequeue.isEmpty {
            return enqueue.first
        }
        return dequeue.last
    }
    init(_ queue: [T]) {
        enqueue = queue
    }
    func pushFirst(_ n: T) {
        dequeue.append(n)
    }
    func pushLast(_ n: T) {
        enqueue.append(n)
    }
    func popFirst() -> T? {
        if dequeue.isEmpty {
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        return dequeue.popLast()
        
    }
    func popLast() -> T? {
        var returnValue: T?
        if enqueue.isEmpty {
            dequeue.reverse()
            returnValue = dequeue.popLast()
            dequeue.reverse()
        } else {
            returnValue = enqueue.popLast()
        }
        return returnValue
    }
    func contains(_ n: T) -> Bool {
        return enqueue.contains(n) || dequeue.contains(n)
    }
    func removeAll() {
        enqueue.removeAll()
        dequeue.removeAll()
    }
}

// 10866
func solution45() {
    let n = Int(readLine()!)!
    var deque: Deque<Int> = Deque([])
    for _ in 1...n {
        let str = readLine()!
        if str.contains("push_front") {
            let l = str.split(separator: " ")
            let n = Int(String(l[1]))!
            deque.pushFirst(n)
        } else if str.contains("push_back") {
            let l = str.split(separator: " ")
            let n = Int(String(l[1]))!
            deque.pushLast(n)
        } else if str == "pop_front" {
            let n = deque.popFirst() ?? -1
            print(n)
        } else if str == "pop_back" {
            let n = deque.popLast() ?? -1
            print(n)
        } else if str == "size" {
            print(deque.count)
        } else if str == "empty" {
            print(deque.isEmpty ? 1 : 0)
        } else if str == "front" {
            print(deque.first ?? -1)
        } else {
            if deque.isEmpty {
                print(-1)
            } else {
                let n = deque.popLast() ?? -1
                deque.pushLast(n)
                print(n)
            }
        }
    }
}

public struct Queue<T> {
  fileprivate var array = [T]()
  
  public var isEmpty: Bool {
    return array.isEmpty
  }
  
  public var count: Int {
    return array.count
  }
  
  public mutating func enquque(_ element: T) {
    array.append(element)
  }
  
  public mutating func dequeue() -> T? {
    if isEmpty {
      return nil
    } else {
      return array.removeFirst()
    }
  }
  
  public var front: T? {
    return array.first
  }
}

// 10845
func solution44() {
    let n = Int(readLine()!)!
    var queue = Queue<Int>()
    var last = -1

    for _ in 1...n {
        let str = readLine()!
        if str.contains("push") {
            let l = str.split(separator: " ")
            let n = Int(String(l[1]))!
            queue.enquque(n)
            last = n
        } else if str == "pop" {
            let n = queue.dequeue() ?? -1
            print(n)
        } else if str == "size" {
            print(queue.count)
        } else if str == "empty" {
            print(queue.isEmpty ? 1 : 0)
        } else if str == "front" {
            print(queue.front ?? -1)
        } else {
            if queue.isEmpty {
                print(-1)
            } else {
                print(last)
            }
        }
    }
}

// 10816
func solution43() {
    readLine()
    let list1 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let dic = Dictionary(grouping: list1) { $0 }
    readLine()
    let list2 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var str = ""
    for i in list2 {
        if str == "" {
            str += "\(dic[i]?.count ?? 0)"
        } else {
            str += " \(dic[i]?.count ?? 0)"
        }
    }
    print(str)
}

// 10814
func solution42() {
    let n = Int(readLine()!)!
    var dic:[Int:[String]] = [:]
    for _ in 1...n {
        let str = readLine()!
        let list = str.split(separator: " ")
        let n = Int(String(list[0]))!
        var l = dic[n] ?? []
        l.append(str)
        dic[n] = l
    }
    for k in dic.keys.sorted() {
        for s in dic[k]! {
            print(s)
        }
    }
}

// 2609
func solution41() {
    // 최대공약수
    func gcd(_ a: Int, _ b: Int) -> Int{
        if (b == 0) { return a }
        return gcd(b, a % b)
    }

    // 최소공배수
    func lcm(_ a: Int, _ b: Int) -> Int {
        return a * b / gcd(a, b)
    }

    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = list[0]
    let b = list[1]
    print(gcd(a,b))
    print(lcm(a,b))
}

// 2164
func solution401() {
    var deque: Deque<Int> = Deque(Array(1...Int(readLine()!)!))
    while deque.count > 1 {
        deque.popFirst()
        let a = deque.popFirst()!
        deque.pushLast(a)
    }
    print(deque.popFirst()!)
}

// 1920
func solution39() {
    readLine()
    let list1 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let dic = Dictionary(grouping: list1) { $0 }
    readLine()
    let list2 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    for i in list2 {
        if dic[i] != nil {
            print(1)
        } else {
            print(0)
        }
    }
}

// 1259
func solution38() {
    while true {
        let str = readLine()!
        if str == "0" { break }
        if str == String(str.reversed()) {
            print("yes")
        } else {
            print("no")
        }
    }
}

// 1018
func solution37() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let n = list[0]
    let m = list[1]
    var pan:[[Character]] = []
    for _ in 1...n {
        pan.append(Array(readLine()!))
    }
    var minv = 64
    for i in 0...n-8 {
        for j in 0...m-8 {
            var mina = 0
            var minb = 0
            for k in 0...7 {
                for l in 0...7 {
                    if (i+j+k+l)%2 == 0 {
                        if pan[i+k][j+l] == "B" {
                            mina += 1
                        } else {
                            minb += 1
                        }
                    } else {
                        if pan[i+k][j+l] == "W" {
                            mina += 1
                        } else {
                            minb += 1
                        }
                    }
                }
            }
            if minv > mina {
                minv = mina
            }
            if minv > minb {
                minv = minb
            }
        }
    }
    print(minv)
}

// 25305
func solution36() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let k = list[1]
    let l = readLine()!.split(separator: " ").map{ Int($0)! }.sorted(by: >)
    print(l[k-1])
}

// 2587
func solution35() {
    var list:[Int] = []
    for _ in 1...5 {
        list.append(Int(readLine()!)!)
    }
    list.sort()
    let p = list.reduce(0,+)/5
    print(p)
    print(list[2])
}

// 2563
func solution34() {
    let t = Int(readLine()!)!
    var dic:[Int:[Int]] = [:]
    for _ in 1...t {
        let list = readLine()!.split(separator: " ").map{ Int($0)! }
        let x = list[0]
        let y = list[1]
        for i in x+1...x+10 {
            var l = dic[i] ?? []
            for j in y+1...y+10 {
                if !l.contains(j) {
                    l.append(j)
                }
            }
            dic[i] = l
        }
    }
    var sum = 0
    dic.values.map {
        sum += $0.count
    }
    print(sum)
}

// 9020
func solution33() {
    func isPrime(num: Int) -> Bool {
        if(num<4) {
            return num == 1 ? false : true
        }
        for i in 2...Int(sqrt(Double(num))) {
            if(num % i == 0) { return false }
        }
        return true
    }

    let t = Int(readLine()!)!
    for _ in 1...t {
        let n = Int(readLine()!)!
        var minc = n
        for i in 2...n/2 {
            if isPrime(num: i) && isPrime(num: n-i) {
                if n-i-i < minc {
                    minc = n-i-i
                }
            }
        }
        print("\(n/2-(minc)/2) \(n/2+(minc)/2)")
    }
}

// 4948
func solution32() {
    func isPrime(num: Int) -> Bool {
        if(num<4) {
            return num == 1 ? false : true
        }
        for i in 2...Int(sqrt(Double(num))) {
            if(num % i == 0) { return false }
        }
        return true
    }

    while true {
        let n = Int(readLine()!)!
        if n == 0 { break }
        var c = 0
        for i in n+1...2*n {
            if isPrime(num: i) {
                c += 1
            }
        }
        print(c)
    }
}

// 11653
func solution31() {
    var n = Int(readLine()!)!
    var c = 2
    while n > 1 {
        if n%c == 0 {
            print(c)
            n /= c
        } else {
            c += 1
        }
    }
}

// 2581
func solution30() {
    func isPrime(num: Int) -> Bool {
        if(num<4) {
            return num == 1 ? false : true
        }
        for i in 2...Int(sqrt(Double(num))) {
            if(num % i == 0) { return false }
        }
        return true
    }
    let s = Int(readLine()!)!
    let e = Int(readLine()!)!
    var a = -1
    var sum = 0
    for i in s...e {
        if isPrime(num: i) {
            if a == -1 {
                a = i
            }
            sum += i
        }
    }
    if sum == 0 {
        print(-1)
    } else {
        print(sum)
        print(a)
    }
}

// 2775
func solution29() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let k = Int(readLine()!)!
        let n = Int(readLine()!)!
        var list:[Int] = Array(1...n)
        if k > 1 {
            for _ in 2...k {
                var l:[Int] = []
                var sum = 0
                for i in 0..<n {
                    sum += list[i]
                    l.append(sum)
                }
                list = l
            }
        }
        let sum = list.reduce(0,+)
        print(sum)
    }
}

// 1149
func solution28() {
    let n = Int(readLine()!)!
    var a = 0
    var b = 0
    var c = 0
    for _ in 1...n {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
            let aa = a
            let bb = b
            let cc = c
            a = min(bb,cc)+list[0]
            b = min(aa,cc)+list[1]
            c = min(aa,bb)+list[2]
        
    }
    print(min(a,b,c))
}

// 11053
func solution27() {
    let n = Int(readLine()!)!
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var dic:[Int:Int] = [:]
    for i in list {
        let dicF = dic.filter{ $0.key < i }
        if dicF.isEmpty {
            dic[i] = 1
        } else {
            dic[i] = dicF.values.max()!+1
        }
    }
    print(dic.values.max()!)
}

// 9095
func solution26() {
    func factorial(_ n: Int) -> Int {
      var n = n
      var result = 1
      while n > 1 {
        result *= n
        n -= 1
      }
      return result
    }

    let t = Int(readLine()!)!
    for _ in 1...t {
        let n = Int(readLine()!)!
        var sum = 0
        for i in 0...n/3 {
            for j in 0...(n-i*3)/2 {
                let k = n-i*3-j*2
                sum += factorial(i+j+k)/(factorial(i)*factorial(j)*factorial(k))
            }
        }
        print(sum)
    }
}

// 11399
func solution25() {
    readLine()
    let list = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
    var sum = 0
    var c = 0
    for i in list {
        c += i
        sum += c
    }
    print(sum)
}

// 1181
func solution24() {
    let n = Int(readLine()!)!
    var list:[String] = []
    for _ in 1...n {
        list.append(readLine()!)
    }
    var str = ""
    var set:Set<String> = Set<String>()
    set.formUnion(list)
    let l = set.sorted() {
        if $0.count < $1.count {
            return true
        } else if $0.count == $1.count {
            return $0 < $1
        } else {
            return false
        }
    }
    for s in l {
        if str == "" {
            str += s
        } else {
            str += "\n\(s)"
        }
    }
    print(str)
}

// 1193
func solution23() {
    let n = Int(readLine()!)!
    var a = 0
    var c = 1
    var isDone = false
    while true {
        for i in 1...c {
            a += 1
            if a == n {
                if c%2 == 0 {
                    print("\(i)/\(c-i+1)")
                } else {
                    print("\(c-i+1)/\(i)")
                }
                isDone = true
                break
            }
        }
        if isDone {
            break
        }
        c += 1
    }
}

func solution22() {
    let n = Int(readLine()!)!
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let list1 = readLine()!.split(separator: " ").map{ Int($0)! }
    let c = list1[0]
    let b = list1[1]
    var sum = 0
    for i in list {
        if i-c > 0 {
            sum += (i-c+b-1)/b+1
        } else {
            sum += 1
        }
    }
    print(sum)
}

func solution21() {
    let n = Int(readLine()!)!
    var m = 1000-n
    var sum = 0
    if m >= 500 {
        sum += m/500
        m = m%500
    }
    if m >= 100 {
        sum += m/100
        m = m%100
    }
    if m >= 50 {
        sum += m/50
        m = m%50
    }
    if m >= 10 {
        sum += m/10
        m = m%10
    }
    if m >= 5 {
        sum += m/5
        m = m%5
    }
    if m >= 1 {
        sum += m
    }
    print(sum)
}

func solution20() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let list = readLine()!.split(separator: ",").map{ Int($0)! }
        print(list[0]+list[1])
    }
}

func solution19() {
    let n = Int(readLine()!)!
    if n == 1 {
        print(1)
    } else {
        var list = [0, 1]
        for i in 2...n {
            let v = list[i-2]+list[i-1]
            list.append(v)
        }
        print(list.last!)
    }
}

func solution18() {
    let line = readLine()!
    if line == "1 2 3 4 5 6 7 8" {
        print("ascending")
    } else if line == "8 7 6 5 4 3 2 1" {
        print("descending")
    } else {
        print("mixed")
    }
}

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
