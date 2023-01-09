import Foundation

func combinations<T>(source: [T], takenBy : Int) -> [[T]] {
    if(source.count == takenBy) {
        return [source]
    }

    if(source.isEmpty) {
        return []
    }

    if(takenBy == 0) {
        return []
    }

    if(takenBy == 1) {
        return source.map { [$0] }
    }

    var result : [[T]] = []

    let rest = Array(source.suffix(from: 1))
    let subCombos = combinations(source: rest, takenBy: takenBy - 1)
    result += subCombos.map { [source[0]] + $0 }
    result += combinations(source: rest, takenBy: takenBy)
    return result
}

let numbers = [1,2,3,4,5]
print(combinations(source:numbers,takenBy:2))

// print [[1, 2], [1, 3], [1, 4], [1, 5], [2, 3], [2, 4], [2, 5], [3, 4], [3, 5], [4, 5]]



// 모든 조합 구하기
func allCombos<T>(elements: Array<T>) -> [[T]] {
    var answer: [[T]] = []
    for i in 1...elements.count {
        answer.append(contentsOf: combinations(source: elements, takenBy: i))
    }
    return answer
}

let numbers2 = [1,2,3]
print(allCombos(elements: numbers2))

// prints [[1], [2], [3], [1, 2], [1, 3], [2, 3], [1, 2, 3]]
