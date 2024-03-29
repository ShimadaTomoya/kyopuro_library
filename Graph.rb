# https://atcoder.jp/contests/abc204/submissions/23278735
# https://qiita.com/drken/items/4a7869c5e304883f539b#0-%E3%81%AF%E3%81%98%E3%82%81%E3%81%AB-----%E3%82%B0%E3%83%A9%E3%83%95%E6%8E%A2%E7%B4%A2%E3%81%AE%E5%8B%95%E6%A9%9F

class Graph
  attr_accessor :graph, :seen, :num
  # :graph グラフ変数 隣接リスト表現

  MOD = 1000000007

  def initialize(nodes_of_number)
    @graph = Array.new(nodes_of_number) { Array.new }
    @seen = Array.new(nodes_of_number, Float::INFINITY)
    @num = Array.new(nodes_of_number, 0)
  end
 
  # aからbの向き(a->b)でnodeを結ぶ
  # ※無向グラフの場合は互いにlinkする
  def link(a,b)
    @graph[a] << b
  end
 
  # aからbまでの最短距離（いくつの辺を通過するか）
  # bfs
  def cost_of(a,b)
    que = []
    seen = @seen.clone
    seen[a] = 0
    num = @num.clone
    num[a] = 1
    que.push(a)
    while (que.length > 0)
      i = que.shift
      @graph[i].each do |j|
        if (seen[j] > seen[i] + 1)
          seen[j] = seen[i] + 1
          num[j] = num[i]
          que.push(j)
        elsif (seen[j] == seen[i] + 1)
          num[j] += num[i]
          num[j] %= MOD
        end
      end
    end
    return seen[b]
    # return seen # aから到達可能なnodeを調べる際など、seenを返して欲しい時もあるよな
    # retuen num[b]  # aからbまでの最短経路の数
  end
 
=begin
  private
  def dfs(v)
    return if (@seen[v])
    @seen[v] = true
    @graph[v].each do |vv|
      dfs(vv)
    end
  end
=end
end