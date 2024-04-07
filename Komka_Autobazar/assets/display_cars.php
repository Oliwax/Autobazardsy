<?php
// Database connection parameters
$servername = "localhost";
$username = "root"; // Your database username
$password = ""; // Your database password
$dbname = "autobazar"; // Your database name

// Create connection
$connection = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
}

error_reporting(E_ALL);
ini_set('display_errors', 1);

// Prepare and execute query
$query = "SELECT * FROM auta";
$result = $connection->query($query);

// Check for errors in query execution
if (!$result) {
    die("Query failed: " . $connection->error);
}

// Check if there are any cars found
if ($result->num_rows > 0) {
    echo '<div class="row">';
    while ($row = $result->fetch_assoc()) {
        // Extracting car data
        $brand = $row['Znacka'];
        $model = $row['Model'];
        $year = $row['Rok_vyroby'];
        $mileage = $row['Najazdene_km'];
        $drivetrain = $row['Typ_pohonu'];
        $transmission = $row['Prevodovka'];
        $price = $row['Cena'];
        $image = $row['Obrazok'];
        $car_id = $row['ID_auta'];

        // Outputting HTML with dynamic data
        ?>
        <div class="col-lg-4 col-md-6 col-sm-12">
            <div class="card mb-4 shadow-sm">
                <img class="card-img-top" src="<?php echo $image; ?>" alt="Car Image" style="height: 300px">
                <div class="card-body">
                    <h5 class="card-title"><?php echo $brand . " " . $model . " " . $year; ?></h5>
                    <p class="card-text">Mileage: <?php echo $mileage; ?> km<br>
                        Drivetrain: <?php echo $drivetrain; ?><br>
                        Transmission: <?php echo $transmission; ?></p>
                    <div class="d-flex justify-content-between align-items-center">
                        <small class="text-muted"><?php echo "$" . $price; ?></small>
                        <a href="../detail_car.php?car_id=<?php echo $car_id; ?>" class="btn btn-sm btn-outline-secondary">View Details</a>
                    </div>
                </div>
            </div>
        </div>
        <?php
    }
    echo '</div>'; // Close row
} else {
    echo "No cars found.";
}

// Close the connection
$connection->close();
?>
