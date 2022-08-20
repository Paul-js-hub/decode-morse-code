module MyEnumerable
  def list
    @list ||= []
  end

  def all?
    @list.each do |element|
      return true unless block_given?

      true_false = yield(element)
      return false unless true_false
    end
    true
  end

  def any?
    @list.each do |element|
      return false unless block_given?

      true_false = yield(element)
      return true if true_false
    end
    false
  end

  def filter
    array = []
    @list.filter do |element|
      array.push(element) if yield element
    end
    array
  end
end
