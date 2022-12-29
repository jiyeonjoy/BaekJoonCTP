import Foundation

func solution20() {
    let a = Int(readLine()!)!
    let b = Int(readLine()!)!
    let c = Int(readLine()!)!
    if a+b+c != 180 {
        print("Error")
    } else if a==b && a==c {
        print("Equilateral")
    } else if a==b || a==c || b==c {
        print("Isosceles")
    } else {
        print("Scalene")
    }
}

func solution19() {
    let vD = 20//Int(readLine()!)!
    let mP = 25//Int(readLine()!)!
    let kP = 30//Int(readLine()!)!
    let maxMP = 6//Int(readLine()!)!
    let maxKP = 8//Int(readLine()!)!
    var sD = max((mP+maxMP-1)/maxMP, (kP+maxKP-1)/maxKP)
    if vD > sD {
        print(vD-sD)
    } else {
        print(0)
    }
}

func solution18() {
    var second = 0
    for _ in 1...4 {
        second += Int(readLine()!)!
    }
    print(second/60)
    print(second%60)
}

func solution17() {
    let list = [5,20]//readLine()!.split(separator: " ").map{ Int($0)! }
    let npl = [99, 101, 1000, 0, 97]//readLine()!.split(separator: " ").map{ Int($0)! }
    let sum = list[0] * list[1]
    var str = ""
    for v in npl {
        if str == "" {
            str += "\(v-sum)"
        } else {
            str += " \(v-sum)"
        }
    }
    print(str)
}

func solution16() {
    let list = [20,6,120]//readLine()!.split(separator: " ").map{ Int($0)! }
    if list[0]*list[1] <= list[2] {
        print(0)
    } else {
        print(list[0]*list[1]-list[2])
    }
}

func solution15() {
    let list = [23,48,59]//readLine()!.split(separator: " ").map{ Int($0)! }
    let second = 2515//Int(readLine()!)!
    var s = list[2] + second%60
    var m = list[1] + (second%3600)/60 + s/60
    s = s%60
    var h = list[0] + second/3600 + m/60
    m = m%60
    if h > 23 {
        h = h%24
    }
    print("\(h) \(m) \(s)")
}

func solutionc14() {
    let num = 1//Int(readLine()!)!
    let list = [1,2,3,4,5]//readLine()!.split(separator: " ").map{ Int($0)! }
    var count = 0
    for v in list {
        if v%10 == num {
            count += 1
        }
    }
    print(count)
}

func solution13() {
    let second = 189//Int(readLine()!)!
    if second%10 != 0 {
        print(-1)
    } else {
        let fM = second/300
        let oM = (second%300)/60
        let tS = (second%60)/10
        print("\(fM) \(oM) \(tS)")
    }
}

func solution12() {
//    print(readLine()!.split(separator: " ").map{ Int($0)! }.sorted())
    let list = "3 1 2".split(separator: " ").map{ Int($0)! }.sorted()
    print("\(list[0]) \(list[1]) \(list[2])")
}

func solution11() {
    let s = "baekjoon" // readLine()!
    var str:String = ""
    for a in "abcdefghijklmnopqrstuvwxyz" {
        let count:Int = s.filter{ $0 == a }.count
        if str == "" {
            str += "\(count)"
        } else {
            str += " \(count)"
        }
    }
    print(str)
}

solution11()

func solution10() {
    let count = Int(readLine()!)!
    for _ in 1...count {
        let line = readLine()!
        if line.count >= 6 && line.count <= 9 {
            print("yes")
        } else {
            print("no")
        }
    }
}

func solution9() {
    //let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let list = "200 20".split(separator: " ").map{ Int($0)! }
    if list[0]*(100-list[1])/100 >= 100 {
        print(0)
    } else {
        print(1)
    }
}

func solution8() {
    //let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let list = "0 0 0 23 3 100".split(separator: " ").map{ Int($0)! }
    var sum:Int = 0
    for v in list {
        if v == 0 {
//            sum -= 10
//            sum += 5
        } else {
            sum += v*5
        }
    }
    print(sum)
}

solution8()

func solution7() {
    var n = 20/4//Int(readLine()!)!/4
    print(String(repeating: "long ", count: n)+"int")
}

func solution6() {
    var sum = 10//Int(readLine()!)!
    var cha = 2//Int(readLine()!)!
    var second = (sum-cha)/2
    var first = sum - second
    print(first)
    print(second)
}

func solution5() {
    //let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let list = "1 10 100 1000".split(separator: " ").map{ Int($0)! }
    var v = 56*list[0]+24*list[1]+14*list[2]+6*list[3]
    print(v)
}

func solution4() {
    //let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let list = "15 18 11".split(separator: " ").map{ Int($0)! }
    var v = (list[0]+1)*(list[1]+1)/(list[2]+1)-1
    print(v)
}

func solution3() {
    let h = readLine()!
    let str = """
:fan::fan::fan:
:fan::\(h)::fan:
:fan::fan::fan:
"""
    print(str)
}

func solution2() {
    let aList = readLine()!.split(separator: " ").map{ Int($0)! }
    let cList = readLine()!.split(separator: " ").map{ Int($0)! }
    print("\(cList[0]-aList[2]) \(cList[1]/aList[1]) \(cList[2]-aList[0])")
}

func solution1() {
    let price:Double = 10000000//Int(readLine()!)!
    let first = price*0.78
    let second = price - price*0.2*0.22
    print("\(Int(first)) \(Int(second))")
}
