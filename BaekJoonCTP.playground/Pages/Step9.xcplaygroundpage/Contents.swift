import Foundation

func solution50() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = list.filter{ $0%2 == 1 }
    if a.count > 0 {
        print(a.reduce(1,*))
    } else {
        print(list.reduce(1, *))
    }
}

func solution49() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = min(list[0], list[1])
    let b = max(list[0], list[1])
    let c = min(list[2], list[3])
    let d = max(list[2], list[3])

    let v = min(b-a, abs(d-b)+abs(a-c))
    print(v)
}

func solution48() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var arr = [Int](repeating: 0, count: list[0])
    for _ in 1...list[1] {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        arr[l[0]-1] += 1
        arr[l[1]-1] += 1
    }
    var str = ""
    for i in 0..<arr.count {
        if i == arr.count-1 {
            str += "\(arr[i])"
        } else {
            str += "\(arr[i])\n"
        }
    }
    print(str)
}

func solution47() {
    while true {
        let list = readLine()!.split(separator: " ").map{ String($0) }
        if list[0] == "0" && list[2] == "0" { break }
        if list[1] == "W" {
            let v = Int(list[0])!-Int(list[2])!
            if v < -200 {
                print("Not allowed")
            } else {
                print(v)
            }
        } else {
            let v = Int(list[0])!+Int(list[2])!
            print(v)
        }
    }
}

func solution46() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var v = list[0]*(list[0]+1)/2
    var sum = list[0]*(list[0]+1)/2
    for i in list[0]+1...list[1] {
        sum += i
        v *= sum
        if v > 14579 {
            v = v%14579
        }
    }
    print(v)
}

func solution45() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = list[0]
    let b = list[1]
    let c = list[2]
    var maxv = 0
    let n = Int(readLine()!)!
    for _ in 1...n {
        let list1 = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let list2 = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let list3 = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let v = a*(list1[0]+list2[0]+list3[0])+b*(list1[1]+list2[1]+list3[1])+c*(list1[2]+list2[2]+list3[2])
        if v > maxv {
            maxv = v
        }
    }
    print(maxv)
}

func solution44() {
    while true {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        if list[0] == 0 && list[1] == 0 {
            break
        }
        let b = list[0]
        let n = list[1]
        var a = 0
        var minv = Double(b)
        for i in 1...b {
            let v = pow(Double(i), Double(n))
            if minv > abs(v-Double(b)) {
                minv = abs(v-Double(b))
                a = i
            }
            if v > Double(b) {
                break
            }
        }
        print(a)
    }
}

func solution43() {
    let list1 = readLine()!.split(separator: " ").map{ Double(String($0))! }
    let list2 = readLine()!.split(separator: " ").map{ Double(String($0))! }
    let a = sqrt(pow(list1[0]-list2[0], 2)+pow(list1[1]-list2[1], 2))
    if list1[2] + list2[2] > a {
        print("YES")
    } else {
        print("NO")
    }
}

func solution42() {
    let k = Double(readLine()!)!
    let list = readLine()!.split(separator: " ").map{ Double(String($0))! }
    let a = list[0]
    let b = list[1]
    let c = (a-b)/2
    let v = pow(k, 2)-pow(c,2)
    print(v)
}

func solution41() {
    while true {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        if list[0] == 0 && list[1] == 0 && list[2] == 0 && list[3] == 0 {
            break
        }
        var a = list[0]
        var b = list[1]
        var c = list[2]
        var d = list[3]
        var v = 0
        while true {
            if a == b && b == c && c == d {
                break
            }
            v += 1
            let aa = a-b > 0 ? a-b : b-a
            let bb = b-c > 0 ? b-c : c-b
            let cc = c-d > 0 ? c-d : d-c
            let dd = d-a > 0 ? d-a : a-d
            a = aa
            b = bb
            c = cc
            d = dd
        }
        print(v)
    }
}

func solution40() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let l = list[0]
    let r = list[1]
    let b = list[2]
    if l == r {
        print(l+r+(b/2)*2)
    } else if l > r {
        if r+b <= l {
            print((r+b)*2)
        } else {
            print(l*2+((b-l+r)/2)*2)
        }
    } else {
        if l+b <= r {
            print((l+b)*2)
        } else {
            print(r*2+((b-r+l)/2)*2)
        }
    }
}

