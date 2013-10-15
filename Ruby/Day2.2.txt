class Tree
	attr_accessor :children, :node_name

	def initialize(treedef)
		unless treedef.empty?
			treedef.each do |p,c|
				@children =[]
				c.each do |key, value|
					@children << Tree.new({ key => value})
				end
				@node_name = p

			end
		end
	end

	def visit_all(&block)
		visit &block
		@children.each do |child|
		 	child.visit_all &block
	 	end
	end

	def visit(&block)
		block.call self
	end
end

thing = {'grandpa' => {'dad' => {'child1' => {}, 'child2' => {}}, 'uncle' => {'child3' => {}, 'child4' => {}}}}
ruby_tree = Tree.new(thing)

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts
puts "Visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}