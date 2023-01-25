import Foundation

func s26314() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let name = readLine()!
        print(name)
        let a = name.count
        let b = name.filter{ "aeiou".contains($0) }.count
        if a-b < b {
            print(1)
        } else {
            print(0)
        }
    }
}

func s26432() {
    let t = Int(readLine()!)!
    for i in 1...t {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let m = list[0]
        let n = list[1]
        let p = list[2]
        var john:[Int] = []
        var dic:[Int:Int] = [:]
        for j in 1...m {
            let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
            if j == p {
                john = l
            }
            for k in 0..<n {
                let a:Int = dic[k] ?? 0
                if a < l[k] {
                    dic[k] = l[k]
                }
            }
        }
        var v = 0
        for k in 0..<n {
            var a:Int = dic[k] ?? 0
            if john[k] < a {
                v += a-john[k]
            }
        }
        print("Case #\(i): \(v)")
    }
}
