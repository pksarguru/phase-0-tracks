class TodoList
  def initialize(list)
    @list = list
  end

  def add_item(item)
    @list << item
  end

  def delete_item(item)
    @list.delete(item)
  end

  def get_item(item_index)
    item = @list[item_index]
  end

  # Getter Methods
  def get_items()
    @list
  end
end
