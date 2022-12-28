import Foundation

func solution8() {
    let n = readLine()!
    
    print(Character(n).asciiValue!)
}

solution8()

func solution7() {
    let n = Int(readLine()!)!
    var count:Int = 0
    if n < 100 {
        count = n
    } else {
        count = 99
        if n >= 111 {
            for i in 111...n {
                if (i%100)/10-i/100 == i%10 - (i%100)/10 {
                    count += 1
                }
            }
        }
    }
    print(count)
}

solution7()

func solution6() {
    var list:[Int] = Array(1...10000)
    for i in 1...10000 {
        var value:Int = i
        String(i).map {
            value += Int(String($0))!
        }
        if list.contains(value) {
            list.remove(at: list.firstIndex(of: value)!)
        }
    }
    for v in list {
        print(v)
    }
}

solution6()

func solution5() {
//    let count = Int(readLine()!)!
    for _ in 1...1 {
        let line = "5 50 50 70 80 100"// readLine()!
        let lineArr = line.split(separator: " ").map{ Int($0)! }
        let average:Double = Double(lineArr.reduce(0, +)-lineArr[0])/Double(lineArr[0])
        var aboveAverageCount:Double = 0
        for i in 1..<lineArr.count {
            if Double(lineArr[i]) > average {
                aboveAverageCount += 1
            }
        }
        let p: Double = aboveAverageCount*100/Double(lineArr[0])
        print(String(format: "%.3f", p)+"%")
    }
}

solution5()

func solution4() {
    
    let count = Int(readLine()!)!
    var str:String = ""
    for _ in 1...count {
        let line = readLine()!
        var sum:Int = 0
        var score:Int = 0
        for s in line {
            if s == Character("O") {
                score += 1
                sum += score
            } else {
                score = 0
            }
        }
        str += "\(sum)\n"
    }
    print(str)
}





let line = readLine()!
let lineArr = line.split(separator: " ").map{ Int($0)! }
let maxValue = lineArr.max()!
var sum:Double = 0
for s in lineArr {
    sum += Double(s)/Double(maxValue)*100
}
print(sum/Double(count))







var list:[Int] = []
for _ in 1...10 {
    guard let line = readLine() else { break }
    if !list.contains(Int(line)!%42) {
        list.append(Int(line)!%42)
    }
}
print(list.count)

var maxV:Int = 0
var maxIndex:Int = 0
var index:Int = 1

while true {
    guard let line = readLine() else { break }
    let value = Int(line)!
    if value > maxV {
        maxV = value
        maxIndex = index
    }
    index += 1
}
print(maxV)
print(maxIndex)

//let line1 = readLine()!
//let line2 = readLine()!
let line2 = "20 10 35 -30 7"

let lineArr2 = line2.split(separator: " ").map{ Int($0)! }
var minV:Int = 1000000
//var maxV:Int = -1000000
for v in lineArr2 {
    if v < minV {
        minV = v
    }
    if v > maxV {
        maxV = v
    }
}

print("\(minV) \(maxV)")


//
//
//var str:String = ""
//for v in lineArr2 {
//    if Int(v)! < Int(lineArr1[1])! {
//        if str == "" {
//            str += v
//        } else {
//            str += " \(v)"
//        }
//    }
//}
//print(str)
//
//let line2 = readLine()!
//let line3 = readLine()!
//var count = 0
//let lineArr = line2.components(separatedBy: " ")
//for v in lineArr {
//    if line3 == v {
//        count += 1
//    }
//}
//print(count)
//
//
////let line = readLine()!
////let first = Int(line)!
//let first = 26
//var value = 26
//var count = 0
//while true {
//    value = (value%10)*10+(value%10+value/10)%10
//    count += 1
//    if value == first {
//        print(count)
//        break
//    }
//}
//
//
////let line = readLine()!
////let lineArr = line.components(separatedBy: " ")
//
////Case #1: 1 + 1 = 2
//
//
//func printSum(_ line:String?) {
//    while true {
//        guard let line = line else { break }
//        let lineArr = line.components(separatedBy: " ")
//        print(Int(lineArr[0])!+Int(lineArr[1])!)
//        break
//    }
//}
//
//printSum("1 2")

//let line1 = readLine()!
//let price = Int(line1)!
//var sum:Int = 0
//let line2 = readLine()!
//let count = Int(line2)!
//for _ in 1...count {
//    let line = readLine()!
//    let lineArr = line1.components(separatedBy: " ")
//    let p = Int(lineArr[0])!
//    let c = Int(lineArr[1])!
//    sum += p*c
//}
//if price == sum {
//    print("Yes")
//} else {
//    print("No")
//}
//
//let count = Int(line)!
//var sum:Int = 0
//for v in 1...count {
//    sum += v
//}
//print(sum)
//
//
//let line = readLine()!
//let count = Int(line)!
//var str:String = ""
//for _ in 1...count {
//    let line = readLine()!
//    let lineArr = line.components(separatedBy: " ")
//    str += "Case #1: \(Int(lineArr[0])!+Int(lineArr[1])!)\n"
//}
//print(str)

func solution3(_ line1:String, _ line2:String) {
    let lineArr = line1.components(separatedBy: " ")
    let startH = Int(lineArr[0])!
    let startM = Int(lineArr[1])!
    var newH:Int = 0
    var newM:Int = 0
    let time = Int(line2)!
    newM = (startM + time)%60
    newH = (startH + (startM + time)/60)%24
    print("\(newH) \(newM)")
}

solution3("14 30", "20")

func solution2(_ line:String) {
    let lineArr = line.components(separatedBy: " ")
    let a = Int(lineArr[0])!
    let b = Int(lineArr[1])!
    let c = Int(lineArr[2])!
    if a == b && b == c {
        print(10000+a*1000)
    } else if a == b {
        print(1000+a*100)
    } else if a == c {
        print(1000+a*100)
    } else if b == c {
        print(1000+b*100)
    } else {
        print(max(a,b,c)*100)
    }
}

solution2("1 3 6")

func solution1(_ line:String) {
    let value:Int = Int(line)!
    for i in 1...9 {
        print("\(value) * \(i) = \(value*i)")
    }
}

solution1("2")

let str = #"""
         ,r'"7
r`-_   ,'  ,/
 \. ". L_r'
   `~\/
      |
      |
"""#
print(str)

      



