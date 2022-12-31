//let list = readLine()!.split(separator: " ").map{ Int($0)! }
//Int(readLine()!)!

func solution50() {}
func solution49() {}
func solution48() {}
func solution47() {}
func solution46() {}
func solution45() {}
func solution44() {}
func solution43() {}
func solution42() {}
func solution41() {}
func solution40() {}

import Foundation

func solution39() {
    let a = Int(readLine()!)!
    let b = Int(readLine()!)!
    if a <= 50 && b <= 10 {
        print("White")
    } else if b > 30 {
        print("Red")
    } else {
        print("Yellow")
    }
}

func solution38() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
    var sum = 0
    sum += list[2]-list[0]
    sum += list[2]-list[1]
    print(sum)
}

func solution37() {
    let list = readLine()!.split(separator: " ")
    if list[0] == list[1] && list[1] == list[2] {
        print("*")
    } else if list[0] == list[1] {
        print("C")
    } else if list[1] == list[2] {
        print("A")
    } else {
        print("B")
    }
}

func solution36() {
    let a = Int(readLine()!)!
    let b = Int(readLine()!)!
    let c = Int(readLine()!)!
    let minV = min(a*4+b*2, a*2+c*2, b*2+c*4)
    print(minV)
}

func solution35() {
    let num = 10.00//Double(readLine()!)!
    let a = 100000*3.785411784/(num*1609.344)
    print(a)
}

func solution34() {
    let dic:[Int:String] = [1995: "ITMO",
                            1996: "SPbSU",
                            1997: "SPbSU",
                            1998: "ITMO",
                            1999: "ITMO",
                            2000: "SPbSU",
                            2001: "ITMO",
                            2002: "ITMO",
                            2003: "ITMO",
                            2004: "ITMO",
                            2005: "ITMO",
                            2006: "PetrSU, ITMO",
                            2007: "SPbSU",
                            2008: "SPbSU",
                            2009: "ITMO",
                            2010: "ITMO",
                            2011: "ITMO",
                            2012: "ITMO",
                            2013: "SPbSU",
                            2014: "ITMO",
                            2015: "ITMO",
                            2016: "ITMO",
                            2017: "ITMO",
                            2018: "SPbSU",
                            2019: "ITMO"]
    let year = 2003//Int(readLine()!)!
    let str = dic[year]!
    print(str)
}

func solution33() {
    let num:Double = 1234//Double(readLine()!)!
    print(sqrt(num)*4)
}

func solution32() {
    while true {
        let num = Double(readLine()!)!
        if num < 0 {
            break
        }
        let moon = num*0.167
        
        print("Objects weighing \(String(format: "%.2f", num)) on Earth will weigh \(String(format: "%.2f", moon)) on the moon.")
    }
}

func solution31() {
    let first = readLine()!.split(separator: " ").map{ Int($0)! }
    let second = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = first[0] + second[1]
    let b = first[1] + second[0]
    if a > b {
        print("Persepolis")
    } else if a == b {
        if second[1] > first[1] {
            print("Persepolis")
        } else if second[1] == first[1] {
            print("Penalty")
        } else {
            print("Esteghlal")
        }
    } else {
        print("Esteghlal")
    }
}

func solution30() {
    let count = Int(readLine()!)!
    print("Gnomes:")
    for _ in 1...count {
        let list = readLine()!.split(separator: " ").map{ Int($0)! }
        if (list[0] < list[1] && list[1] < list[2]) || (list[0] > list[1] && list[1] > list[2]) {
            print("Ordered")
        } else {
            print("Unordered")
        }
    }
}

func solution29() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = list[0]-list[2] > 1 && list[1]-list[3] > 1 ? 1 : 0
    print(a)
}

func solution28() {
//    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let list = "10 2".split(separator: " ").map{ Int($0)! }
    let all = list[0]*1000
    let a = list[1]*1000
    var max = 0
    let first = a + a/2 + a/4
    let second = a*2 + a + a/2
    let third = a*4 + a*2 + a
    if third <= all {
        max = third
    } else if second <= all {
        max = second
    } else if first <= all {
        max = first
    } else {
        max = 0
    }
    print(max)
}

func solution27() {
    let start = readLine()!.split(separator: " ").map{ Int($0) ?? 0 }
    let end = readLine()!.split(separator: " ").map{ Int($0) ?? 0 }
    var a = 0
    var minusM = end[4] < start[4]
    a += minusM ? end[4] + 60 - start[4] : end[4] - start[4]
    var minusH = end[2] - (minusM ? 1 : 0) < start[2]
    a += (minusH ? end[2] - (minusM ? 1 : 0) + 60 - start[2] : end[2] - (minusM ? 1 : 0) - start[2])*60
    var plus24 = end[0] - (minusH ? 1 : 0) < start[0]
    a += (plus24 ? end[0] - (minusH ? 1 : 0) + 24 - start[0] : end[0] - (minusH ? 1 : 0) - start[0])*3600
    print(a)
}

func solution26() {
//    let sl = readLine()!.split(separator: " ").map{ Double($0)! }
//    let al = readLine()!.split(separator: " ").map{ Double($0)! }
    let sl = "841 108".split(separator: " ").map{ Double($0)! }
    let al = "8 606".split(separator: " ").map{ Double($0)! }
    let slp = sl[0]/sl[1]
    let alp = (al[0]*al[0]*3.14159265359)/al[1]
    if slp > alp {
        print("Slice of pizza")
    } else {
        print("Whole pizza")
    }
}

func solution25() {
    let a = Int(readLine()!)!
    let p = 5*a-400
    let s = p < 100 ? 1 : p == 100 ? 0 : -1
    print(p)
    print(s)
}

