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

import Foundation

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
