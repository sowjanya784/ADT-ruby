class Map
    def initialize
        @map = []
    end

    def set(key, value)
        @map << [key, value] if @map.none?{|sub| sub.first == key}
    end

    def get(key)
        @map.each do |sub|
            return sub.last if sub.first == key
        end
        nil
    end

    def delete(key)
        idx = 0
        @map.each_with_index do |sub, i|
            idx = i if sub.first == key
        end
        @map.delete_at(idx) if @map[idx].first == key
    end

    def show
        p @map
    end
end

m = Map.new
m.set(1,2)
m.set(3,4)
m.show
m.set(1,4)
m.show

p m.get(3)

m.delete 3
m.show
