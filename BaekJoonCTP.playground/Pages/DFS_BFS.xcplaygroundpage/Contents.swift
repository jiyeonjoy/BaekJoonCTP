import Foundation

let graph = [
    [], // 0
    [2,3], // 1
    [1,4,5], // 2
    [1,6,7], // 3
    [2], // 4
    [2], // 5
    [3], // 6
    [3,8], // 7
    [7] // 8
]

var visited = Array.init(repeating: false, count: graph.count)

func dfs(start: Int) {
  visited[start] = true // 시작점
  
  print(start, terminator: " ")
  
  for i in graph[start] { // 왼쪽부터 순회
    if !visited[i] {
      dfs(start: i)
    }
  }
}

var queue = Queue<Int>()
// bfs
func bfs(start: Int) {
  queue.enquque(start) // 시작점 큐에 넣기
  visited[start] = true // 시작점 방문으로 체크
  
  while !queue.isEmpty {
    guard let elem = queue.dequeue() else { return }
    print(elem, terminator: " ")
    
    for i in graph[elem] {
      if !visited[i] {
        queue.enquque(i)
        visited[i] = true
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

dfs(start: 1)
bfs(start: 1)
