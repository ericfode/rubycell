module Rubycell
  class Neuron 

    include Celluloid
    
    #probably want and easing function for density
    def initialize(transWeight, layers, min_density,base_expiry)
      @transWeight = transWeight 
      1.upto(layers) do |count|
        @filters.push = Bloombroom::ContinuousBloomFilter.new(density/(count/layers)
                                                              ,3
                                                              ,base_expiry*count) 
      end
      @id =  SecureRandom.base20(30)
    end
  
    def connect(neuron, layer)
      layer.upto(@filters.count - 1) do |cur|
        @filters[cur] << neuron.id 
      end 
    end

    def stimulate(neuron)
      @filters.count.downto(0) do |cur|
        if @filters[neuron.id] then break;
        end
      end
    end
  end
end
