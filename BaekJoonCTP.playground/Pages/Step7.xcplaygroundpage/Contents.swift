import Foundation

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
