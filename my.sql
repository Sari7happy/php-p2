SELECT * FROM  players;
--プレイヤーのテーブルから取り出す
SELECT name, level FROM players;
-- 特定のカラムだけ取り出すのはカンマで区切る

SELECT * FROM players WHERE level >= 7;
-- レベル7以上のみ取り出す
SELECT * FROM players WHERE level>=7 AND job_id <> 6;
-- 条件を組み合わせるとき7以上で6も等しくないとき
SELECT name, level FROM players WHERE level >=7;
-- レベル7以上の名前とレベル表示
SELECT COUNT(*) FROM players;
-- カウント機能
SELECT * FROM players ORDER BY LEVEL;
-- レベル順に並び替え
SELECT * FROM players ORDER BY LEVEL DESC;
-- DESCでレベル高い方から並び替え
INSERT into players(id,name,level,job_id) VALUES(11,"霧島1号",1,1);
-- 新しくメンバーを追加する方法
INSERT INTO players (id,name,level,job_id)
VALUES
			(13,"霧島3号",1,1),
			(14,"霧島4号",1,1)
            
;
SELECT*FROM players;
-- 2行追加

UPDATE players SET level =level +1 WHERE id =12;
SELECT*FROM players;
-- 更新
DELETE FROM players WHERE id =13;
SELECT*FROM players;
--1部 削除
DELETE FROM players WHERE id >= 11;
SELECT * FROM players;
-- 複数削除
