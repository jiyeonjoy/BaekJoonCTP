import Foundation

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
