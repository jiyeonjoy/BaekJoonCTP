import Foundation

func s25278() {
    let t = Int(readLine()!)!
    var te = -30
    var ox = 0
    var oc = 0
    for _ in 1...t {
        let list = readLine()!.split(separator: " ").map{ String($0) }
        let n = Int(list[1])!
        if list[0] == "temperature" {
            te += n
        } else if list[0] == "oxygen" {
            ox += n
        } else {
            oc += n
        }
    }
    if oc >= 9 && ox >= 14 && te >= 8 {
        print("liveable")
    } else {
        print("not liveable")
    }
}

func s25786() {
    var a = Int(readLine()!)!
    var b = Int(readLine()!)!
    var v = ""
    if a == 0 && b == 0 {
        v = "0"
    } else {
        while a > 0 || b > 0 {
            let c = a%10
            let d = b%10
            if (c >= 7 && d >= 7) || (c <= 2 && d <= 2) {
                v = "0"+v
            } else {
                v = "9"+v
            }
            a /= 10
            b /= 10
        }
    }
    print(v)

}

func s25813() {
    let str = Array(readLine()!)
    let u:Int = str.firstIndex(of: "U")!
    let f:Int = str.lastIndex(of: "F")!
    var v = ""
    if u > 0 {
        v += String(repeating: "-", count: u)
    }
    v += "U"
    v += String(repeating: "C", count: f-u-1)
    v += "F"
    if f < str.count-1 {
        v += String(repeating: "-", count: str.count-1-f)
    }

    print(v)
}

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
