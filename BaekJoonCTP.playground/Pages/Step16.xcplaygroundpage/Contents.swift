import Foundation

func s30214() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let s1 = list[0]
    let s2 = list[1]
    if s1*2 >= s2 {
        print("E")
    } else {
        print("H")
    }
}

func s29863() {
    let s = Int(readLine()!)!
    let e = Int(readLine()!)!
    if s >= 20 {
        print(24-s+e)
    } else {
        print(e-s)
    }
}

func s30454() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let n = list[0]
    let l = list[1]
    var a = 0
    var b = 0
    for _ in 1...n {
        let c = readLine()!.split(separator: "0").compactMap{ String($0) }.count
        if c == a {
            b += 1
        } else if c > a {
            a = c
            b = 1
        }
    }
    print("\(a) \(b)")
}

func s30031() {
    let n = Int(readLine()!)!
    var result = 0
    for _ in 1...n {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let width = list[0]
        if width == 136 {
            result += 1000
        } else if width == 142 {
            result += 5000
        } else if width == 148 {
            result += 10000
        } else {
            result += 50000
        }
    }
    print(result)
}

func s30224() {
    let str = readLine()!
    let num = Int(str)!
    if str.contains("7") {
        if num%7 == 0 {
            print(3)
        } else {
            print(2)
        }
    } else {
        if num%7 == 0 {
            print(1)
        } else {
            print(0)
        }
    }
}

func s29752() {
    let n = Int(readLine()!)!
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var maxCount = 0
    var count = 0
    for c in list {
        if c > 0 {
            count += 1
        } else {
            maxCount = max(maxCount, count)
            count = 0
        }
    }
    maxCount = max(maxCount, count)
    print(maxCount)
}

func s30328() {
    let c = Int(readLine()!)!
    print(c*4000)
}

func s30402() {
    for _ in 1...15 {
        let str = readLine()!
        if str.contains("w") {
            print("chunbae")
            break
        } else if str.contains("b") {
            print("nabi")
            break
        } else if str.contains("g") {
            print("yeongcheol")
            break
        }
    }
}

func s29738() {
    let t = Int(readLine()!)!
    for i in 1...t {
        let n = Int(readLine()!)!
        var result = ""
        if n <= 25 {
            result = "World Finals"
        } else if n <= 1000 {
            result = "Round 3"
        } else if n <= 4500 {
            result = "Round 2"
        } else {
            result = "Round 1"
        }
        print("Case #\(i): \(result)")
    }
}

func s29766() {
    let array = Array(readLine()!)
    let dksh = Array("DKSH")
    var i = 0
    var result = 0
    for c in array {
        if c == dksh[i] {
            if i == 3 {
                i = 0
                result += 1
            } else {
                i += 1
            }
        } else {
            if dksh[0] == c {
                i = 1
            } else {
                i = 0
            }
        }
    }
    print(result)
}

func s30676() {
    let n = Int(readLine()!)!
    if n >= 620 {
        print("Red")
    } else if n >= 590 {
        print("Orange")
    } else if n >= 570 {
        print("Yellow")
    } else if n >= 495 {
        print("Green")
    } else if n >= 450 {
        print("Blue")
    } else if n >= 425 {
        print("Indigo")
    } else {
        print("Violet")
    }
}

func s30087() {
    let dic = [
        "Algorithm":"204",
        "DataAnalysis":"207",
        "ArtificialIntelligence":"302",
        "CyberSecurity":"B101",
        "Network":"303",
        "Startup":"501",
        "TestStrategy":"105",
    ]
    let n = Int(readLine()!)!
    for _ in 1...n {
        let str = readLine()!
        print(dic[str] ?? "")
    }
}

func s30033() {
    let n = Int(readLine()!)!
    let list1 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let list2 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var result = 0
    for i in 0..<n {
        if list1[i] <= list2[i] {
            result += 1
        }
    }
    print(result)
}

func s30017() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = list[0]
    let b = list[1]
    var result = 0
    if a > b {
        result = b+b+1
    } else {
        result = a+a-1
    }
    print(result)
}

