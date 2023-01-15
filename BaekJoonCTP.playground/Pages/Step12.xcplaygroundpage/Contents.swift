import Foundation

func s1004() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let l = readLine()!.split(separator: " ").map{ Double(String($0))! }
        let x1 = l[0]
        let y1 = l[1]
        let x2 = l[2]
        let y2 = l[3]
        let n = Int(readLine()!)!
        var c = 0
        for _ in 1...n {
            let l = readLine()!.split(separator: " ").map{ Double(String($0))! }
            let x = l[0]
            let y = l[1]
            let r = l[2]
            let d1 = sqrt(pow(Double(x1-x), 2)+pow(Double(y1-y), 2))
            let d2 = sqrt(pow(Double(x2-x), 2)+pow(Double(y2-y), 2))
            if (d1 <= r && d2 > r) || (d1 > r && d2 <= r) {
                c += 1
            }
        }
        print(c)
    }
}

func s1002() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let l = readLine()!.split(separator: " ").map{ Double(String($0))! }
        let x1 = l[0]
        let y1 = l[1]
        let r1 = l[2]
        let x2 = l[3]
        let y2 = l[4]
        let r2 = l[5]
        var v = 0
        if x1 == x2 && y1 == y2 {
            if r1 == r2 {
                v = -1
            } else {
                v = 0
            }
        } else {
            let d = sqrt(pow(Double(x1-x2), 2)+pow(Double(y1-y2), 2))
            if r1+r2 > d {
                if r1 > r2 {
                    if d+r2 == r1 {
                        v = 1
                    } else if d+r2 > r1 {
                        v = 2
                    }
                } else if r1 < r2 {
                    if d+r1 == r2 {
                        v = 1
                    } else if d+r1 > r2 {
                        v = 2
                    }
                } else {
                    v = 2
                }
              
            } else if r1+r2 == d {
                v = 1
            }
        }
        print(v)
    }
}

func s2477() {
    let n = Int(readLine()!)!
    var dic:[Int:[Int]] = [:]
    var list:[[Int]] = []
    for _ in 1...6 {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        list.append(l)
        var a = dic[l[0]] ?? []
        a.append(l[1])
        dic[l[0]] = a
    }
    var a = dic[1]?.count == 1 ? 1 : 2
    var b = dic[3]?.count == 1 ? 3 : 4
    var all = dic[a]![0] * dic[b]![0]
    list += list
    var lll:[Int] = []
    var i = 0
    while lll.count < 4 {
        if list[i][0] == a || list[i][0] == b {
            lll.removeAll()
        } else {
            lll.append(list[i][1])
        }
        i += 1
    }
    var sub = lll[1]*lll[2]

    print((all-sub)*n)
}

func s1269() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let ac = l[0]
    let bc = l[1]
    var dic:[Int:Bool] = [:]
    readLine()!.split(separator: " ").map{
        dic[Int(String($0))!] = true
    }
    var ab = 0
    readLine()!.split(separator: " ").map{
        let isE = dic[Int(String($0))!] ?? false
        if isE {
            ab += 1
        }
    }
    print((ac-ab)+(bc-ab))
}

func s1764() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let n = l[0]
    let m = l[1]
    var dic:[String:Bool] = [:]
    for _ in 1...n {
        dic[readLine()!] = true
    }
    var c = 0
    var sl:[String] = []
    for _ in 1...m {
        let s = readLine()!
        let isE = dic[s] ?? false
        if isE {
            c += 1
            sl.append(s)
        }
    }
    print(c)
    for s in sl.sorted() {
        print(s)
    }
}

func s14425() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let n = l[0]
    let m = l[1]
    var dic:[String:Bool] = [:]
    for _ in 1...n {
        dic[readLine()!] = true
    }
    var c = 0
    for _ in 1...m {
        let isE = dic[readLine()!] ?? false
        if isE {
            c += 1
        }
    }
    print(c)
}

