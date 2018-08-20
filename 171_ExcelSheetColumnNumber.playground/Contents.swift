//: Playground - noun: a place where people can play

import Foundation

class Solution {
    func titleToNumber(_ s: String) -> Int {
        let zHash:Int = "Z".unicodeScalars.first!.hashValue
        let aHash:Int = "A".unicodeScalars.first!.hashValue
        var result:Int = 0
        for (_, element) in s.unicodeScalars.enumerated() {
            let itemHash:Int = element.hashValue
            let difference = (zHash - aHash + 1) - (zHash - itemHash)
            result = (result * 26) + difference
        }
        return result
    }
}
let testCase = "ZY"
let result = Solution().titleToNumber(testCase)
