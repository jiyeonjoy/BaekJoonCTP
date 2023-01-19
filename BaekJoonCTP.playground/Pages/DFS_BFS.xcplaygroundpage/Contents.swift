import Foundation

//let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
let l = "4 5 1".split(separator: " ").map{ Int(String($0))! }
//let l = "5 5 3".split(separator: " ").map{ Int(String($0))! }

let n = l[0]
let m = l[1]
let v = l[2]

var g:[[Int]] = [
    [1, 2],
    [1, 3],
    [1, 4],
    [2, 4],
    [3, 4],
]
//var g:[[Int]] = [
//    [5, 4],
//    [5, 2],
//    [1, 2],
//    [3, 4],
//    [3, 1],
//]

//for _ in 1...m {
//    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
//    g.append(l)
//}

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

bfs(start: v)