func s11729() {
    func hanoi(_ n:Int, _ start:Int, _ middle:Int, _ end:Int) {
        if(n == 1) {
            print("\(start) \(end)")
            return
        }
        hanoi(n-1, start, end, middle)
        hanoi(1, start, middle, end)
        hanoi(n-1, middle, start, end)
    }

    let n = Int(readLine()!)!
    let cnt = pow(2, n)-1
    print(cnt)
    hanoi(n, 1, 2, 3)
}

func s2447() {
    func getLine(_ i:Int, _ n:Int, _ s:String) -> String {
        var s = s
        if (n == 3 && (i%n == 0 || i%n == 1)) || (n > 3 && (n/3 >= i%n || n*2/3 < i%n)) {
            s = String(repeating: s, count: 3)
        } else {
            s = String(repeating: s, count: 1)+String(repeating: " ", count: s.count)+String(repeating: s, count: 1)
        }

        return s
    }

    let n = Int(readLine()!)!
    for i in 1...n {
        var v = 1
        var line = "*"
        while v != n {
            v *= 3
            line = getLine(i, v, line)
        }
        print(line)
    }
}

func s24060() {
    func mergeSort(_ a:[Int]) -> [Int] {
        if a.count == 1 {
            return a
        }
        let mid = (a.count+1)/2
        let left = mergeSort(Array(a[0...mid-1]))
        let right = mergeSort(Array(a[mid...a.count-1]))
        
        var sortList:[Int] = []
        var l = 0
        var r = 0
        while l < left.count && r < right.count {
            if left[l] < right[r] {
                sortList.append(left[l])
                ans.append(left[l])
                l += 1
            } else {
                sortList.append(right[r])
                ans.append(right[r])
                r += 1
            }
        }
        while l < left.count {
            sortList.append(left[l])
            ans.append(left[l])
            l += 1
        }
        while r < right.count {
            sortList.append(right[r])
            ans.append(right[r])
            r += 1
        }
        
        return sortList
    }

    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = l[0]
    let k = l[1]
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var ans:[Int] = []
    mergeSort(list)
    if ans.count >= k {
        print(ans[k-1])
    } else {
        print(-1)
    }
}

func s1475() {
    let arr = Array(readLine()!)
    let dic = Dictionary(grouping: arr){ $0 }
    let sorted = dic.sorted{ $0.value.count > $1.value.count }
    if sorted[0].key == "6" || sorted[0].key == "9" {
        let v = (dic["6"]?.count ?? 0) + (dic["9"]?.count ?? 0)
        let v1 = (v+1)/2
        if sorted.count > 1 {
            if sorted[1].key != "6" && sorted[1].key != "9" {
                let v2 = sorted[1].value.count
                if v2 > v1 {
                    print(v2)
                } else {
                    print(v1)
                }
            } else {
                print(v1)
            }
        } else {
            print(v1)
        }
    } else {
        print(sorted[0].value.count)
    }
}

func s1476() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let e = list[0]
    let s = list[1]%28
    let m = list[2]%19
    var i = 1
    var v = 0
    while true {
        i = v*15+e
        if i%28 == s && i%19 == m {
            break
        } else {
            v += 1
        }
    }
    print(i)
}

func s10815() {
    readLine()
    var dic:[Int:Bool] = [:]
    readLine()!.split(separator: " ").map{
        dic[Int(String($0))!] = true
    }
    readLine()
    var str = ""
    readLine()!.split(separator: " ").map{
        let isT = dic[Int(String($0))!] ?? false
        if isT {
            if str == "" {
                str += "1"
            } else {
                str += " 1"
            }
        } else {
            if str == "" {
                str += "0"
            } else {
                str += " 0"
            }
        }
    }
    print(str)
}

func s1010() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let n = list[0]
        let m = list[1]
        var v = 1
        var arr = Array(1...n)
        for i in 0...n-1 {
            if arr.contains(m-i) {
                arr.remove(at: arr.firstIndex(of: m-i)!)
            } else {
                v *= m-i
            }
        }
        let p = arr.reduce(1, *)
        print(v/p)
    }
}

