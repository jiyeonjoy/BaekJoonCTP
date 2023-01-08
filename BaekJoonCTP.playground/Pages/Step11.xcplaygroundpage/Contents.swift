import Foundation

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

func solution3() {
    while true {
        let list = readLine()!.split(separator: " ").map{ Double($0)! }
        if list[0] == 0 && list[1] == 0 && list[2] == 0 {
            break
        }
        let m = list[0]
        let a = list[1]
        let b = list[2]
        let v = Int(round((m/a-m/b)*60*60))
        
        let ha = v/3600
        let ma = (v%3600)/60 > 9 ? "\((v%3600)/60)" : "0\((v%3600)/60)"
        let sa = (v%3600)%60 > 9 ? "\((v%3600)%60)" : "0\((v%3600)%60)"
        print("\(ha):\(ma):\(sa)")
    }
}

func solution2() {
    let t = Int(readLine()!)!
    for _ in 1...t {
        let list = readLine()!.split(separator: " ").map{ Int($0)! }
        var y = list[0]
        var m = list[1]
        var d = 0
        if m == 1 {
            y -= 1
            m = 12
            d = 31
        } else {
            m -= 1
            if m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 {
                d = 31
            } else if m == 2 {
                if y%400 == 0 || (y%4 == 0 && y%100 != 0) {
                    d = 29
                } else {
                    d = 28
                }
            } else {
                d = 30
            }
        }
        print("\(y) \(m) \(d)")
    }
}

func solution1() {
    let n = Int(readLine()!)!
    let list = readLine()!.split(separator: " ").map{ Int($0)! }
    var a = 0 // 현재 연결된 핸드폰 번호
    var b = 0 // 직전 배터리 소모량
    var p = 0 // 배터리 양
    for i in list {
        if p >= 100 {
            p = 0
            a = 0
            b = 0
        }
        if i == a {
            p += b*2
            b *= 2
        } else {
            p += 2
            a = i
            b = 2
        }
    }
    if p >= 100 {
        p = 0
    }
    print(p)
}
