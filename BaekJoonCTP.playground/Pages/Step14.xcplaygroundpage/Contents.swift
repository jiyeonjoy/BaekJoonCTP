import Foundation

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
