class TreeNode

  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
  end
end

#Using BFS
#paint [1,2,3,nil,4,nil,5]
#       1
#    |      |
#    2      3
#  /  \    / \
# nil 4  nil  5 same depth/node different parent = true

def is_cousins(root, x, y)
  nodes = [ root ]
  #'til nodes empty use this while to extract the node whit shift function of array'
  until nodes.empty?
    cousins = []
    cousin_vals = []

    until nodes.empty?
      node = nodes.shift

      child_vals = [node&.left&.val, node&.right&.val]
      #cheking childs
      return false if child_vals.include?(x) && child_vals.include?(y)

      cousin_vals.push(node.left.val) if node.left
      cousin_vals.push(node.right.val) if node.right

      return true if cousin_vals.include?(x) && cousin_vals.include?(y)

      cousins.push(node.left) if node.left
      cousins.push(node.right) if node.right
    end
    # return founded cousins
    nodes = cousins
  end

  false
end
