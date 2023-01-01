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
func solution39() {}
func solution38() {}
func solution37() {}
func solution36() {}
func solution35() {}
func solution34() {}
func solution33() {}
func solution32() {}
func solution31() {}
func solution30() {}
func solution29() {}
func solution28() {}
func solution27() {}
func solution26() {}
func solution25() {}
func solution24() {}
func solution23() {}
func solution22() {}
func solution21() {}
func solution20() {}
func solution19() {}
func solution18() {}
func solution17() {}
func solution16() {}
func solution15() {}
func solution14() {}

import Foundation

func solution13() {}

func solution12() {
    let str = "OneTwoThreeFourFiveSixSevenEightNineTen"//readLine()!
    let c = (str.count+9)/10
    for i in 1...c {
        let start:Int = (i-1)*10
        let end:Int = min(i*10-1, str.count-1)
        print(String(Array(str)[start...end]))
    }
}

func solution11() {
    //let list = "1 1 5 5"readLine()!.split(separator: " ").map{ Int($0)! }
    let list = "1 1 5 5".split(separator: " ").map{ Int($0)! }
    let v = min(list[2]-list[0], list[3]-list[1], list[1]-0, list[0]-0)
    print(v)
}
func solution10() {
    let t = 1//Int(readLine()!)!
    for _ in 1...t {
    //    let list = readLine()!.split(separator: " ").map{ Int($0)! }
        let list = "30 50 72".split(separator: " ").map{ Int($0)! }
        var n = list[2]
        for i in 1...list[1] {
            for j in 1...list[0] {
                n -= 1
                if n == 0 {
                    if i > 9 {
                        print("\(j)\(i)")
                    } else {
                        print("\(j)0\(i)")
                    }
                }
            }
        }
    }
}

func solution9() {
    let k = Double(readLine()!)!
    let c = 25 + k*0.01
    if c < 100 {
        print(100)
    } else if c > 2000 {
        print(2000)
    } else {
        print(c)
    }
}

func solution8() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = list[0]
    let b = list[1]
    let maxV = max(a-b, a+b)
    let minV = min(a-b, a+b)
    print(maxV)
    print(minV)
}

func solution7() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = list[0]*7
    let p = list[1]&13
    if a > p {
        print("Axel")
    } else if a == p {
        print("lika")
    } else {
        print("Petra")
    }
}

func solution6() {
    let a = Int(readLine()!)!
    let b = Int(readLine()!)!
    let s = (a+b)%13
    print(s)
}

func solution5() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
    if list[0] == list[1] || list[1] == list[2] || list[2] == list[0]+list[1] {
        print("S")
    } else {
        print("N")
    }
}

func solution4() {
    let m2:Double = 1234//Double(readLine()!)!
    let r = sqrt(m2/3.14159265359)
    let v = 2*r*3.14159265359
}

func solution3() {
    let n = Int(readLine()!)!
    let p = Int(readLine()!)!
    var minp = p
    if n >= 5 {
        minp = min(minp, p-500)
    }
    if n >= 10 {
        minp = min(minp, p*9/10)
    }
    if n >= 15 {
        minp = min(minp, p-2000)
    }
    if n >= 20 {
        minp = min(minp, p*3/4)
    }
    print(minp)
}

func solution2() {
    let list = readLine()!.split(separator: " ").map{ Double($0)! }
    let a = sqrt(pow(list[0], 2)+pow(list[1], 2))
    let b = list[0]+list[1]
    print(b-a)
}

func solution1() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    if list[0] > list[1] {
        print(list[0] + list[1])
    } else if list[0] == list[1] {
        print(0)
    } else {
        print(list[1]-list[0])
    }
}
