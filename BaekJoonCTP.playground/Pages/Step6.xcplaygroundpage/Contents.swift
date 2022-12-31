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
func solution13() {}
func solution12() {}
func solution11() {}
func solution10() {}
func solution9() {}
func solution8() {}
func solution7() {}
func solution6() {}

import Foundation

func solution5() {}

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

solution2()

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