func s1373() {
    let arr = Array(readLine()!)
    var str = ""
    for i in 0..<(arr.count+2)/3 {
        var s = ""
        let n = arr.count%3 == 0 ? 3 : arr.count%3
        if i == 0 {
            s = String(arr[0..<n])
        } else {
            s = String(arr[(i-1)*3+n..<i*3+n])
        }
        let num = Int(s, radix: 2)!
        str += String(num, radix: 8)
    }
    print(str)
}

func s11655() {
    let arr = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    let arr2 = Array("abcdefghijklmnopqrstuvwxyz")
    let str = Array(readLine()!)
    var v = ""
    for c in str {
        if c.asciiValue! >= 97 {
            let i = (arr2.firstIndex(of: c)!+arr2.count+13)%arr2.count
            v += String(arr2[i])
        } else if c.asciiValue! >= 65 {
            let i = (arr.firstIndex(of: c)!+arr.count+13)%arr.count
            v += String(arr[i])
        } else {
            v += String(c)
        }
    }
    print(v)
}

func s1453() {
    readLine()
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var dic:[Int:Bool] = [:]
    var v = 0
    for i in list {
        let s = dic[i] ?? false
        if s {
            v += 1
        } else {
            dic[i] = true
        }
    }
    print(v)
}

func s5598() {
    let arr = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    let str = Array(readLine()!)
    var v = ""
    for c in str {
        let i = (arr.firstIndex(of: c)!+arr.count-3)%arr.count
        v += String(arr[i])
    }
    print(v)
}

func s5525() {
    let n = Int(readLine()!)!
    var strc = n*2+1
    let m = Int(readLine()!)!
    let s = Array(readLine()!)
    var v = 0
    var i = 0
    var isI = true
    var c = 0
    while true {
        if isI {
            if s[i] == "I" {
                c += 1
                isI = false
            } else {
                if c >= strc {
                    let a = ((c+1)/2)-n
                    v += a
                }
                c = 0
            }
        } else {
            if s[i] == "O" {
                c += 1
                isI = true
            } else {
                if c >= strc {
                    let a = ((c+1)/2)-n
                    v += a
                }
                c = 1
                isI = false
            }
        }
        i += 1
        if i >= s.count {
            break
        }
    }
    if c >= strc {
        let a = ((c+1)/2)-n
        v += a
    }
    print(v)
}

func s18870() {
    readLine()
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let s = Set(list).sorted()
    var dic:[Int:Int] = [:]
    for i in 0...s.count-1 {
        if dic[s[i]] == nil {
            dic[s[i]] = i
        }
    }
    var str = ""
    list.map {
        n in
        if str == "" {
            str += "\(dic[n]!)"
        } else {
            str += " \(dic[n]!)"
        }
    }
    print(str)
}

func s19796() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var v:[Int] = Array.init(repeating: 0, count: list[0]+1)
    for _ in 1...list[1] {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        for j in l[0]...l[1] {
            v[j] = 1
        }
    }
    if v.filter({ $0 == 0 }).count == 1 {
        print("YES")
    } else {
        print("NO")
    }
}

func s17618() {
    let n = Int(readLine()!)!
    if n <= 10 {
        print(n)
    } else {
        var c = 10
        for i in 11...n {
            var sum = 0
            var a = i
            while a > 0 {
                sum += a%10
                a /= 10
            }
            if i%sum == 0 {
                c += 1
            }
        }
        print(c)
    }
}

func s1541() {
    let ml = readLine()!.split(separator: "-").map{ String($0) }
    var sum = ml[0].split(separator: "+").map{ Int(String($0))! }.reduce(0,+)
    if ml.count > 1 {
        for i in 1..<ml.count {
            let pl = ml[i].split(separator: "+").map{ Int(String($0))! }.reduce(0, +)
            sum -= pl
        }
    }
    print(sum)
}

func s1620() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let n = list[0]
    let k = list[1]
    var dic:[String:Int] = [:]
    var dic2:[Int:String] = [:]
    for i in 1...n {
        let s = readLine()!
        dic[s] = i
        dic2[i] = s
    }
    for _ in 1...k {
        let s = readLine()!
        let n = Int(s) ?? -1
        if n > -1 {
            print(dic2[n]!)
        } else {
            print(dic[s]!)
        }
    }
}

