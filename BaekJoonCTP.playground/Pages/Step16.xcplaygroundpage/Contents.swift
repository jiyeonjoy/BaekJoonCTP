import Foundation

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
