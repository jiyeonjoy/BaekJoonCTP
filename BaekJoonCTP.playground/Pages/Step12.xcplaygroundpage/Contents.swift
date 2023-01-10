// 1436
//let n = 10000//Int(readLine()!)!
//var v = 666
//var c = 1
//var d:[Int:Int] = [
//    667:1665,
//    9666:10665,
//    99666:100665,
//    999666:1000665,
//]
//while n != c {
//    v += 1
//    var vv = v
//    while vv >= 666 {
//        if vv%1000==666 {
//            c += 1
//            break
//        }
//        vv /= 10
//    }
//}
//print(v)
import Foundation

func getPow(_ i:Int) -> Int {
    if i == 0 {
        return 1
    }
    var v = 1
    for _ in 1...i {
        v *= 31
        v = v%1234567891
    }
    return v
}

func s15829() {
    let l = Array("0abcdefghijklmnopqrstuvwxyz")
    readLine()
    let str = Array(readLine()!)
    var sum = 0
    for i in 0...str.count-1 {
        let n = l.firstIndex(of: str[i])!
        sum += n*Int(getPow(i))%1234567891
    }
    sum = sum%1234567891
    print(sum)
}

func s25933() {
    let n = Int(readLine()!)!
    for i in 1...n {
        let str = readLine()!
        let list = str.split(separator: " ").map{ Int(String($0))! }
        let ag = list[0]
        let aa = list[1]
        let ad = list[2]
        
        let rg = list[3]
        let ra = list[4]
        let rd = list[5]
        
        let isWinCount = ag+aa+ad > rg+ra+rd
        let isWinColor = ag > rg || (ag == rg && aa > ra) || (ag == rg && aa == ra && ad > rd)
        print(str)
        if isWinCount && isWinColor {
            print("both")
        } else if isWinCount {
            print("count")
        } else if isWinColor {
            print("color")
        } else {
            print("none")
        }
        if i < n {
            print("")
        }
    }
}

// 1874
func s1874() {
    let k = Int(readLine()!)!
    var list:[Int] = []
    var c = 1
    var str = ""
    for _ in 1...k {
        let n = Int(readLine()!)!
        if !list.contains(n) {
            while !list.contains(n) {
                list.append(c)
                c += 1
                if str == "" {
                    str += "+"
                } else {
                    str += "\n+"
                }
            }
            list.removeLast()
            str += "\n-"
        } else {
            if list.last! == n {
                list.removeLast()
                str += "\n-"
            } else {
                str = "NO"
                break
            }
        }
    }
    print(str)
}

// 1654
func s1654() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let k = list[1]
    var l:[Int] = []
    var minv = 0
    var maxv = 2147483648
    for _ in 1...list[0] {
        l.append(Int(readLine()!)!)
    }
    while maxv-minv > 1 {
        let mv = (maxv+minv)/2
        var sum = 0
        for i in l {
             if i/mv > k {
                    break
                }
                sum += i/mv
                if sum > k {
                    break
                }
        }
        if sum < k {
            maxv = mv
        } else {
            minv = mv
        }
    }
    print(minv)
}