func s29731() {
    let n = Int(readLine()!)!
    let list = [
        "Never gonna give you up",
        "Never gonna let you down",
        "Never gonna run around and desert you",
        "Never gonna make you cry",
        "Never gonna say goodbye",
        "Never gonna tell a lie and hurt you",
        "Never gonna stop"
    ]
    var isYes = false
    for _ in 1...n {
        let str = readLine()!
        if !list.contains(str) {
            isYes = true
            break
        }
    }
    if isYes {
        print("Yes")
    } else {
        print("No")
    }
}

func s29736() {
    let list1 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let list2 = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = list1[0]
    let b = list1[1]
    let k = list2[0]
    let x = list2[1]
    var result = 0
    for n in a...b {
        if (n <= k && n >= k-x) || (n >= k && n <= k+x ) {
            result += 1
        }
    }
    if result > 0 {
        print(result)
    } else {
        print("IMPOSSIBLE")
    }
}

func s29699() {
    let n = Int(readLine()!)!
    let array = Array("WelcomeToSMUPC")
    let char = array[(n-1)%array.count]
    print(char)
}

func s29790() {
    let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let n = list[0]
    let u = list[1]
    let l = list[2]
    if n >= 1000 {
        if u >= 8000 || l >= 260 {
            print("Very Good")
        } else {
            print("Good")
        }
    } else {
        print("Bad")
    }
}

func s30030() {
    let b = Int(readLine()!)!
    let a = b*10/11
    print(a)
}

func s30007() {
    let n = Int(readLine()!)!
    for _ in 1...n {
        let list = readLine()!.split(separator: " ").map{ Int(String($0))! }
        let a = list[0]
        let b = list[1]
        let x = list[2]
        let w = a*(x-1)+b
        print(w)
    }
}

func s29751() {
    let list = readLine()!.split(separator: " ").map{ Double(String($0))! }
    let result = list[0]*list[1]*0.5
    let str = String(format: "%.1f", result)
    print(str)
}

func s6856() {
    let a = Int(readLine()!)!
    let b = Int(readLine()!)!
    var c = 0
    for i in 1...a {
        if i >= 10 {
            break
        }
        if 10-i <= b {
            c += 1
        }
    }
    print("There \(c != 1 ? "are" : "is") \(c) way\(c != 1 ? "s" : "") to get the sum 10.")
}

func s24387() {
    let l1 = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()
    let l2 = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()
    var a = 0
    for i in 0..<l1.count {
        a += l1[i]*l2[i]
    }
    print(a)
}

func s17924() {
    let n = Int(readLine()!)!
    var s = 0
    var e = 1000
    for _ in 1...n {
        let line = readLine()!.split(separator: " ").map{ Int(String($0))! }
        if line[0] > s {
            s = line[0]
        }
        if line[1] < e {
            e = line[1]
        }
    }
    if e-s < 0 {
        print("edward is right")
    } else {
        print("gunilla has a point")
    }
}

func s28225() {
    let line = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let n = line[0]
    let f = Double(line[1])
    var minT = Double(f)
    var carNum = 0
    for i in 1...n {
        let l = readLine()!.split(separator: " ").map{ Double(String($0))! }
        let t:Double = (f-l[0])/l[1]
        if carNum == 0 || minT > t {
            carNum = i
            minT = t
        }
    }
    print(carNum)
}

func s18309() {
    var minT = -100
    var maxT = -100
    while true {
        guard let line = readLine() else { break }
        var list = line.split(separator: " ").map{ String($0) }
        list.removeFirst()
        var a = list.map{ Int($0)! }
        let minA = a.min()!
        let maxA = a.max()!
        if minT == -100 || minT > minA {
            minT = minA
        }
        if maxT == -100 || maxT < maxA {
            maxT = maxA
        }
    }
    print("\(minT) \(maxT)")
}

func s29546() {
    let n = Int(readLine()!)!
    var list:[String] = []
    for _ in 1...n {
        list.append(readLine()!)
    }
    let m = Int(readLine()!)!
    for _ in 1...m {
        let l = readLine()!.split(separator: " ").map{ Int(String($0))! }
        for i in l[0]...l[1] {
            print(list[i-1])
        }
    }
}

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
