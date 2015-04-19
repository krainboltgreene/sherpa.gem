module Earhart
  # A collection of route objects, used for finding a particular route
  class Routes
    include Enumerable

    def initialize(routes = [])
      @collection = routes.to_list
    end

    def add(route)
      @collection = @collection.add(route)
    end

    def find(query)
      @collection.find { |member| member.match(query) }
    end

    def each(&block)
      @collection.each(&block)
    end

    def to_s
      @collection.map(&:to_s).join("; ")
    end
  end
end
