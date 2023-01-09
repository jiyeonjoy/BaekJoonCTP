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
