//let list = readLine()!.split(separator: " ").map{ Int($0)! }
//Int(readLine()!)!

func solution50() {}
func solution49() {}
func solution48() {}

import Foundation

func solution47() {
    let str:String = String(Array(readLine()!)[0...2])
    if str == "555" {
        print("YES")
    } else {
        print("NO")
    }
}

func solution46() {
    var sum = 0
    var list = [9,7,8,0,9,2,1,4,1,8]
    for _ in 1...3 {
        list.append(Int(readLine()!)!)
    }
    var oneMultiply = true
    for v in list {
        if oneMultiply {
            oneMultiply = false
            sum += v*1
        } else {
            oneMultiply = true
            sum += v*3
        }
    }
    
    print("The 1-3-sum is \(sum)")
}

solution46()

func solution45() {
    //let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let list = "12 13 14".split(separator: " ").map{ Int($0)! }
    if list[0] < 11 || (list[0] == 11 && (list[1] < 11 || (list[1] == 11 && list[2] < 11))) {
        print(-1)
    } else {
        let m = list[2] + list[1]*60 + (list[0]-11)*60*24 - 11 - 11*60
        print(m)
    }
}

func solution44() {
    var sum:Int = 0
    while true {
        let m = Int(readLine()!)!
        if m == -1 {
            break
        }
        sum += m
    }
    print(sum)
}

func solution43() {
    let count = Int(readLine()!)!
    for _ in 1...count {
        let sum = readLine()!.split(separator: " ").map{ Int($0)! }.reduce(0, +)
        print(sum)
    }
}

func solution42() {
    let l:Double = 5//Double(readLine()!)!
    print(l*l*sqrt(3)/4)
}

func solution41() {
    let str = readLine()!
    if str == "n" || str == "N" {
        print("Naver D2")
    } else {
        print("Naver Whale")
    }
}

func solution40() {
    let list = readLine()!.split(separator: " ")
    let first = Int(list[0])!
    let second = Int(list[2])!
    let sum = Int(list[4])!
    if first+second == sum {
        print("YES")
    } else {
        print("NO")
    }
}

func solution39() {
    let a3 = Int(readLine()!)!
    let a2 = Int(readLine()!)!
    let a1 = Int(readLine()!)!
    let b3 = Int(readLine()!)!
    let b2 = Int(readLine()!)!
    let b1 = Int(readLine()!)!
    let a = a3*3 + a2*2 + a1
    let b = b3*3 + b2*2 + b1
    if a > b {
        print("A")
    } else if a == b {
        print("T")
    } else {
        print("B")
    }
}

func solution38() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    print(min(list[0]/2, list[1]/2))
}

func solution37() {
    let maxChicken = Int(readLine()!)!
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    var count:Int = 0
    count += list[0]/2
    count += list[1]
    if count > maxChicken {
        print(maxChicken)
    } else {
        print(count)
    }
}

func solution36() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = list[0]%list[2] == 0 ? list[0]/list[2] : (list[0]/list[2])+1
    let b = list[1]%list[2] == 0 ? list[1]/list[2] : (list[1]/list[2])+1
    print(a*b)
}

func solution35() {
    let antena = 2//Int(readLine()!)!
    let eyes = 3//Int(readLine()!)!
    if antena >= 3 && eyes <= 4 {
        print("TroyMartian")
    }
    if antena <= 6 && eyes >= 2 {
        print("VladSaturnian")
    }
    if antena <= 2 && eyes <= 3 {
        print("GraemeMercurian")
    }
}

func solution34() {
    let num = 1+44031//Int(readLine()!)!
    print(String(UnicodeScalar(num)!))
}

func solution33() {
//    let birthDay = readLine()!.split(separator: " ").map{ Int($0)! }
//    let current = readLine()!.split(separator: " ").map{ Int($0)! }
    let birthDay = "2006 1 1".split(separator: " ").map{ Int($0)! }
    let current = "2007 1 1".split(separator: " ").map{ Int($0)! }
    if current[0] == birthDay[0] {
        print(0)
    } else {
        var oneMinus = true
        if current[1] > birthDay[1] {
            oneMinus = false
        } else if current[1] == birthDay[1] {
            if current[2] >= birthDay[2] {
                oneMinus = false
            } else {
                oneMinus = true
            }
        } else {
            oneMinus = true
        }
        let age = current[0]-birthDay[0] - (oneMinus ? 1 : 0)
        print(age)
    }
    print(current[0]-birthDay[0]+1)
    print(current[0]-birthDay[0])
}

