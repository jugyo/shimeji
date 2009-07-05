module Shimeji
  module Euclid
    #   a = {
    #     "oragen" => 1,
    #     "grape"  => 1,
    #   }
    #   b = {
    #     "pine"   => 1,
    #     "grape"  => 1,
    #   }
    def calc_distance(a, b)
#      keys = a.keys & b.keys
      keys = a.keys | b.keys
#      return 0 if keys.empty?
      return 0 if (a.keys & b.keys).empty?
      sum = 0
      keys.each do |key|
        sum += (a[key].to_f - b[key].to_f) ** 2
      end

      1.0 / ( 1.0 + Math.sqrt(sum) )
    end
  end
end

# Shimeji::Euclid.calc_distance(jygyo, ogawa)
# include Shimeji::Euclid
# ogawa = {"grape" => 1, "pine" => 1}
# jugyo = {"grape" => 1, "pine" => 1}
# tsuyoshikawa = {"grape" => 1, "orange" => 1}
# calc_distance(jugyo, tsuyoshikawa) #=>
# calc_distance(jugyo, ogawa) #=>
# sakurai = {"orange" => 1, "apple" => 1}
# calc_distance(jugyo, sakurai) #=>
# sakurai.keys | jugyo.keys #=>