func s1003() {
    let t = Int(readLine()!)!
    var list: [[Int]] = [[1,0], [0,1]]
    for _ in 1...t {
        let n = Int(readLine()!)!
        if n > list.count-1 {
            for i in list.count...n {
                let l = [list[i-1][0]+list[i-2][0], list[i-1][1]+list[i-2][1]]
                list.append(l)
            }
        }
        print("\(list[n][0]) \(list[n][1])")
    }
}

func s1676() {
    let n = Int(readLine()!)!
    if n == 0 {
        print(0)
    } else {
        var tc = 0
        var fc = 0
        for i in 1...n {
            var a = i
            while a%2 == 0 {
                a /= 2
                tc += 1
            }
            while a%5 == 0 {
                a /= 5
                fc += 1
            }
        }
        print(min(tc,fc))
    }
}

func s7568() {
    let t = Int(readLine()!)!
    var arr: [(Int, Int)] = []

    for _ in 1...t {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        arr.append((list[0], list[1]))
    }
    var str = ""
    for i in 0...arr.count-1 {
        let c = arr.filter{
            $0.0 > arr[i].0 && $0.1 > arr[i].1
        }.count
        if str == "" {
            str += "\(c+1)"
        } else {
            str += " \(c+1)"
        }
    }
    print(str)
}

struct Stack<T> {
    private var stack: [T] = []
    
    public var count: Int {
        return stack.count
    }
    
    public var isEmpty: Bool {
        return stack.isEmpty
    }
    
    public mutating func push(_ element: T) {
        stack.append(element)
    }
    
    public mutating func pop() -> T? {
        return isEmpty ? nil : stack.popLast()!
    }
    
}

func s4949() {
    while true {
        let str = readLine()!
        if str == "." { break }
        var myStack: Stack = Stack<Character>()
        var isYes = true
        let arr = Array(str)
        for i in 0...arr.count-1 {
            if arr[i] == "(" || arr[i] == "[" {
                myStack.push(arr[i])
            } else if arr[i] == ")" || arr[i] == "]" {
                let c = myStack.pop() ?? " "
                let d:Character = arr[i] == ")" ? "(" : "["
                if c != d {
                    isYes = false
                    break
                }
            }
        }
        if isYes && myStack.isEmpty {
            print("yes")
        } else {
            print("no")
        }
    }
}

func s2805() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let m = list[1]
    var s = 0
    var e = 1000000001
    let tl = readLine()!.split(separator: " ").map{ Int(String($0))! }
    while e - s > 1 {
        let medium = (e+s)/2
        var sum = 0
        for t in tl {
            if t > medium {
                sum += t-medium
            }
        }
        if sum >= m {
            s = medium
        } else {
            e = medium
        }
    }
    print(s)
}

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

func s1966() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let i = readLine()!.split(separator: " ").map{ Int(String($0))! }[1]
        var list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        var deque: Deque<Int> = Deque(list)
        list.sort(by: >)
        var maxi = 0
        var ci = i
        var a = 0
        while true {
            let n = deque.popFirst()!
            if n == list[maxi] {
                a += 1
                maxi += 1
                if ci == 0 {
                    break
                } else {
                    ci -= 1
                }
            } else {
                deque.pushLast(n)
                if ci == 0 {
                    ci = deque.count-1
                } else {
                    ci -= 1
                }
            }
        }
        print(a)
    }

}

func s10773() {
    let t = Int(readLine()!)!
    var l:[Int] = []
    for _ in 1...t {
        let n = Int(readLine()!)!
        if n != 0 {
            l.append(n)
        } else {
            l.removeLast()
        }
    }
    print(l.reduce(0,+))
}

