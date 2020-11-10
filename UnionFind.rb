class UnionFind
  attr_accessor :par
  def initialize
    @par = []
  end

  # nは頂点の数
  # par[i] = i ならば根
  def init(n)
    for i in 0...n do
      @par[i] = i
    end
  end

  # 木の根を求める
  def root(x)
    if (@par[x] == x) # 根
      return x
    else
      return @par[x] = root(@par[x])
    end
  end

  # xとyが同じ集合に属するか否か
  def same(x, y)
    root(x) == root(y)
  end

  # xとyの属する集合を併合
  def unite(x, y)
    x = root(x)
    y = root(y)
    return if (x == y) # 同じならなにもしなくてよい

    @par[x] = y
  end
end

=begin
# 使用方法
# https://atcoder.jp/contests/atc001/tasks/unionfind_a

n,q = gets.chomp.split(' ').map(&:to_i)
uf = UnionFind.new
uf.init(n)

q.times do
  p,a,b = gets.chomp.split(' ').map(&:to_i)
  if (p == 0)
    # 連結
    uf.unite(a,b)
  else
    #(p == 1)
    # 判定
    puts uf.same(a,b) ? 'Yes' : 'No'
  end
end
=end
