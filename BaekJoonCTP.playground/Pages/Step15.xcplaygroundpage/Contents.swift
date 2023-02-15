import Foundation

func s1233() {
    var list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = list[0]
    let b = list[1]
    let c = list[2]
    var dic:[Int:Int] = [:]
    for i in 1...a {
        for j in 1...b {
            for k in 1...c {
                let n = dic[i+j+k] ?? 0
                dic[i+j+k] = n+1
            }
        }
    }
    let sorted = dic.sorted {
        if $0.value == $1.value {
            return $0.key < $1.key
        } else {
            return $0.value > $1.value
        }
        
    }
    print(sorted[0].key)
}

func s27481() {
    readLine()
    var dic:[Int:Int] = [
        0:0,
        1:0,
        2:0,
        3:0,
        4:0,
        5:0,
        6:0,
        7:0,
        8:0,
        9:0,
    ]
    let str = readLine()!
    str.map {
        if $0 == "L" {
            for i in 0...9 {
                if dic[i] == 0 {
                    dic[i] = 1
                    break
                }
            }
        } else if $0 == "R" {
            for i in 0...9 {
                if dic[9-i] == 0 {
                    dic[9-i] = 1
                    break
                }
            }
        } else {
            let n = Int(String($0))!
            dic[n] = 0
        }
    }
    var result = ""
    for i in 0...9 {
        result.write("\(dic[i]!)")
    }
    print(result)
}

func s16088() {
    let n = Int(readLine()!)!
    for _ in 1...n {
        var list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let l = list[0]
        let r = list[1]
        let n = list[2]
        let m = list[3]
        if n == m {
            print("G")
        } else {
            let a = abs(n-m)
            if a <= l && a > r {
                print("L")
            } else if a <= r && a > l {
                print("R")
            } else {
                print("E")
            }
        }
    }
}