func solution39() {
    var i = 0
    while true {
        guard let line = readLine() else { break }
        i += 1
    }
    print(i)
}

func solution38() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var sum = 0
    var n = list[0]
    let m = list[1]
    while n > 0 {
        sum += n
        n /= m
    }
    print(sum)
}

func solution37() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let list = readLine()!.split(separator: " ")
        var grade = ""
        let p = Int(String(list[1]))!
        if p >= 97 {
            grade = "A+"
        } else if p >= 90 {
            grade = "A"
        } else if p >= 87 {
            grade = "B+"
        } else if p >= 80 {
            grade = "B"
        } else if p >= 77 {
            grade = "C+"
        } else if p >= 70 {
            grade = "C"
        } else if p >= 67 {
            grade = "D+"
        } else if p >= 60 {
            grade = "D"
        } else {
            grade = "F"
        }
        print("\(String(list[0])) \(grade)")
    }
}

func solution36() {
    let list1 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let list2 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var a = Array((list1[0]..<list1[1]))
    for i in list2[0]..<list2[1] {
        if !a.contains(i) {
            a.append(i)
        }
    }
    print(a.count)
}

func solution35() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    if list[0] > 100 || list[1] > 100 || list[2] > 200 || list[3] > 200 || list[4] > 300 || list[5] > 300 || list[6] > 400 || list[7] > 400 || list[8] > 500 {
        print("hacker")
    } else if list.reduce(0, +) >= 100 {
        print("draw")
    } else {
        print("none")
    }
}

func solution34() {
    let n = Int(readLine()!)!
    let e = readLine()!.filter{ $0 == "e" }.count
    let two = n-e
    if e == two {
        print("yee")
    } else if e > two {
        print("e")
    } else {
        print(2)
    }
}

func solution33() {
    var n = Int(readLine()!)!
    if n < 10 {
        print(0)
    } else {
        var i = 1
        while true {
            n = Array(String(n)).map{ Int(String($0))! }.reduce(1, *)
            if n < 10 {
                print(i)
                break
            }
            i += 1
        }
    }
}

func solution32() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let list = readLine()!.split(separator: " ")
        print(String(repeating: String(list[1]), count: Int(String(list[0]))!))
    }
}

func solution31() {
    let n = Int(readLine()!)!
    let str = Array(readLine()!)
    print(String(str[n-1-4...n-1]))
}

func solution30() {
    let t = Int(readLine()!)!
    for i in 1...t {
        let list = readLine()!.split(separator: " ").map{ Double(String($0))! }
        let v = (list[1]/(list[2]+list[3]))*list[4]
        print("\(i) \(v)")
    }
}

func solution29() {
    let t = Int(readLine()!)!
    for i in 1...t {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()
        if list[2] >= list[0]+list[1] {
            print("Case #\(i): invalid!")
        } else if list[0] == list[2] {
            print("Case #\(i): equilateral")
        } else if list[0] == list[1] || list[1] == list[2] {
            print("Case #\(i): isosceles")
        } else {
            print("Case #\(i): scalene")
        }
    }
}

func solution28() {
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

func solution27() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        if list[0] < 12 || list[1] < 4 {
            print(-1)
        } else {
            print(11*list[1]+4)
        }
    }
}

func solution26() {
    let n = Int(readLine()!)!
    if n < 6 {
        print(0)
    } else {
        var c = 0
        for i in 1...(n-1)/2 {
            for j in 1...n-(2*i) {
                if n-(2*i)-j-j >= 2 {
                    c += 1
                } else {
                    break
                }
            }
        }
        print(c)
    }
}

func solution25() {
    let k = Int(readLine()!)!
    for _ in 1...k {
        let count = String(Int(readLine()!)!, radix: 2).filter({ $0 == "1" }).count
        if count == 1 {
            print(1)
        } else {
            print(0)
        }
    }
}

func solution24() {
    let k = Int(readLine()!)!
    for _ in 1...k {
        let n = Int(readLine()!)!
        var sum = 0
        for _ in 1...n {
            let list = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted(by: >)
            if list[0] > 0 {
                sum += list[0]
            }
        }
        print(sum)
    }
}

