# https://atcoder.jp/contests/abc204/submissions/23278735
# https://qiita.com/drken/items/4a7869c5e304883f539b#0-%E3%81%AF%E3%81%98%E3%82%81%E3%81%AB-----%E3%82%B0%E3%83%A9%E3%83%95%E6%8E%A2%E7%B4%A2%E3%81%AE%E5%8B%95%E6%A9%9F

class Graph
  attr_accessor :graph, :seen
  # :graph グラフ変数 隣接リスト表現

  def initialize(nodes_of_number)
    @graph = Array.new(nodes_of_number) { Array.new }
    @seen = Array.new
  end

  # aからbの向きでnodeを結ぶ
  def link(a,b)
    @graph[a] << b
  end

=begin
  def dfs(v)
    return if (@seen[v])
    @seen[v] = true
    @graph[v].each do |vv|
      dfs(vv)
    end
  end
=end
end

