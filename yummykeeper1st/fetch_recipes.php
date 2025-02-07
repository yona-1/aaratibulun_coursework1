<?php
header('Content-Type: application/json');
include 'db.php';

$sql = "SELECT name, description FROM recipes";
$result = $conn->query($sql);

$recipes = [];

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $recipes[] = $row;
    }
} else {
    echo json_encode(["error" => "No recipes found"]);
    exit;
}

echo json_encode($recipes);
$conn->close();
?>
