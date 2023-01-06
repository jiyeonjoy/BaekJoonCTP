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

import Foundation

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
