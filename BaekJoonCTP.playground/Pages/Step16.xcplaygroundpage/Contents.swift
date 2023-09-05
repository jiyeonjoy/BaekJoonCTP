import Foundation

func s29340() {
    let l1 = readLine()!.map{ Int(String($0))! }
    let l2 = readLine()!.map{ Int(String($0))! }
    var a = ""
    for i in 0..<l1.count {
        a += "\(max(l1[i], l2[i]))"
    }
    print(a)
}

func s28648() {
    let n = Int(readLine()!)!
    var minV = -1
    for _ in 1...n {
        let sum = readLine()!.split(separator: " ").map{ Int(String($0))! }.reduce(0, +)
        if minV == -1 || minV > sum {
            minV = sum
        }
    }
    print(minV)
}

func s28519() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()
    let a = l[0]
    let b = l[1]
    if a == b {
        print(a*2)
    } else {
        print(a*2+1)
    }
}

func s28490() {
    let n = Int(readLine()!)!
    var maxV = 0
    for _ in 1...n {
        let c = readLine()!.split(separator: " ").map{ Int(String($0))! }.reduce(1, *)
        if c > maxV {
            maxV = c
        }
    }
    print(maxV)
}

func s28248() {
    let p = Int(readLine()!)!
    let c = Int(readLine()!)!
    let a = 50*p-10*c+(p>c ? 500 : 0)
    print(a)
}

func s28249() {
    let map = [
        "Poblano": 1500,
        "Mirasol": 6000,
        "Serrano": 15500,
        "Cayenne": 40000,
        "Thai": 75000,
        "Habanero": 125000,
    ]

    let n = Int(readLine()!)!
    var a = 0
    for _ in 1...n {
        a += map[readLine()!] ?? 0
    }
    print(a)
}

func s29163() {
    readLine()
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = l.filter{ $0%2 == 0 }.count
    let b = l.count-a
    if a > b {
        print("Happy")
    } else {
        print("Sad")
    }
}

func s28214(_ l:[Int], _ list:[Int]) {
//    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let N = l[0]
    let K = l[1]
    let P = l[2]
    if P > K {
        print(0)
    } else {
//        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        var s = 0
        for i in 0..<N {
            var c = 0
            for j in 0..<K {
                c += list[i*K+j]
                if c >= P {
                    s += 1
                    break
                }
            }
        }
        print(s)
    }
}

s28214([3,2,1], [1,1,0,0,1,1])

func s28927() {
    let maxL = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let maxM = 3*maxL[0]+20*maxL[1]+120*maxL[2]

    let melL = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let melM = 3*melL[0]+20*melL[1]+120*melL[2]

    if maxM > melM {
        print("Max")
    } else if maxM < melM {
        print("Mel")
    } else {
        print("Draw")
    }
}

func s28417() {
    let n = Int(readLine()!)!
    var maxV = 0
    for _ in 1...n {
        var l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        var sum = max(l[0], l[1])
        l.removeFirst()
        l.removeFirst()
        l.sort(by: >)
        sum += l[0]+l[1]
        if sum > maxV {
            maxV = sum
        }
    }
    print(maxV)
}

func s28454() {
    let a = readLine()!
    var s = 0
    let n = Int(readLine()!)!
    for _ in 1...n {
        let d = readLine()!
        if a <= d {
            s += 1
        }
    }
    print(s)
}

func s28289() {
    let n = Int(readLine()!)!
    var a1 = 0
    var a2 = 0
    var a3 = 0
    var a4 = 0
    for _ in 1...n {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        if l[0] == 1 {
            a4 += 1
        } else if l[1] == 1 || l[1] == 2 {
            a1 += 1
        } else if l[1] == 3 {
            a2 += 1
        } else {
            a3 += 1
        }
    }
    print(a1)
    print(a2)
    print(a3)
    print(a4)
}

func s28290() {
    let map = [
        "fdsajkl;":"in-out",
        "jkl;fdsa":"in-out",
        "asdf;lkj":"out-in",
        ";lkjasdf":"out-in",
        "asdfjkl;":"stairs",
        ";lkjfdsa":"reverse"
    ]
    let k = readLine()!
    print(map[k] ?? "molu")
}

func s28281() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let n = l[0]
    let x = l[1]
    let a = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var min = 2000
    for i in 0..<n-1 {
        let sum = a[i]+a[i+1]
        if sum < min {
            min = sum
        }
    }
    print(min*x)
}

func s28453() {
    readLine()
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var s = ""
    for n in l {
        var m = 0
        if n >= 300 {
            m = 1
        } else if n >= 275 {
            m = 2
        } else if n >= 250 {
            m = 3
        } else {
            m = 4
        }
        s += "\(m) "
    }

    s.removeLast()
    print(s)
}

func s28691() {
    let word = readLine()!
    let map = [
        "M":"MatKor",
        "W":"WiCys",
        "C":"CyKor",
        "A":"AlKor",
        "$":"$clear",
    ]
    print(map[word]!)
}

func s28444() {
    let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let h = l[0]
    let i = l[1]
    let a = l[2]
    let r = l[3]
    let c = l[4]
    print(h*i-a*r*c)
}

func s28352() {
    let n = Int(readLine()!)!
    var a = 6
    if n > 10 {
        for i in 11...n {
            a *= i
        }
    }
    print(a)
}

func s28295() {
    let list = ["N","E","S","W"]
    var a = 0
    while true {
        guard let line = readLine() else { break }
        let n = Int(line)!
        if n == 1 {
            a = (a+1)%4
        } else if n == 2 {
            a = (a+2)%4
        } else {
            a = (a+3)%4
        }
    }
    print(list[a])
}

func s28701() {
    let n = Int(readLine()!)!
    let s1 = n*(n+1)/2
    let s2 = s1*s1
    print(s1)
    print(s2)
    print(s2)
}

func s28431() {
    var arr:[Int] = []
    for _ in 1...5 {
        arr.append(Int(readLine()!)!)
    }
    arr.sort()
    if arr[0] < arr[1] {
        print(arr[0])
    } else if arr[2] == arr[3] {
        print(arr[4])
    } else {
        print(arr[2])
    }
}
