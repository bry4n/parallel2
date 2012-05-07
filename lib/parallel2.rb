require 'celluloid'


class Parallel

  def self.each(collection, &block)
    klass = new(collection, &block)
    klass.parallelized_each(&block)
    collection
  end

  def initialize(collection, &block)
    @collection   = collection
    @block        = block
  end

  def parallelized_each(&block)
    futures.each(&:value)
  end

  def futures
    @futures ||= @collection.map do |item|
      Celluloid::Future.new(item, &@block)
    end
  end

end
