# Algorithm
LeetCode 算法日常

### 1、两数之和
使用hash表来处理，将查找过的放到hash表中（key是当前的值，value是下表），查找目标值与当前值的差值是否在hash表的key中，如果有就会存在，否则不存在。

在进行迭代并将元素插入到表中的同时，我们还会回过头来检查表中是否已经存在当前元素所对应的目标元素。如果它存在，那我们已经找到了对应解，并立即将其返回。


```
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
```


注意：
**这种方法现在只支持闹到最近的一个满足条件的，后边的不会查找**

* 时间复杂度 O(n)
* 空间复杂度 O(n)