func solution23() {
    let n = Int(readLine()!)!
    for _ in 1...n {
        let list = readLine()!.split(separator: " ")
        if list[1] == "kg" {
            var v = Double(list[0])!*2.2046
            print("\(String(format: "%.4f", v)) lb")
        } else if list[1] == "lb" {
            var v = Double(list[0])!*0.4536
            print("\(String(format: "%.4f", v)) kg")
        } else if list[1] == "l" {
            var v = Double(list[0])!*0.2642
            print("\(String(format: "%.4f", v)) g")
        } else if list[1] == "g" {
            var v = Double(list[0])!*3.7854
            print("\(String(format: "%.4f", v)) l")
        }
    }
}

func solution22() {
    while true {
        let str = readLine()!
        if str == "***" { break }
        print(String(str.reversed()))
    }
}

func solution21() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    for i in 0..<list[0] {
        var str = ""
        for j in 1...list[1] {
            if j == list[1] {
                str += "\(i*list[1]+j)"
            } else {
                str += "\(i*list[1]+j) "
            }
        }
        print(str)
    }
}

func solution20() {
    let str = Array(readLine()!)
    var s = 1
    var b = 4
    let dic:[Character:[Int]] = [
        "A":[1,2],
        "B":[1,3],
        "C":[1,4],
        "D":[2,3],
        "E":[2,4],
        "F":[3,4]
    ]
    for c in str {
        if dic[c]![0] == s {
            s = dic[c]![1]
        } else if  dic[c]![1] == s {
            s = dic[c]![0]
        }
        if dic[c]![0] == b {
            b = dic[c]![1]
        } else if  dic[c]![1] == b {
            b = dic[c]![0]
        }
    }
    print("\(s)\n\(b)")
}

func solution19() {
    var i = 0
    while true {
        i += 1
        let list = readLine()!.split(separator: " ").map{ Double(String($0))! }
        if list[0] == 0 && list[1] == 0 && list[2] == 0 { break }
        if i > 1 {print("")}
        if list[0] == -1 {
            if list[1] >= list[2] {
                print("Triangle #\(i)\nImpossible.")
            } else {
                let v = sqrt(pow(list[2], 2) - pow(list[1], 2))
                print("Triangle #\(i)\na = \(String(format: "%.3f", v))")
            }
        } else if list[1] == -1 {
            if list[0] >= list[2] {
                print("Triangle #\(i)\nImpossible.")
            } else {
                let v = sqrt(pow(list[2], 2) - pow(list[0], 2))
                print("Triangle #\(i)\nb = \(String(format: "%.3f", v))")
            }
        } else if list[2] == -1 {
            let v = sqrt(pow(list[0], 2) + pow(list[1], 2))
            print("Triangle #\(i)\nc = \(String(format: "%.3f", v))")
        }
        break
    }
}

func solution18() {
    while true {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        if list.count == 1 && list[0] == 0 { break }
        var sum = 1
        for i in 1...list.count/2 {
            sum = list[1+(i-1)*2]*sum - list[2+(i-1)*2]
        }
        print(sum)
        break
    }
}

func solution17() {
    let dic:[Character:Character] = [
        "E":"I",
        "I":"E",
        "S":"N",
        "N":"S",
        "T":"F",
        "F":"T",
        "J":"P",
        "P":"J"
    ]
    let m = String(readLine()!.map{
        dic[$0]!
    })
    print(m)
}

func solution16() {
    while true {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        if list[0] == 0 && list[1] == 0 && list[2] == 0 && list[3] == 0 {
            break
        }
        print("\(list[3]-list[0]) \(list[2]-list[1])")
    }
}

func solution15() {
    while true {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        if list[0] == 0 && list[1] == 0 {
            break
        }
        let a = list[0]
        let b = list[1]
        print(a-b+a)
    }
}

func solution14() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var isDone = false
    if list[0] > 0 {
        for _ in 1...list[0] {
            let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
            if list[0] != list[1] {
                print("Wrong Answer")
                isDone = true
                break
            }
        }
    }
    if !isDone && list[1] > 0 {
        for _ in 1...list[1] {
            let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
            if list[0] != list[1] {
                print("Why Wrong!!!")
                isDone = true
                break
            }
        }
    }
    if !isDone {
        print("Accepted")
    }
}

func solution13() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let n = list[0]
    var x = list[1]
    let k = list[2]
    for _ in 1...k {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        if list[0] == x {
            x = list[1]
        } else if list[1] == x {
            x = list[0]
        }
    }
    print(x)
}

func solution12() {
    readLine()
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted(by: >)
    print(list[0])
}

