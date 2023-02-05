import Foundation

func KMP(source:[String], target:[String]) -> Bool {
    let sourceCnt = source.count
    let targetCnt = target.count
    
    var LPS = Array(repeating: 0, count: targetCnt)
    LPS = LPScompute(target:target, LPS:LPS)
    
    var sourceIdx = 0
    var targetIdx = 0
    
    while (sourceIdx < sourceCnt) {
        if target[targetIdx] == source[sourceIdx] {
            sourceIdx += 1
            targetIdx += 1
        } else {
            if targetIdx == 0 {
                sourceIdx += 1
            } else {
                targetIdx = LPS[targetIdx - 1]
            }
        }
        if targetIdx == targetCnt {
            return true
        }
    }
    return false
}

func LPScompute(target:[String], LPS:[Int]) -> [Int] {
    var length = 0
    var idx = 1
    var LPS = LPS
    while (idx < target.count) {
        if target[idx] == target[length] {
            length += 1
            LPS[idx] = length
            idx += 1
        } else {
            if length == 0 {
                LPS[idx] = 0
                idx += 1
            } else {
                length = LPS[length - 1]
            }
        }
    }
    return LPS
}
