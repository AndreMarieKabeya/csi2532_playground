<?php
$host = "";
$database = "";
$user = "";
$password = "";
$dbconn = pg_connect("host=$host dbname=$database user=$user password=$password");
$result = pg_query($dbconn, "SELECT migration, migrated_at FROM schema_migrations");
$data = pg_fetch_all($result);
?>

<style>
.table-container {
  margin: 20px;
}
table {
  width: 100%;
}
table tr th {
  text-align: left;
  background-color: #D9E2EC;
}

</style>

<div class="table-container">
  <table>
    <tr>
      <th>migration</th>
      <th>migrated_at</th>
    </tr>
    <?php foreach ($data as $row) {?>
      <tr>
        <td><?php echo $row["migration"] ?></td>
        <td><?php echo $row["migrated_at"] ?></td>
      </tr>
    <?php } ?>
  </table>
</div>
