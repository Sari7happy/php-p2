SELECT * FROM  players;
--プレイヤーのテーブルから取り出す
SELECT name,level FROM players;
-- 特定のカラムだけ取り出すのはカンマで区切る

SELECT * FROM players WHERE level >= 7;
-- レベル7以上のみ取り出す
SELECT * FROM players WHERE level>=7AND job_id<>6;
-- 条件を組み合わせるとき7以上で6も等しくないとき