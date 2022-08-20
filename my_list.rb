require_relative('my_enumerable')
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each
    return to_enum(:each) unless block_given?

    counter = 0
    while counter < @list.length
      yield(@list[counter])
      counter += 1
    end
    @list
  end
end

list = MyList.new(1, 2, 3, 4)
list.all? { |e| e < 5 }
list.all? { |e| e > 5 }
list.any? { |e| e == 2 }
list.any? { |e| e == 5 }
list.filter(&:even?)
