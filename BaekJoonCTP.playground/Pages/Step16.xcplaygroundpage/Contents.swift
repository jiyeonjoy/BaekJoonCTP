import Foundation

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
