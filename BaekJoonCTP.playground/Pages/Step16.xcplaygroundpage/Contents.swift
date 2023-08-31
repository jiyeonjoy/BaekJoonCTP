import Foundation

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
