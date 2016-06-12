class TodoList
  def initialize(list)
    p "initializing to do list instance"
    @list = list
  end

  def get_items
    @list
  end

  def add_item(item)
    @list.push(item)
  end

  def delete_item(item)
    @list.delete(item)
  end

  def get_item(index)
    @list[index]
  end
end

# todolist = TodoList.new('mow the lawn')
# p todolist.add_item('mop')
# p todolist.get_items
# p todolist.get_items('mow the lawn','do the dishes')