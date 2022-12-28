import Foundation

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
