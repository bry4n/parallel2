require 'celluloid'


class Parallel

  def self.each(collection, &block)
    klass = new(collection, &block)
    klass.parallelized_each
    collection
  end

  def self.map(collection, &block)
    klass = new(collection, &block)
    klass.parallelized_map
  end

  def initialize(collection, &block)
    @collection   = collection
    @block        = block
  end

  def parallelized_each
    futures.each(&:value)
  end
  
  def parallelized_map
    futures.map(&:value)
  end

  def futures
    @futures ||= @collection.map do |item|
      Celluloid::Future.new(item, &@block)
    end
  end

end