func solution24() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = list[0]
    let h = list[1]
    let v = list[2]
    let maxW = max(n-h, h)
    let maxH = max(n-v, v)
    print(maxW*maxH*4)
}

func solution23() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
    print(list[1])
}

func solution22() {
    let count = 2//Int(readLine()!)!
    var a = 0
    for _ in 1...count {
//        let d = readLine()!.split(separator: "D-").map{ Int($0)! }
        let d:[Int] = "D-90".split(separator: "D-").map{ Int($0)! }
        if d[0] <= 90 {
            a += 1
        }
    }
    print(a)
}

func solution21() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    if list[1] <= list[0] && list[2] >= list[0] {
        print(list[0])
    } else if list[2] < list[0] {
        print(list[2])
    } else {
        print(list[1])
    }
}

func solution20() {
    let count = Int(readLine()!)!
    var a = 1000
    var isGet = false
    for _ in 1...count {
        let list = readLine()!.split(separator: " ").map{ Int($0)! }
        if list[1] >= list[0] {
            isGet = true
            a = min(a, list[1])
        }
    }
    if !isGet {
        a = -1
    }
    print(a)
}

func solution19() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = list[0]
    let a = list[1]
    let b = list[2]
    let c = list[3]
    let d = list[4]
    let aP = ((n+a-1)/a)*b
    let cP = ((n+c-1)/c)*d
    print(min(aP,cP))
}

func solution18() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
    if list[1] == 0 {
        print("Not a moose")
    } else if list[0] == list[1] {
        print("Even \(list[0]*2)")
    } else {
        print("Odd \(list[1]*2)")
    }
}

func solution17() {
    let a = Int(readLine()!)!
    let b = Int(readLine()!)!
    let str = String(repeating: "*", count: b)
    for _ in 1...a {
        print(str)
    }
}

func solution16() {
    let count = Int(readLine()!)!
    for _ in 1...count {
        let list = readLine()!.split(separator: " ").map{ Int($0)! }
        print(list.min()!)
    }
}

func solution15() {
    let j = readLine()!
    let count = Int(readLine()!)!
    var a = 0
    for _ in 1...count {
        let str = readLine()!
        if j == str {
            a += 1
        }
    }
    print(a)
}

func solution14() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = min(list[0]/2, list[1])
    print(a)
}

func solution13() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
    let sum = list[1] + list[2]
    print(sum)
}

func solution12() {
    let list = readLine()!.split(separator: " ").map{ Double($0)! }.sorted()
    if list[0] == list[2] {
        print(2)
    } else if pow(list[0], 2) + pow(list[1], 2) == pow(list[2], 2) {
        print(1)
    } else {
        print(0)
    }
}

func solution11() {
//    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let list = "180 202 10".split(separator: " ").map{ Int($0)! }
    let k = list[0]
    let w = list[1]
    let m = list[2]
    if k >= w {
        print(0)
    } else {
        let a = (w-k+m-1)/m
        print(a)
    }
}

func solution10() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    var oneCount = 0
    for i in list {
        if i == 1 {
            oneCount += 1
        }
    }
    if oneCount > 1 {
        print(1)
    } else {
        print(2)
    }
}

func solution9() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let one = readLine()!.split(separator: " ").map{ Int($0)! }
    let index:Int = list.firstIndex(of: one[0]) ?? -1
    print(index+1)
}

func solution8() {
    let num:Double = 64//Int64(readLine()!)!
    sqrt(num)*4
    //print(a)
}

func solution7() {
    var count = 0
    for _ in 1...6 {
        let str = readLine()!
        if str == "W" {
            count += 1
        }
    }
    if count > 4 {
        print(1)
    } else if count > 2 {
        print(2)
    } else if count > 0 {
        print(3)
    } else {
        print(4)
    }
}

func solution6() {
    let a = Int(readLine()!)!
    let b = Int(readLine()!)!
    let c = Int(readLine()!)!
    let d = Int(readLine()!)!
    var firstCondition = (a == 8 || a == 9)
    var secondCondition = (d == 8 || d == 9)
    var thirdCondition = b == c
    if firstCondition && secondCondition && thirdCondition {
        print("ignore")
    } else {
        print("answer")
    }
}

func solution5() {
    let s = Int(readLine()!)!
    let m = Int(readLine()!)!
    let l = Int(readLine()!)!
    let v = s + m*2 + l*3
    if v >= 10 {
        print("happy")
    } else {
        print("sad")
    }
}

func solution4() {
    let a = Int(readLine()!)!
    let b = Int(readLine()!)!
    let c = Int(readLine()!)!
    let d = Int(readLine()!)!
    if a == b && b == c && c == d {
        print("Fish At Constant Depth")
    } else if a < b && b < c && c < d {
        print("Fish Rising")
    } else if a > b && b > c && c > d {
        print("Fish Diving")
    } else {
        print("No Fish.")
    }
}

func solution3() {
    let list1 = readLine()!.split(separator: " ").map{ Int($0)! }
    let list2 = readLine()!.split(separator: " ").map{ Int($0)! }
    var sum = 0
    for i in 0...3 {
        if list1[i] < list2[i] {
            sum += list2[i]-list1[i]
        }
    }
    print(sum)
}

func solution2() {
//    let list = readLine()!.split(separator: " ").map{ Double($0)! }
    let list = "2000 1800".split(separator: " ").map{ Double($0)! }
    let m = (list[1]-list[0])/400
    let p = 1/(1+pow(10, m))
    print(p)
}

solution2()

func solution1() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    if list[0] == list[1] {
        print(list[0])
    } else if list[0] > list[1] {
        print(list[0])
    } else {
        print(list[1])
    }
}
