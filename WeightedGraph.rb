class WeightedGraph
  attr_accessor :graph, :seen
  # :graph グラフ変数 隣接リスト表現

=begin
  def initialize(nodes_of_number)
    @graph = Array.new(nodes_of_number) { Array.new }
    @seen = Array.new(nodes_of_number,false)
  end

  # aからbの向き(a->b)でnodeを結ぶ
  # ※無向グラフの場合は互いにlinkする
  def link(a,b)
    @graph[a] << b
  end
=end

  # aからbまでの最短コスト
  def cost_of(a,b)
  end

  # aからbまでの最短経路
  def min_route_of(a,b)
  end
end