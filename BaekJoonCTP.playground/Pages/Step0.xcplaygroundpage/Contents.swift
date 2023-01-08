let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
Int(readLine()!)!

let k:Double = 5//Double(readLine()!)!
var list:[Int] = [1,3,8,2,-2]
var dic:[Int:Int] = [:]
for n in list {
    let c = dic[n] ?? 0
    dic[n] = c+1
}

//for _ in 1...Int(k) {
//    let n = Int(readLine()!)!
//    list.append(n)
//    let c = dic[n] ?? 0
//    dic[n] = c+1
//}
list.sort()
print(Int(round(Double(list.reduce(0,+))/k)))
print(list[Int(k)/2])

print(list.max()!-list.min()!)

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
func solution3() {}
func solution2() {}
func solution1() {}

import Foundation
