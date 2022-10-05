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
SELECT* FROM players INNER JOIN jobs ON jobs.id =players.job_id;
-- 2つを結合

LECT name,level,vitality FROM players INNER JOIN jobs ON jobs.id =players.job_id;
-- 特定の値を取り出す

SELECT job_id, job_name, COUNT(*) FROM players INNER JOIN jobs ON jobs.id =players.job_id GROUP by job_id;
-- 職業名と名前かカウントできる

-- 日次・月次のアクセス数を求める
SELECT Date_format(startTime,'%Y-%m'),count(logID)
FROM eventlog

Group by Date_format(startTime,'%Y-%m');

アクティブユーザー数と文字入れれる、カウントできる
SELECT COUNT(*) AS アクティブユーザー数
FROM users;

-- nullは空っぽをあらわす
-- 本当に使ってるユーザー数-null=は現在の利用者数
SELECT COUNT(*) AS アクティブユーザー数
FROM users
where deleted_at Is null;
-- DISTINCTは重複なく表示するときに使う
SELECT DISTINCT 取引先名1
FROM 取引先

-- いろいろな集計,合計値はSUMを使う
SELECT
	eventlog.userID AS ユーザーID,
	sum(events.increase_exp) AS 獲得経験値
FROM
	eventlog
	INNER JOIN events ON events.eventID = eventlog.eventID
group by eventlog.userID;	

-- いろいろな集計、平均はavgで求められる
SELECT
	eventlog.userID AS ユーザーID,
	sum(events.increase_exp) AS 合計,
	avg(events.increase_exp) AS 平均
FROM
	eventlog
	INNER JOIN events ON events.eventID = eventlog.eventID
group by eventlog.userID;	

------------------------------------------------------------
- 1. FROM 対象テーブルからデータを取り出す
- 2. WHERE 条件に一致するレコードを絞り込み
- 3. GROUP BY グループ化
- 4. HAVING 集計結果から絞り込み
- 5. SELECT 指定したカラムだけを表示

SELECT
	eventlog.userID AS ユーザーID,
    SUM(events.increase_exp) AS 合計,
    AVG(events.increase_exp) AS 平均
FROM
	eventlog
	INNER JOIN events ON events.eventID = eventlog.eventID
GROUP BY eventlog.userID
HAVING SUM(events.increase_exp) >=3000;	
