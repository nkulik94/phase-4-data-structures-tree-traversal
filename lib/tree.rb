class Tree
  attr_accessor :root
  def initialize(root = nil)
    @root = root
  end

  def depth_traverse node, id
    if node[:id] == id
      right_node = node
    else
      puts 'hi'
      node[:children].each { |node| depth_traverse(node, id) }
    end
    right_node
  end 

  def get_element_by_id id
     visit = [self.root]
     right_node = self.root
     while visit.length > 0
      node = visit.shift
      if node[:id] == id
        return right_node = node
      else
        visit = node[:children] + visit
      end
     end
  end
end