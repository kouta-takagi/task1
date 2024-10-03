# 課題の答え

1. Employee.where("age < ?", 30)

2. Project.find_by(name: "project1").employees

3. Employee.joins(:assignments).where(assignments: { role: "Manager" })

4. Employee.all.joins(:department).pluck('departments.name').tally

# 参考記事

・中間テーブル
https://qiita.com/kyubey1228/items/49b89eac58aacf63e0c1

・where メソッド
https://pikawaka.com/rails/where

・join メソッド
https://qiita.com/k-o-u/items/31e4a2f9f5d2a3c7867f

・pluck メソッド
https://dexall.co.jp/articles/?p=53

・スコープとクラスメソッドの使い分け
スコープは常に ActiveRecord::Relation を返す。
クラスメソッドは、任意の型（配列、数値、オブジェクトなど）を返すことができる。
クエリをフィルタリングするだけならスコープが適している。
より複雑なロジックや他の処理が必要ならクラスメソッドが適している。