func solution11() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let n = Int(readLine()!)!
        var sum = 0
        for i in 1...n {
            if i%2 == 1 {
                sum += i
            }
        }
        print(sum)
    }
}

func solution10() {
    let al = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let bl = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = (al[1]+bl[0]-1)/bl[0]
    let b = (bl[1]+al[0]-1)/al[0]
    if a == b {
        print("DRAW")
    } else if a > b {
        print("PLAYER A")
    } else {
        print("PLAYER B")
    }
}

func solution9() {
    let n = Int(readLine()!)!
    if n%2 == 1 {
        print(0)
    } else if (n/2)%2 == 1 {
        print(1)
    } else {
        print(2)
    }
}

func solution8() {
    let n = Int(readLine()!)!
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    readLine()!.split(separator: " ").forEach{ i in
        if list.contains(Int(String(i))!) {
            print(1)
        } else {
            print(0)
        }
    }
}

// 10989
func solution7() {
    final class FastIO {
       private let buffer: [UInt8]
       private var index: Int = 0
       private let fhOutput: FileHandle = FileHandle.standardOutput

       init(fhInput: FileHandle = FileHandle.standardInput) {
           buffer = Array(try! fhInput.readToEnd()!) + [UInt8(0)]
       }

       @inline(__always) private func read() -> UInt8 {
           defer {
               index += 1
           }
           return buffer[index]
       }

       @inline(__always) func readInt() -> Int {
           var sum = 0
           var now = read()
           var isPositive = true
           while now == 10 || now == 32 {
               now = read()
           }
           if now == 45 {
               isPositive.toggle(); now = read()
           }
           while now >= 48, now <= 57 {
               sum = sum * 10 + Int(now - 48)
               now = read()
           }
           return sum * (isPositive ? 1 : -1)
       }

        @inline(__always) func readString() -> String {
            var now = read()
            while now == 10 || now == 32 {
                now = read()
            }
            let beginIndex = index-1
            while now != 10, now != 32, now != 0 {
                now = read()
            }
            return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
        }

       @inline(__always) func readByteSequenceWithoutSpaceAndLineFeed() -> [UInt8] {
           var now = read()
           while now == 10 || now == 32 {
               now = read()
           }
           let beginIndex = index - 1
           while now != 10,
                 now != 32,
                 now != 0 {
               now = read()
           }
           return Array(buffer[beginIndex..<(index - 1)])
       }

       @inline(__always) func print(_ s: String) {
           fhOutput.write(s.data(using: .utf8)!)
       }
    }

    struct MinHeap<T: Comparable> {
        var heap: [T] = []
        
        var isEmpty: Bool {
            return heap.count <= 1 ? true : false
        }
        
        init() {}
        init(_ element: T) {
            heap.append(element) // 0번 index채우기 용
            heap.append(element) // 실제 Root Node 채움.
        }
        
        mutating func insert(_ element: T) {
            if heap.isEmpty {
                heap.append(element)
                heap.append(element)
                return
            }
            heap.append(element)
            
            func isMoveUp(_ insertIndex: Int) -> Bool {
                if insertIndex <= 1 { // Root Node일 때,
                    return false
                }
                let parentIndex = insertIndex / 2
                return heap[insertIndex] < heap[parentIndex] ? true : false
            }
            
            var insertIndex = heap.count - 1
            while isMoveUp(insertIndex) {
                let parentIndex = insertIndex / 2
                heap.swapAt(insertIndex, parentIndex)
                insertIndex = parentIndex
            }
        }
        
        enum moveDownStatus { case left, right, none }
        
        mutating func pop() -> T? {
            if heap.count <= 1 {
                return nil
            }
            let returnData = heap[1]
            heap.swapAt(1, heap.count - 1)
            heap.removeLast()
            
            func moveDown(_ poppedIndex: Int) -> moveDownStatus {
                let leftChildIndex = poppedIndex * 2
                let rightChildIndex = leftChildIndex + 1
                
                // case1. 모든(왼쪽) 자식 노드가 없는 경우(완전이진트리는 왼쪽부터 채워지므로)
                if leftChildIndex >= heap.count {
                    return .none
                }
                
                // case2. 왼쪽 자식 노드만 있는 경우
                if rightChildIndex >= heap.count {
                    return heap[leftChildIndex] < heap[poppedIndex] ? .left : .none
                }
                
                // case3. 왼쪽&오른쪽 자식 노드 모두 있는 경우
                // case3-1. 자식들이 자신보다 모두 큰 경우(자신이 제일 작은 경우)
                if (heap[leftChildIndex] > heap[poppedIndex]) && (heap[rightChildIndex] > heap[poppedIndex]) {
                    return .none
                }
                
                // case3-2. 자식들이 자신보다 모두 작은 경우(왼쪽과 오른쪽 자식 중, 더 작은 자식을 선별)
                if (heap[leftChildIndex] < heap[poppedIndex]) && (heap[rightChildIndex] < heap[poppedIndex]) {
                    return heap[leftChildIndex] < heap[rightChildIndex] ? .left : .right
                }
                
                // case3-3. 왼쪽과 오른쪽 자식 중, 한 자식만 자신보다 작은 경우
                if (heap[leftChildIndex] < heap[poppedIndex]) || (heap[rightChildIndex] < heap[poppedIndex]) {
                    return heap[leftChildIndex] < heap[rightChildIndex] ? .left : .right
                }
                
                return .none
            }
            
            var poppedIndex = 1
            while true {
                switch moveDown(poppedIndex) {
                case .none:
                    return returnData
                case .left:
                    let leftChildIndex = poppedIndex * 2
                    heap.swapAt(poppedIndex, leftChildIndex)
                    poppedIndex = leftChildIndex
                case .right:
                    let rightChildIndex = (poppedIndex * 2) + 1
                    heap.swapAt(poppedIndex, rightChildIndex)
                    poppedIndex = rightChildIndex
                }
            }
        }
    }

    let fastIO = FastIO()
    let n = fastIO.readInt()
    var arr = [Int](repeating: 0, count: 10001)
    for _ in 0...n {
        let n = fastIO.readInt()
        arr[n] += 1
    }
    var answer = ""
    for i in 1...10000 {
        answer += String(repeating:"\(i)\n",count:arr[i])
    }
    print(answer)
}

