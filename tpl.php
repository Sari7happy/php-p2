<!DOCTYPE html>
<html lang="ja">
<?php include('header.inc.php'); ?>

<body>
    <h1>hello templates</h1>
    <p>This is <?= $name ?></p>
    <!-- <?= $name ?>でも省略できる -->
    <p><?= $message ?></p>
    <?php foreach ($players as $player) { ?>
        <p><?= $player ?>はモンスターと戦った</p>
    <?php } ?>
    <?php include('footer.inc.php'); ?>
    <!-- ファイルを読み込むinclude -->
</body>

</html>