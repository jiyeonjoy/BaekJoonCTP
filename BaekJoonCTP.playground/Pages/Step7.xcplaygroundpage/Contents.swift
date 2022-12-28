import Foundation

// 벌집
func solution11(_ n: Int) {
//    let n = Int(readLine()!)!
    var count:Int = 1
    var value:Int = 1
    while value < n {
        value += 6*count
        count += 1
    }
    print(count)
}

solution11(58)

// 손익분기점
func solution10() {
    let line = "2100000000 9 10"//readLine()!
    let lineArr = line.split(separator: " ").map { Int($0)! }
    var count = 1
    if lineArr[1] >= lineArr[2] {
        count = -1
    } else {
        count = lineArr[0]/(lineArr[2]-lineArr[1]) + 1
    }
    print(count)
}

solution10()

// 그룹 단어 체커
func solution9() {
    readLine()
    var count:Int = 0
    while true {
        guard let line = readLine() else { break }
//        let line = "happy"
        var saved:[Character] = []
        var currentC:Character = Character(" ")
        var isAdd = true
        for c in line {
            if c != currentC {
                currentC = c
                if saved.contains(c) {
                    isAdd = false
                    break
                } else {
                    saved.append(c)
                }
            }
        }
        if isAdd {
            count += 1
        }
//        break
    }
    print(count)
}

solution9()

// 크로아티아 알파벳
func solution8() {
    let list:[String] = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
    var line = "c=c="//readLine()!
    for s in list {
        if line.contains(s) {
            line = line.replacingOccurrences(of: s, with: "a")
        }
    }
    print(line.count)
}

solution8()

// 다이얼
func solution7() {
    let dic:[Character:Int] = ["A":3,"B":3,"C":3,"D":4,"E":4,"F":4,"G":5,"H":5,"I":5,"J":6,"K":6,"L":6,"M":7,"N":7,"O":7,"P":8,"Q":8,"R":8,"S":8,"T":9,"U":9,"V":9,"W":10,"X":10,"Y":10,"Z":10]
    let line = "WA"//readLine()!
    var sum:Int = 0
    for s in line {
        sum += dic[s]!
    }
    print(sum)
}

solution7()

// 상수
func solution6() {
    let line = "734 893"//readLine()!
    let lineArr = line.split(separator: " ")
    var firstValue = Int(String(lineArr[0].reversed()))!
    var secondValue = Int(String(lineArr[1].reversed()))!
    if firstValue > secondValue {
        print(firstValue)
    } else {
        print(secondValue)
    }
}

solution6()

// 단어의 개수
func solution5() {
    let line = "The first character is a blank"//readLine()!
    let lineArr = line.split(separator: " ")

    print(lineArr.count)
}

solution5()

// 단어 공부
func solution4() {
    let s = "baekjoon".uppercased() // readLine()!.uppercased()
    let sorted = Dictionary(grouping: s ) { $0 }.sorted{ $0.value.count > $1.value.count }
    if sorted.count > 1 && sorted[0].value.count == sorted[1].value.count {
        print("?")
    } else {
        print(sorted[0].key)
    }
}

solution4()

// 문자열 반복
func solution3() {
    while true {
        guard let line = readLine() else { break }
//        let line = "5 /HTP"
        let lineArr = line.split(separator: " ")
        if lineArr.count > 1 {
            var str:String = ""
            for s in lineArr[1] {
                str += String(repeating: s, count: Int(lineArr[0]) ?? 0)
            }
            print(str)
        }
//        break
    }
}

solution3()

func solution2() {
    let s = "baekjoon" // readLine()!
    var str:String = ""
    for a in "abcdefghijklmnopqrstuvwxyz" {
        let index:Int = Array(s).firstIndex(of: a) ?? -1
        if str == "" {
            str += "\(index)"
        } else {
            str += " \(index)"
        }
    }
    print(str)
}

solution2()

func solution1() {
    readLine()
    let line = "54321" //readLine()!
    var sum:Int = 0
    line.map {
        sum += Int(String($0))!
    }
    print(sum)
}

solution1()
