import Foundation

struct Stack<T> {
    private var stack: [T] = []

    public var count: Int {
        return stack.count
    }

    public var isEmpty: Bool {
        return stack.isEmpty
    }

    public mutating func push(_ element: T) {
        stack.append(element)
    }

    public mutating func pop() -> T? {
        return isEmpty ? nil : stack.popLast()!
    }

}

//let t = Int(readLine()!)!
var stack: Stack = Stack<Int>()
let lll = [5,
           4,
           3,
           2,
           1]
for i in 1...lll.count {
    let n = lll[i-1]//Int(readLine()!)!
    if stack.isEmpty {
        stack.push(n)
    } else {
        while !stack.isEmpty {
            let a = stack.pop()!
            if a > n {
                stack.push(a)
                break
            } else if a == n {
                break
            }
        }
        stack.push(n)
    }
}
print(stack.count)
