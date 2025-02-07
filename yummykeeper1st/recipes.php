<?php
require 'db.php';
$result = $conn->query("SELECT name, description FROM recipes");
while ($row = $result->fetch_assoc()) {
    echo "<div><h3>{$row['name']}</h3><p>{$row['description']}</p></div>";
}
?>
