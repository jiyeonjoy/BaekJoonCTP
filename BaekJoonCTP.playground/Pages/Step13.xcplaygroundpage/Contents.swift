import Foundation

func s3036() {
    func gcd(_ a: Int, _ b: Int) -> Int{
        if (b == 0) { return a }
        return gcd(b, a % b)
    }

    readLine()
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = l[0]
    for i in 1...l.count-1 {
        let b = l[i]
        let g = gcd(a, b)
        print("\(a/g)/\(b/g)")
    }
}

func s2981() {
    func gcd(_ a: Int, _ b: Int) -> Int{
        if (b == 0) { return a }
        return gcd(b, a % b)
    }

    let n = Int(readLine()!)!
    var l:[Int] = []
    var minv = 1000000000
    for _ in 1...n {
        let num = Int(readLine()!)!
        l.append(num)
        if num < minv {
            minv = num
        }
    }

    var str = ""
    var v = l[0]-minv
    for n in l {
        if n > minv {
            v = gcd(v, n-minv)
        }
    }

    if v > 3 {
        for i in 2...v/2 {
            if v%i == 0 {
                if str == "" {
                    str += "\(i)"
                } else {
                    str += " \(i)"
                }
            }
        }
    }

    if str == "" {
        str += "\(v)"
    } else {
        str += " \(v)"
    }

    print(str)
}
