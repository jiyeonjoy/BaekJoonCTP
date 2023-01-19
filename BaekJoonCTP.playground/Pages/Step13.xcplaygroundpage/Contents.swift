import Foundation

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

func s2606() {
    let n = Int(readLine()!)!
    let m = Int(readLine()!)!
    var list:[[Int]] = []
    for _ in 1...m {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        list.append(l)
    }
    var visited:[Bool] = Array.init(repeating: false, count: n)
    var graph:[[Int]] = Array.init(repeating: [], count: n)
    for l in list {
        var ll = graph[l[0]-1]
        ll.append(l[1]-1)
        graph[l[0]-1] = ll

        var lll = graph[l[1]-1]
        lll.append(l[0]-1)
        graph[l[1]-1] = lll
    }

    var queue = Queue<Int>()

    func bfs(start: Int) {
      queue.enquque(start)
      visited[start] = true
        
      while !queue.isEmpty {
        guard let elem = queue.dequeue() else { return }
        
        for i in graph[elem] {
          if !visited[i] {
            queue.enquque(i)
              visited[i] = true
          }
        }
      }
    }

    bfs(start: 0)
    print(visited.filter{ $0 }.count-1)
}

func s2178() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let n = l[0]
    let m = l[1]

    var list:[[Int]] = []
    var visited:[[Bool]] = []

    for _ in 1...n {
        let l = Array(readLine()!).map{ Int(String($0))! }
        list.append(l)
        visited.append(Array.init(repeating: false, count: m))
    }

    let dir = [[0,1],[0,-1],[1,0],[-1,0]]

    var queue = Queue<[Int]>()

    func bfs(i:Int, j:Int) {
        visited[i][j] = true
        queue.enquque([i,j])
        let num = list[i][j]
        while !queue.isEmpty {
            let q = queue.dequeue()!
            for l in dir {
                let x = q[0]+l[0]
                let y = q[1]+l[1]
                let num = list[q[0]][q[1]]
                if x >= 0 && x < n && y >= 0 && y < m && !visited[x][y] && list[x][y] == 1 {
                    queue.enquque([x,y])
                    list[x][y] = num+1
                }
            }
        }
    }

    bfs(i:0, j:0)
    print(list[n-1][m-1])
}

func s1260() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }

    let n = l[0]
    let m = l[1]
    let v = l[2]

    var g:[[Int]] = []

    for _ in 1...m {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        g.append(l)
    }

    var graph:[[Int]] = Array.init(repeating: [], count: n+1)
    var graph2:[[Int]] = Array.init(repeating: [], count: n+1)
    for l in g {
        var ll = graph[l[0]]
        ll.append(l[1])
        graph[l[0]] = ll.sorted()
        graph2[l[0]] = ll.sorted()

        var lll = graph2[l[1]]
        lll.append(l[0])
        graph[l[1]] = lll.sorted()
        graph2[l[1]] = lll.sorted()
    }


    var visited = Array.init(repeating: false, count: graph.count+1)
    var visited2 = Array.init(repeating: false, count: graph.count+1)

    func dfs(start: Int) {
      visited[start] = true // 시작점

      print(start, terminator: " ")

      for i in graph[start] { // 왼쪽부터 순회
        if !visited[i] {
          dfs(start: i)
        }
      }
    }

    dfs(start: v)
    print("")

    var queue = Queue<Int>()
    // bfs
    func bfs(start: Int) {
      queue.enquque(start) // 시작점 큐에 넣기
      visited2[start] = true // 시작점 방문으로 체크
      
      while !queue.isEmpty {
        guard let elem = queue.dequeue() else { return }
        print(elem, terminator: " ")
        
        for i in graph2[elem] {
          if !visited2[i] {
            queue.enquque(i)
              visited2[i] = true
          }
        }
      }
    }
    
    bfs(start: v)
}

func s2061() {
    func isPrime(num: Int) -> Bool {
        if(num<4) {
            return num == 1 ? false : true
        }
        for i in 2...Int(sqrt(Double(num))) {
            if(num % i == 0) { return false }
        }
        return true
    }

    func mod(_ s:String, _ p:Int) -> Int {
        var ret = 0
        for c in s {
            ret = (ret*10+Int(String(c))!)%p
        }
        return ret
    }

    let l = readLine()!.split(separator: " ").map{ String($0) }
    let k = l[0]
    let m = Int(l[1])!
    var a = -1
    for i in 1...m-1 {
        if isPrime(num: i) && mod(k, i) == 0 {
            a = i
            break
        }
    }
    if a == -1 {
        print("GOOD")
    } else {
        print("BAD \(a)")
    }
}

func s3036() {
    func gcd(_ a: Int, _ b: Int) -> Int{
        if (b == 0) { return a }
        return gcd(b, a % b)
    }

    readLine()
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = l[0]
    for i in 1...l.count-1 {
        let b = l[i]
        let g = gcd(a, b)
        print("\(a/g)/\(b/g)")
    }
}

func s2981() {
    func gcd(_ a: Int, _ b: Int) -> Int{
        if (b == 0) { return a }
        return gcd(b, a % b)
    }

    let n = Int(readLine()!)!
    var l:[Int] = []
    var minv = 1000000000
    for _ in 1...n {
        let num = Int(readLine()!)!
        l.append(num)
        if num < minv {
            minv = num
        }
    }

    var str = ""
    var v = l[0]-minv
    for n in l {
        if n > minv {
            v = gcd(v, n-minv)
        }
    }

    if v > 3 {
        for i in 2...v/2 {
            if v%i == 0 {
                if str == "" {
                    str += "\(i)"
                } else {
                    str += " \(i)"
                }
            }
        }
    }

    if str == "" {
        str += "\(v)"
    } else {
        str += " \(v)"
    }

    print(str)
}
