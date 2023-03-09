import Foundation

func s9655() {
    let n = Int(readLine()!)!
    if n%2 == 0 {
        print("CY")
    } else {
        print("SK")
    }
}

func s2822() {
    var dic:[Int:Int] = [:]
    for i in 1...8 {
        let n = Int(readLine()!)!
        dic[n] = i
    }
    var list:[Int] = []
    let sorted = dic.keys.sorted(by: >)
    var sum = 0
    for i in 0...4 {
        sum += sorted[i]
        list.append(dic[sorted[i]]!)
    }
    print(sum)
    list.sort()
    var str = ""
    for n in list {
        str += "\(n) "
    }
    str.removeLast()
    print(str)
}

func s2167() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let N = l[0]
    var b:[[Int]] = []
    for _ in 1...N {
        b.append(readLine()!.split(separator: " ").map{ Int(String($0))! })
    }
    let n = Int(readLine()!)!
    for _ in 1...n {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let i = l[0]
        let j = l[1]
        let x = l[2]
        let y = l[3]
        var sum = 0
        for m in i...x {
            for l in j...y {
                sum += b[m-1][l-1]
            }
        }
        print(sum)
    }
}

func s1551() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let k = l[1]
    var list = readLine()!.split(separator: ",").map{ Int(String($0))! }
    var rl:[Int] = []
    if k > 0 {
        for _ in 1...k {
            for i in 0...list.count-2 {
                rl.append(list[i+1]-list[i])
            }
            list = rl
            rl.removeAll()
        }
    }
    var str = ""
    for n in list {
        str += "\(n),"
    }
    str.removeLast()
    print(str)
}

func s2484() {
    let n = Int(readLine()!)!
    var maxP = 0
    for _ in 1...n {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()
        if list[0] == list[3] {
            let p = 50000+list[0]*5000
            if p > maxP {
                maxP = p
            }
        } else if list[0] == list[2] {
            let p = 10000+list[0]*1000
            if p > maxP {
                maxP = p
            }
        } else if list[1] == list[3] {
            let p = 10000+list[1]*1000
            if p > maxP {
                maxP = p
            }
        } else if list[0] == list[1] && list[2] == list[3] {
            let p = 2000+list[0]*500+list[2]*500
            if p > maxP {
                maxP = p
            }
        } else if list[0] == list[1] {
            let p = 1000+list[0]*100
            if p > maxP {
                maxP = p
            }
        } else if list[1] == list[2] {
            let p = 1000+list[1]*100
            if p > maxP {
                maxP = p
            }
        } else if list[2] == list[3] {
            let p = 1000+list[2]*100
            if p > maxP {
                maxP = p
            }
        } else {
            let p = list[3]*100
            if p > maxP {
                maxP = p
            }
        }

    }
    print(maxP)
}

func s1356() {
    let str = readLine()!
    var result = "YES"
    if str.count == 1 {
        result = "NO"
    } else {
        let arr = Array(str)
        var ai = 0
        var bi = arr.count-1
        var a = Int(String(arr[ai]))!
        var b = Int(String(arr[bi]))!
        while ai+1 < bi {
            if (a <= b && a > 0) || b == 0 {
                ai += 1
                a *= Int(String(arr[ai]))!
            } else {
                bi -= 1
                b *= Int(String(arr[bi]))!
            }
        }
        if a != b {
            result = "NO"
        }
    }
    print(result)
}

func s17478() {
    let n = Int(readLine()!)!
    print("어느 한 컴퓨터공학과 학생이 유명한 교수님을 찾아가 물었다.")
    jp(0)

    func jp(_ i:Int) {
        var bar = i > 0 ? String(repeating: "____", count: i) : ""
        if i == n {
            print("""
    \(bar)"재귀함수가 뭔가요?"
    \(bar)"재귀함수는 자기 자신을 호출하는 함수라네"
    \(bar)라고 답변하였지.
    """)
        } else {
            print("""
    \(bar)"재귀함수가 뭔가요?"
    \(bar)"잘 들어보게. 옛날옛날 한 산 꼭대기에 이세상 모든 지식을 통달한 선인이 있었어.
    \(bar)마을 사람들은 모두 그 선인에게 수많은 질문을 했고, 모두 지혜롭게 대답해 주었지.
    \(bar)그의 답은 대부분 옳았다고 하네. 그런데 어느 날, 그 선인에게 한 선비가 찾아와서 물었어."
    """)
            jp(i+1)
            print("\(bar)라고 답변하였지.")
        }
    }
}

func s1789() {
    let S = Int(readLine()!)!
    var i = 1
    var sum = 0
    while true {
        if S == sum {
            i -= 1
            break
        } else if S < sum {
            i -= 2
            break
        }
        sum += i
        i += 1
    }
    print(i)
}

func s1094() {
    let n = Int(readLine()!)!
    let str = String(n, radix: 2)
    let c = str.filter{ $0 == "1" }.count
    print(c)
}

func s12605() {
    let n = Int(readLine()!)!
    for i in 1...n {
        let l = readLine()!.split(separator: " ").map{ String($0) }
        var str = ""
        for j in 0..<l.count {
            str.write(" \(l[l.count-j-1])")
        }
        print("Case #\(i):\(str)")
    }
}

func s10811() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let N = l[0]
    let M = l[1]
    var dic:[Int:Int] = [:]
    for i in 1...N {
        dic[i] = i
    }
    for _ in 1...M {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let i = l[0]
        let j = l[1]
        var temp:[Int:Int] = [:]
        for n in i...j {
            temp[j-n] = dic[n]
        }
        for n in i...j {
            dic[n] = temp[n-i]
        }
    }
    var str = ""
    for i in 1...N {
        str.write("\(dic[i] ?? 0) ")
    }
    str.removeLast()
    print(str)
}

func s10810() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let N = l[0]
    let M = l[1]
    var dic:[Int:Int] = [:]
    for _ in 1...M {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let i = l[0]
        let j = l[1]
        let k = l[2]
        for n in i...j {
            dic[n] = k
        }
    }
    var str = ""
    for i in 1...N {
        str.write("\(dic[i] ?? 0) ")
    }
    str.removeLast()
    print(str)
}

func s9772() {
    while true {
        guard let line = readLine() else { break }
        var list = line.split(separator: " ").map{ Double(String($0))! }
        let x = list[0]
        let y = list[1]
        if x == 0 || y == 0 {
            print("AXIS")
        } else if x > 0 && y > 0 {
            print("Q1")
        } else if x > 0 {
            print("Q4")
        } else if y > 0 {
            print("Q2")
        } else {
            print("Q3")
        }
    }
}

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