func s18111() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let n = l[0]
    let b = l[2]
    var list:[Int] = []
    for _ in 1...n {
        list += readLine()!.split(separator: " ").map{ Int(String($0))! }
    }
    var minsum = -1
    var h = 0
    for i in list.min()!...list.max()! {
        var sum = 0
        var bc = 0
        for j in 0...list.count-1 {
            if i < list[j] {
                sum += (list[j]-i)*2
                bc += list[j]-i
            } else if i > list[j] {
                sum += i-list[j]
                bc -= i-list[j]
            }
        }
        if bc+b >= 0 && (minsum == -1 || minsum >= sum){
            minsum = sum
            h = i
        } else if bc+b < 0 {
            break
        }
    }
    print("\(minsum) \(h)")
}

func s2108() {
    let n = Int(readLine()!)!
    var list:[Int] = []
    for _ in 1...n {
        list.append(Int(readLine()!)!)
    }
    list.sort()
    let a = Int(round(Double(list.reduce(0,+))/Double(list.count)))
    let b = list[list.count/2]
    let dic = Dictionary(grouping: list) { $0 }.sorted{
        if $0.value.count == $1.value.count {
            return $0.key < $1.key
        } else {
            return $0.value.count > $1.value.count
        }
    }
    let c = dic.count > 1 && dic[0].value.count == dic[1].value.count ? dic[1].key : dic[0].key
    let d = list.max()! - list.min()!
    print(a)
    print(b)
    print(c)
    print(d)
}

func s1436() {
    let n = Int(readLine()!)!
    var v = 666
    var c = 1
    while n != c {
        v += 1
        var i = v
        while i >= 666 {
            if i%1000 == 666 {
                c += 1
                break
            }
            i /= 10
        }
    }
    print(v)
}

func getPow(_ i:Int) -> Int {
    if i == 0 {
        return 1
    }
    var v = 1
    for _ in 1...i {
        v *= 31
        v = v%1234567891
    }
    return v
}

func s15829() {
    let l = Array("0abcdefghijklmnopqrstuvwxyz")
    readLine()
    let str = Array(readLine()!)
    var sum = 0
    for i in 0...str.count-1 {
        let n = l.firstIndex(of: str[i])!
        sum += n*Int(getPow(i))%1234567891
    }
    sum = sum%1234567891
    print(sum)
}

func s25933() {
    let n = Int(readLine()!)!
    for i in 1...n {
        let str = readLine()!
        let list = str.split(separator: " ").map{ Int(String($0))! }
        let ag = list[0]
        let aa = list[1]
        let ad = list[2]
        
        let rg = list[3]
        let ra = list[4]
        let rd = list[5]
        
        let isWinCount = ag+aa+ad > rg+ra+rd
        let isWinColor = ag > rg || (ag == rg && aa > ra) || (ag == rg && aa == ra && ad > rd)
        print(str)
        if isWinCount && isWinColor {
            print("both")
        } else if isWinCount {
            print("count")
        } else if isWinColor {
            print("color")
        } else {
            print("none")
        }
        if i < n {
            print("")
        }
    }
}

// 1874
func s1874() {
    let k = Int(readLine()!)!
    var list:[Int] = []
    var c = 1
    var str = ""
    for _ in 1...k {
        let n = Int(readLine()!)!
        if !list.contains(n) {
            while !list.contains(n) {
                list.append(c)
                c += 1
                if str == "" {
                    str += "+"
                } else {
                    str += "\n+"
                }
            }
            list.removeLast()
            str += "\n-"
        } else {
            if list.last! == n {
                list.removeLast()
                str += "\n-"
            } else {
                str = "NO"
                break
            }
        }
    }
    print(str)
}

// 1654
func s1654() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let k = list[1]
    var l:[Int] = []
    var minv = 0
    var maxv = 2147483648
    for _ in 1...list[0] {
        l.append(Int(readLine()!)!)
    }
    while maxv-minv > 1 {
        let mv = (maxv+minv)/2
        var sum = 0
        for i in l {
             if i/mv > k {
                    break
                }
                sum += i/mv
                if sum > k {
                    break
                }
        }
        if sum < k {
            maxv = mv
        } else {
            minv = mv
        }
    }
    print(minv)
}
