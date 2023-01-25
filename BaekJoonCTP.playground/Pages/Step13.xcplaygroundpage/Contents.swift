import Foundation

func s25985() {
    let list = readLine()!.split(separator: " ").map{ Double(String($0))! }
    let x = list[0]
    let y = list[1]
    let a = 100-x
    let b = 100-y
    print((b*x)/(a*y))
}

func s26198() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let str = readLine()!
        var sum = 0
        str.map{
            if $0 == "I" {
                sum += 1
            } else if $0 == "V" {
                sum += 5
            } else if $0 == "X" {
                sum += 10
            } else if $0 == "L" {
                sum += 50
            } else if $0 == "C" {
                sum += 100
            } else if $0 == "D" {
                sum += 500
            } else if $0 == "M" {
                sum += 1000
            }
        }
        print(sum)
    }
}

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
