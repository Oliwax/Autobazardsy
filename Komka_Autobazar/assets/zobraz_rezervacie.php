<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservations</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
            cursor: pointer;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        .delete-btn {
            background-color: #ff6347;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
        }
        .delete-btn:hover {
            background-color: #cc4c39;
        }
    </style>
</head>
<body>
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

// Check if delete button was clicked
if (isset($_POST['delete'])) {
    $delete_id = $_POST['delete_id'];
    $delete_query = "DELETE FROM rezervacie WHERE ID_rezervacie = $delete_id";
    if ($connection->query($delete_query) === TRUE) {
        echo "Record deleted successfully";
    } else {
        echo "Error deleting record: " . $connection->error;
    }
}

// Check if sort button was clicked
if (isset($_POST['sort'])) {
    // Toggle sorting order
    if ($_POST['sort'] == 'ASC') {
        $sort_order = 'DESC';
    } else {
        $sort_order = 'ASC';
    }
} else {
    $sort_order = 'ASC';
}

// Query to fetch reservations
$reservation_query = "SELECT rezervacie.ID_rezervacie, auta.Znacka, auta.Model, predajne.Nazov, rezervacie.Meno, rezervacie.Priezvisko, rezervacie.Email, rezervacie.Telefonne_cislo, rezervacie.Datum_rezervacie FROM rezervacie INNER JOIN auta ON rezervacie.ID_auta = auta.ID_auta INNER JOIN predajne ON rezervacie.ID_predajne = predajne.ID_predajne ORDER BY rezervacie.Meno $sort_order";
$reservation_result = $connection->query($reservation_query);

// Check if there are any reservations found
if ($reservation_result->num_rows > 0) {
    echo "<h2>Reservations</h2>";
    echo "<table>
            <tr>
            <th onclick=\"document.getElementById('sort_order').value='" . ($sort_order == 'ASC' ? 'DESC' : 'ASC') . "'; document.getElementById('sort_form').submit();\">ID</th>
            <th onclick=\"sortTable(2)\">Car</th>
            <th onclick=\"sortTable(3)\">Dealership</th>
            <th onclick=\"sortTable(4)\">Name</th>
            <th onclick=\"sortTable(5)\">Surname</th>
            <th onclick=\"sortTable(6)\">Email</th>
            <th onclick=\"sortTable(7)\">Phone Number</th>
            <th onclick=\"sortTable(8)\">Reservation Date</th>
            <th>Action</th>
            </tr>";

    // Output data of each row
    while ($row = $reservation_result->fetch_assoc()) {
        echo "<tr>
                <td>" . $row["ID_rezervacie"] . "</td>
                <td>" . $row["Znacka"] . " " . $row["Model"] . "</td>
                <td>" . $row["Nazov"] . "</td>
                <td>" . $row["Meno"] . "</td>
                <td>" . $row["Priezvisko"] . "</td>
                <td>" . $row["Email"] . "</td>
                <td>" . $row["Telefonne_cislo"] . "</td>
                <td>" . $row["Datum_rezervacie"] . "</td>
                <td>
                    <form method='post'>
                        <input type='hidden' name='delete_id' value='" . $row["ID_rezervacie"] . "'>
                        <button class='delete-btn' type='submit' name='delete'>Delete</button>
                    </form>
                </td>
                </tr>";
    }
    echo "</table>";
} else {
    echo "No reservations found.";
}

// Close the connection
$connection->close();
?>
<form id="sort_form" method="post">
    <input type="hidden" id="sort_order" name="sort" value="<?php echo $sort_order; ?>">
</form>

<script>
    var clicks = [0, 0, 0, 0, 0, 0, 0, 0]; // Array to track the number of clicks for each column

    function sortTable(colIndex) {
        clicks[colIndex]++; // Increment the click count for the column

        if (clicks[colIndex] % 3 == 1) {
            document.getElementById('sort_order').value = 'ASC'; // Set sort order to ASC for the first click
        } else if (clicks[colIndex] % 3 == 2) {
            document.getElementById('sort_order').value = 'DESC'; // Set sort order to DESC for the second click
        } else {
            document.getElementById('sort_order').value = '<?php echo $sort_order; ?>'; // Set sort order to original for the third click
        }

        document.getElementById('sort_form').submit(); // Submit the form to apply sorting
    }
</script>

</body>
</html>
