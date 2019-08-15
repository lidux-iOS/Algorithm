//
//  ViewController.swift
//  AlgorithmTest
//
//  Created by dx l on 2019/8/15.
//  Copyright © 2019 dx l. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let arr = [12, 32, 4, 5, 2, 8, 10, 3]
        
        let result = Solution().twoSum(arr, 15)
        print("result:\(result)")
        
    }


}

class Solution {
    /** 两数之和
     *  给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。
     *  你可以假设每种输入只会对应一个答案。但是，你不能重复利用这个数组中同样的元素。
     */
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int:Int] = [:]
        // 这里不能遍历数组，遍历数组不好拿到当前value的index
        for i in 0..<nums.count {
            let v = nums[i]
            if dict.keys.contains(target - v) {
                return [dict[target - v]!, i]
            } else {
                dict[v] = i
            }
        }
        return []
    }
}

