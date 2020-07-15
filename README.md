# Assessment

&nbsp;
<br />
Solve
&nbsp;
<br />
&nbsp;
<br />

## 1. Jewels and Stones

You're given strings `J` representing the types of stones that are jewels, and `S` representing the stones you have.  Each character in `S` is a type of stone you have.  You want to know how many of the stones you have are also jewels.

The letters in `J` are guaranteed distinct, and all characters in `J` and `S` are letters. Letters are case sensitive, so "a" is considered a different type of stone from `"A"`.

#### Example 1:

```
Input: J = "aA", S = "aAAbbbb"
Output: 3

```

#### Example 2:
```
Input: J = "z", S = "ZZ"
Output: 0
Note:
````

`S` and `J` will consist of letters and have length at most 50.
The characters in `J` are distinct.

| _**Hint**: For each stone, check if it is a jewel._

```ruby
# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
  #...
end
```

## 2. Cousins in Binary tree


In a binary tree, the root node is at depth `0`, and children of each depth `k` node are at depth `k+1`.

Two nodes of a binary tree are cousins if they have the same depth, but have **different parents**.

We are given the `root` of a binary tree with unique values, and the values `x` and `y` of two different nodes in the tree.

Return `true` if and only if the nodes corresponding to the values `x` and `y` are cousins.



#### Example 1:

```
Input: root = [1,2,3,4], x = 4, y = 3
Output: false

```

#### Example 2:
```
Input: root = [1,2,3,null,4,null,5], x = 5, y = 4
Output: true

```

#### Example 3:
```
Input: root = [1,2,3,null,4], x = 2, y = 3
Output: false
```

Constraints:

The number of nodes in the tree will be between `2` and `100`.
Each node has a unique integer value from `1` to `100`.


Code reference:

```ruby
# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

# @param {TreeNode} root
# @param {Integer} x
# @param {Integer} y
# @return {Boolean}
def is_cousins(root, x, y)
  # your code goes here...
end
```
