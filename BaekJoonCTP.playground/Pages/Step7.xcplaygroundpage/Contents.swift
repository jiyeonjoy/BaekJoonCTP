import Foundation

func combinations<T>(source: [T], takenBy : Int) -> [[T]] {
    if(source.count == takenBy) {
        return [source]
    }

    if(source.isEmpty) {
        return []
    }

    if(takenBy == 0) {
        return []
    }

    if(takenBy == 1) {
        return source.map { [$0] }
    }

    var result : [[T]] = []

    let rest = Array(source.suffix(from: 1))
    let subCombos = combinations(source: rest, takenBy: takenBy - 1)
    result += subCombos.map { [source[0]] + $0 }
    result += combinations(source: rest, takenBy: takenBy)
    return result
}
// 블랙잭
let str = """
10 500
93 181 245 214 315 36 185 138 216 295
"""
//let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
//let secondLine = readLine()!.split(separator: " ").map { Int($0)! }
let firstLine = "10 500".split(separator: " ").map { Int($0)! }
let secondLine = "93 181 245 214 315 36 185 138 216 295".split(separator: " ").map { Int($0)! }
let list = combinations(source:secondLine, takenBy:3).map { $0.reduce(0, +) }.sorted {
    firstLine[1]-$0 < firstLine[1]-$1
}
for v in list {
    if firstLine[1]-v >= 0 {
        print(v)
        break
    }
}

// 별찍기
let n = 5 //let n = Int(readLine()!)!
for i in 0...n-1 {
    print(String(repeating: "*", count: n-i))
}

struct Stack<T> {
    private var stack: [T] = []
    
    public var count: Int {
        return stack.count
    }
    
    public var isEmpty: Bool {
        return stack.isEmpty
    }
    
    public mutating func push(_ element: T) {
        stack.append(element)
    }
    
    public mutating func pop() -> T? {
        return isEmpty ? nil : stack.popLast()!
    }
}

// 스택
let str = """
14
push 1
push 2
top
size
empty
pop
pop
pop
size
empty
pop
push 3
empty
top
"""
let strList:[String] = str.components(separatedBy: "\n")
let count = Int(strList[0])! //let count = Int(readLine()!)!
var stack: Stack = Stack<Int>()
for i in 1...count {
    let line = strList[i] //let line = readLine()!
    if line.contains("push") {
        stack.push(Int(line.split(separator: " ")[1])!)
    } else if line.contains("pop") {
        print(stack.pop() ?? -1)
    } else if line.contains("size") {
        print(stack.count)
    } else if line.contains("empty") {
        print(stack.isEmpty ? 1 : 0)
    } else if line.contains("top") {
        let top = stack.pop() ?? -1
        print(top)
        if top != -1 {
            stack.push(top)
        }
    }
}

// 괄호
func solution13(_ line: String) {
    var count = Int(readLine()!)!
    var str:String = ""
    for _ in 1...count {
        var line = readLine()!
        var value:Int = 0
        var isTrue = true
        for c in line {
            if c == "(" {
                value += 1
            } else {
                value -= 1
            }
            if value < 0 {
                isTrue = false
                break
            }
        }
        if value != 0 && isTrue {
            isTrue = false
        }
        if str != "" {
            str += "\n"
        }
        if isTrue {
            str += "YES"
        } else {
            str += "NO"
        }
    }
    print(str)
}

solution13("(())())")
solution13("(((()())()")
solution13("(()())((()))")
solution13("((()()(()))(((())))()")
solution13("()()()()(()()())()")
solution13("(()((())()(")

// 1로 만들기
func solution12(_ n: Int) {
    //    let n = Int(readLine()!)!
    if n == 1 {
        print(0)
    } else {
        var list:[Int] = [0, 0, 1, 1]
        if (n > 3) {
            list += Array.init(repeating: 0, count: n - 3)
            for i in 4...n {
                if i%2==0 && i%3==0 {
                    list[i] = min(list[i-1], list[i/2], list[i/3])+1
                } else if i%2==0 {
                    list[i] = min(list[i-1], list[i/2])+1
                } else if i%3==0 {
                    list[i] = min(list[i-1], list[i/3])+1
                } else {
                    list[i] = list[i-1]+1
                }
            }
        }
        print(list[n])
    }
}

solution12(2)
solution12(1000000)

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
