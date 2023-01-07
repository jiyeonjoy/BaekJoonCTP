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
func solution5() {}
func solution4() {}
func solution3() {}

import Foundation

func solution2() {
    let t = Int(readLine()!)!
    for i in 1...t {
        print("Data Set \(i):")
        var h = Int(readLine()!)!
        var list = Array(readLine()!)
        for c in list {
            if c == "c" {
                h += 1
            } else {
                h -= 1
            }
        }
        print(h)
        if i < t {
            print("")
        }
    }
}

func solution1() {
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = list[0]
    let d = list[1]
    let k = list[2]

    let v = k-a
    if v%d != 0 || v/d <= -1 {
        print("X")
    } else {
        print(v/d+1)
    }
}
