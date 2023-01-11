import Foundation

func s7568() {
    let t = Int(readLine()!)!
    var arr: [(Int, Int)] = []

    for _ in 1...t {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        arr.append((list[0], list[1]))
    }
    var str = ""
    for i in 0...arr.count {
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
