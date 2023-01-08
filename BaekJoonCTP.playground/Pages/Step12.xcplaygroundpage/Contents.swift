import Foundation

let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = list[0]
let m = list[1]
for _ in 1...n {
    pan.append(Array(readLine()!))
}

var minv = 64
for i in 0...n-8 {
    for j in 0...m-8 {
        var mina = 0
        var minb = 0
        for k in 0...7 {
            for l in 0...7 {
                if (i+j+k+l)%2 == 0 {
                    if pan[i+k][j+l] == "B" {
                        mina += 1
                    } else {
                        minb += 1
                    }
                } else {
                    if pan[i+k][j+l] == "W" {
                        mina += 1
                    } else {
                        minb += 1
                    }
                }
            }
        }
        if minv > mina {
            minv = mina
        }
        if minv > minb {
            minv = minb
        }
    }
}
print(minv)
