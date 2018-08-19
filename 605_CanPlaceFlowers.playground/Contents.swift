//: Playground - noun: a place where people can play

import Foundation

class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var zeroCount:Int = 1
        var numbersCanPlanted:Int = 0
        for i in 0..<flowerbed.count {
            if flowerbed[i] == 0 {
                zeroCount += 1
            } else {
                numbersCanPlanted += (zeroCount-1) / 2
                zeroCount = 0
            }
        }
        numbersCanPlanted += zeroCount/2
        print(numbersCanPlanted)
        return numbersCanPlanted >= n
    }
}
let testArray:[Int] = [1,0,0,0,0,0]
let planeStep:Int = 2// false
let result:Bool = Solution().canPlaceFlowers(testArray, planeStep)