solution33()

func solution32() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let cows = list[0]
    let w = list[1]
    let h = list[2]
    let l = list[3]
    let max = (w/l)*(h/l)
    if max > cows {
        print(cows)
    } else {
        print(max)
    }
}

func solution31() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let oCount = list[1]
    let xCount = list[0] - list[1]
    let k = list[2]
    let k2 = list[0] - list[2]
    
    print(min(oCount, k)+min(xCount, k2))
}

func solution30() {
    let tea = Int(readLine()!)!
    let count = readLine()!.split(separator: " ").map{ Int($0)! }.filter{ $0 == tea}.count
    print(count)
}

func solution29(_ list:[Int]) {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    var sum:Int = getSum(list, 0)
    
    func getSum(_ list:[Int], _ sum:Int) -> Int {
        var sum = sum
        var list = list
        if list[0] < 2 && list[1] < 2 {
            return sum
        }
        if list[0] > list[1] {
            sum += (list[0]/2)*list[1]
            if list[0]%2 == 1 {
                sum = getSum([1, list[1]], sum)
            }
        } else {
            sum += (list[1]/2)*list[0]
            if list[1]%2 == 1 {
                sum = getSum([list[0], 1], sum)
            }
        }
        return sum
    }
    print(sum)
}

solution29([3,3])

func solution28() {
    while true {
        let list = readLine()!.split(separator: " ")
        if list[0] == "#" {
            break
        }
        let age = Int(list[1])!
        let weight = Int(list[2])!
        if age > 17 || weight >= 80 {
            print("\(list[0]) Senior")
        } else {
            print("\(list[0]) Junior")
        }
    }
}

func solution27() {
    let count = Int(readLine()!)!
    for _ in 1...count {
        let str = readLine()!
        print(str.lowercased())
    }
}

func solution26() {
    let start = Int(readLine()!)!
    let end = Int(readLine()!)!
    let c = Int(readLine()!)!
    let d = Int(readLine()!)!
    let e = Int(readLine()!)!
    var sum = 0
    if start < 0 {
        sum += c*(-start) + d
        sum += end*e
    } else {
        sum += (end-start)*e
    }
    print(sum)
}

func solution25() {
//    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let list = "32 16 8".split(separator: " ").map{ Double($0)! }
    let v = max((list[0]/list[1])*list[2], (list[0]*list[1])/list[2])
    print(Int(v))
}

solution25()

func solution24() {
    let ch:String = readLine()!
    print(Int(UnicodeScalar(ch)!.value)-44031)
}

func solution23() {
    let num = Int(readLine()!, radix: 2)! * 17
    print(String(num, radix: 2))
}

func solution22() {
    let count = Int(readLine()!)!
    for i in 1...count {
        let str = readLine()!
        print("\(i). \(str)")
    }
}

func solution21() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    print(list[2]/(list[0]*2) * list[1])
}

func solution20() {
    let sum = readLine()!.split(separator: " ").map{ Int($0)! }.reduce(0, +)
    let cp = Int(readLine()!)!*2
    if sum >= cp {
        print(sum-cp)
    } else {
        print(sum)
    }
}

func solution19() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    if list[1] == 1 || list[1] == 2 {
        print("NEWBIE!")
    } else if list[1] <= list[0] {
        print("OLDBIE!")
    } else {
        print("TLE!")
    }
}

func solution18() {
    let line = readLine()!
    if line.count == 2 {
        let a = Int(String(line.first!))!
        let b = Int(String(line.last!))!
        print(a+b)
    } else if line.count == 3 {
        if Array(line)[1] == "0" {
            let a = 10
            let b = Int(String(line.last!))!
            print(a+b)
        } else {
            let a = Int(String(line.first!))!
            let b = 10
            print(a+b)
        }
    } else {
        print(20)
    }
}

func solution17() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
    print(abs(list[3]+list[0]-list[2]-list[1]))
}

func solution16() {
    //let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let list = "3 1".split(separator: " ").map{ Int($0)! }
    if (list[0]+list[1])%2 == 1 || list[0] < list[1] {
        print(-1)
    } else {
        print("\((list[0]+list[1])/2) \((list[0]+list[1])/2-list[1])")
    }
}

