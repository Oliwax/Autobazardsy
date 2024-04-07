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

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Extract data from the form
    $name = $_POST['name'];
    $surname = $_POST['surname'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $dealership = $_POST['dealership'];

    // Check if car ID is set in the URL
    if(isset($_GET['car_id'])) {
        $car_id = $_GET['car_id'];

        // Insert data into 'rezervacie' table
        $query = "INSERT INTO rezervacie (ID_auta, ID_predajne, Meno, Priezvisko, Email, Telefonne_cislo, Datum_rezervacie) VALUES (?, ?, ?, ?, ?, ?, NOW())";
        $stmt = $connection->prepare($query);
        $stmt->bind_param("iissss", $car_id, $dealership, $name, $surname, $email, $phone);

        // Check if insertion was successful
        if ($stmt->execute()) {
            echo "Reservation successfully created.";
        } else {
            echo "Error: " . $stmt->error;
        }

        // Close statement
        $stmt->close();
    } else {
        echo "Car ID not set.";
    }
}

// Query to fetch dealership options
$dealership_query = "SELECT ID_predajne, Nazov FROM predajne";
$dealership_result = $connection->query($dealership_query);

// Check if there are any dealerships found
if ($dealership_result->num_rows > 0) {
    // Store dealership options in an array
    $dealerships = array();
    while ($row = $dealership_result->fetch_assoc()) {
        $dealerships[$row['ID_predajne']] = $row['Nazov'];
    }
} else {
    echo "No dealerships found.";
}

// Close the connection
$connection->close();
?>

<!-- HTML form -->
<form method="post">
    <div class="form-group">
        <label for="name">Name:</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>
    </div>
    <div class="form-group">
        <label for="surname">Surname:</label>
        <input type="text" class="form-control" id="surname" name="surname" placeholder="Enter your surname" required>
    </div>
    <div class="form-group">
        <label for="phone">Phone Number:</label>
        <input type="tel" class="form-control" id="phone" name="phone" placeholder="Enter your phone number" required>
    </div>
    <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
    </div>
    <div class="form-group">
        <label for="dealership">Select Dealership:</label>
        <select class="form-control" id="dealership" name="dealership" required>
            <option value="">Select Dealership</option>
            <?php
            // Output dealership options
            foreach ($dealerships as $id => $name) {
                echo "<option value='$id'>$name</option>";
            }
            ?>
        </select>
    </div>
    <button type="submit" class="btn btn-primary">Reserve</button>
</form>