func solution6() {
    while true {
        guard let line = readLine() else { break }
        let list = line.split(separator: " ").map{ Int($0)! }
        let v = max(list[1]-list[0], list[2]-list[1])-1
        print(v)
    }
}

// 5692
func solution5() {
    func factorial(_ n: Int) -> Int {
      var n = n
      var result = 1
      while n > 1 {
        result *= n
        n -= 1
      }
      return result
    }

    while true {
        let n = readLine()!
        if n == "0" {
            break
        }
        let list = Array(n.reversed())
        var v = 0
        for i in 0..<list.count {
            if Int(String(list[i]))! > 0 {
                v += Int(String(list[i]))!*factorial(i+1)
            }
        }
        print(v)
    }
}

// 9501
func solution4() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let list = readLine()!.split(separator: " ").map{ Int($0)! }
        var c = 0
        let d = list[1]
        for _ in 1...list[0] {
            let l = readLine()!.split(separator: " ").map{ Double($0)! }
            let v = (Double(d)/l[0])*l[2]
            if l[1] >= v {
                c += 1
            }
        }
        print(c)
    }
}

// 5618
func solution3() {
    let n = Int(readLine()!)!
    let list = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
    if n == 2 {
        for i in 1...list[0] {
            if list[0]%i == 0 && list[1]%i == 0 {
                print(i)
            }
        }
    } else {
        for i in 1...list[0] {
            if list[0]%i == 0 && list[1]%i == 0 && list[2]%i == 0 {
                print(i)
            }
        }
    }
}

func solution2() {
    let n = Int(readLine()!)!
    var isDone = false

    for i in n/2...n {
        for j in n/2...i {
            if n*n < i*i+j*j {
                isDone = true
                print("\(j) \(i)")
                break
            }
        }
        if isDone {
            break
        }
    }
}

func solution1() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
    let h = list[0]
    let m = list[1]
    let aS = m == 0 ? "00" : 60-m < 10 ? "0\(60-m)" : "\(60-m)"
    let nM = m == 0 ? m-h : m-h-1
    let isMinusM = nM < 0
    let aM = isMinusM ? (nM+60 < 10 ? "0\(nM+60)" : "\(nM+60)") : nM < 10 ? "0\(nM)" : "\(nM)"
    let aH = isMinusM ? h-1 < 10 ? "0\(h-1)" : "\(h-1)" : h < 10 ? "0\(h)" : "\(h)"
    print("\(aH):\(aM):\(aS)")
}
