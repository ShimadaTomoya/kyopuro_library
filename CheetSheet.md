#入力テンプレート1（基本・NA数列問題）
```ruby
n = gets.to_s.chomp.to_i
a = gets.to_s.chomp.split(' ').map{|e| e.to_i}
```

# 使える武器
- 二分探索（bsearch, bseach_index）
- 累積和（Ruisekiwa.rb）
- DP
- UnionFind（UnionFine.rb）
- bit全探索（permutaion, repeated_permutation）
- DFS（Graph）
- BFS
- メモ化、メモ化再帰
- あらかじめソート

# 質問集
1. どのような前処理をしようか。たいていは入力を別のデータ構造に格納し、計算量を減らす。
2. 自分の知っている典型に当てはまらないか
- 累積和配列を生成するとうまくいかないか？
- グラフの問題か？
  - keywords: ペア化、グループ化、辺、道
  - UnionFind,DFS,BFS
- 二分探索が使えないか？
- 固定して二重ループ問題ではないか

# bsearch,bsearch_indexの使い方・注意点
- https://docs.ruby-lang.org/ja/latest/method/Array/i/bsearch.html
- ＞self はあらかじめソートしておく必要があります。
- 見つからなければnilを返す
- いわゆるlower_bound
```ruby
ary.bsearch {|x| x >=  y } # y以上で一番左にある値を返す
ary.bsearch_index {|x| x >=  y } # y以上で一番左にあるindexを返す

ary = [0, 4, 7, 10, 12]
ary.bsearch {|x| x >=  -1 } # => 0
ary.bsearch {|x| x >=  0 } # => 0
ary.bsearch {|x| x >=  1 } # => 4
ary.bsearch {|x| x >=  2 } # => 4
ary.bsearch {|x| x >=  3 } # => 4
ary.bsearch {|x| x >=  4 } # => 4
ary.bsearch {|x| x >=  5 } # => 7
ary.bsearch {|x| x >=  6 } # => 7
ary.bsearch {|x| x >=  7 } # => 7
ary.bsearch {|x| x >= 12 } # => 12
ary.bsearch {|x| x >= 13 } # => nil
ary.bsearch {|x| x >= 100 } # => nil
```