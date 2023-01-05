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

import Foundation

// 9501
func solution4() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let list = readLine()!.split(separator: " ").map{ Int($0)! }
        var c = 0
        let d = list[1]
        for i in 1...list[0] {
            let l = readLine()!.split(separator: " ").map{ Double($0)! }
            let v = (Double(d)/l[0])*l[2]
            if l[1] >= v {
                c += 1
            }
        }
        print(c)
    }
}

// 5618
func solution3() {
    let n = Int(readLine()!)!
    let list = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
    if n == 2 {
        for i in 1...list[0] {
            if list[0]%i == 0 && list[1]%i == 0 {
                print(i)
            }
        }
    } else {
        for i in 1...list[0] {
            if list[0]%i == 0 && list[1]%i == 0 && list[2]%i == 0 {
                print(i)
            }
        }
    }
}

func solution2() {
    let n = Int(readLine()!)!
    var isDone = false

    for i in n/2...n {
        for j in n/2...i {
            if n*n < i*i+j*j {
                isDone = true
                print("\(j) \(i)")
                break
            }
        }
        if isDone {
            break
        }
    }
}

func solution1() {
    let h = list[0]
    let m = list[1]
    let aS = m == 0 ? "00" : 60-m < 10 ? "0\(60-m)" : "\(60-m)"
    let nM = m == 0 ? m-h : m-h-1
    let isMinusM = nM < 0
    let aM = isMinusM ? (nM+60 < 10 ? "0\(nM+60)" : "\(nM+60)") : nM < 10 ? "0\(nM)" : "\(nM)"
    let aH = isMinusM ? h-1 < 10 ? "0\(h-1)" : "\(h-1)" : h < 10 ? "0\(h)" : "\(h)"
    print("\(aH):\(aM):\(aS)")
}
