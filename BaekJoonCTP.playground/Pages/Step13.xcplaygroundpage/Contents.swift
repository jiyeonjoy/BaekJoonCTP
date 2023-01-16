import Foundation

func s2061() {
    func isPrime(num: Int) -> Bool {
        if(num<4) {
            return num == 1 ? false : true
        }
        for i in 2...Int(sqrt(Double(num))) {
            if(num % i == 0) { return false }
        }
        return true
    }

    func mod(_ s:String, _ p:Int) -> Int {
        var ret = 0
        for c in s {
            ret = (ret*10+Int(String(c))!)%p
        }
        return ret
    }

    let l = readLine()!.split(separator: " ").map{ String($0) }
    let k = l[0]
    let m = Int(l[1])!
    var a = -1
    for i in 1...m-1 {
        if isPrime(num: i) && mod(k, i) == 0 {
            a = i
            break
        }
    }
    if a == -1 {
        print("GOOD")
    } else {
        print("BAD \(a)")
    }
}

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