func solution15() {
    let width = Double(readLine()!)!
    let r = Double(readLine()!)!
    print(width*2 + r*2*3.141592)
}

func solution14() {
    let list = readLine()!.split(separator: "/").map{ Int($0)! }
    if list[0]+list[2] < list[1] || list[1] == 0 {
        print("hasu")
    } else {
        print("gosu")
    }
}

func solution13() {
    let line = "1001" // readLine()!
    var n:Int = 0
    if line.count > 3 {
        n = Int(String(Array(line)[line.count-3..<line.count]))!%8
    } else {
        n = Int(line)!%8
    }
    if n == 1 {
        print(1)
    } else if n == 2 || n == 0 {
        print(2)
    } else if n == 3 || n == 7 {
        print(3)
    } else if n == 4 || n == 6 {
        print(4)
    } else {
        print(5)
    }
}

func solution12() {
    let n = Int(readLine()!)!
    print(n*n-n)
}

func solution11() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    var sum = list.reduce(0, +)
    if sum >= 100 {
        print("OK")
    } else {
        let index = list.firstIndex(of: list.min()!)!
        if index == 0 {
            print("Soongsil")
        } else if index == 1 {
            print("Korea")
        } else {
            print("Hanyang")
        }
    }
}

func solution10() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    if list[0] > 0 {
        for _ in 1...list[0] {
            let line = readLine()!
            print(String(line.reversed()))
        }
    }
}

func solution9() {
    for _ in 1...3 {
        let line = readLine()!.split(separator: " ").map{ Int($0)! }
        let oneMinusM:Bool = line[5] < line[2]
        let s = !oneMinusM ? line[5] - line[2] : 60+line[5] - line[2]
        let oneMinusH:Bool = line[4] - (oneMinusM ? 1 : 0) < line[1]
        let m = !oneMinusH ? line[4] - (oneMinusM ? 1 : 0) - line[1] : 60+line[4] - (oneMinusM ? 1 : 0) - line[1]
        let h = line[3] - (oneMinusH ? 1 : 0) - line[0]
        print("\(h) \(m) \(s)")
    }
}

func solution8() {
    var list1:[Int] = []
    var list2:[Int] = []
    for _ in 1...4 {
        list1.append(Int(readLine()!)!)
    }
    for _ in 1...2 {
        list2.append(Int(readLine()!)!)
    }
    list1.sort()
    list2.sort()
    var sum = list1[1]+list1[2]+list1[3]+list2[1]
    print(sum)
}

func solution7() {
    let list = readLine()!.split(separator: " ")
    if list[0] == list[1] {
        print(1)
    } else {
        print(0)
    }
}

func solution6() {
    let m = Int(readLine()!)!
    let d = Int(readLine()!)!
    if m > 2 {
        print("After")
    } else if m == 2 {
        if d > 18 {
            print("After")
        } else if d == 18 {
            print("Special")
        } else {
            print("Before")
        }
    } else {
        print("Before")
    }
}

func solution5() {
    let c = Int(readLine()!)!
    let b = Int(readLine()!)!
    print(b+b-c)
}

func solution4() {
    let a = readLine()!.split(separator: " ").map{ Int($0)! }
    let b = readLine()!.split(separator: " ").map{ Int($0)! }
    print(min(a[0]+b[1], a[1]+b[0]))
}

func solution3() {
    while true {
        let line = "2 2"//readLine()!
        if line == "0 0" {
            break
        }
        let sum = line.split(separator: " ").map{ Int($0)! }.reduce(0,+)
        print(sum)
        break
    }

    while true {
        let line = "How are you today?" //readLine()!
        if line == "#" {
            break
        }
        let list:[Character] = ["a", "e", "i", "o", "u","A", "E", "I", "O", "U"]
        print(line.filter{ list.contains($0) }.count)
        break
    }
}

func solution2() {
    while true {
        let line = "!edoc doog a tahW"//readLine()!
        if line == "END" {
            break
        }
        print(String(line.reversed()))
        break
    }
}

func solution1() {
    let s1 = readLine()!.split(separator: " ").map{ Int($0)! }.reduce(0, +)
    let s2 = readLine()!.split(separator: " ").map{ Int($0)! }.reduce(0, +)
    print(max(s1, s2))
}
