<?php
// Pripojenie k databáze
$servername = "localhost"; // Zmeniť podľa vašich nastavení
$username = "root"; // Zmeniť na vaše užívateľské meno
$password = ""; // Zmeniť na vaše heslo
$dbname = "autobazar"; // Zmeniť na názov vašej databázy

// Vytvorenie pripojenia
$conn = new mysqli($servername, $username, $password, $dbname);

// Overenie pripojenia
if ($conn->connect_error) {
    die("Pripojenie zlyhalo: " . $conn->connect_error);
}

// Kontrola, či bol zaslaný parametrom ID auta
if(isset($_GET['car_id'])) {
    // Získať ID auta z parametrov URL
    $car_id = $_GET['car_id'];

    // Pripraviť SQL dotaz na výber informácií o aute
    $sql = "SELECT * FROM auta WHERE ID_auta = $car_id"; // Predpokladá sa, že ID auta je uložené v stĺpci 'ID_auta'

    // Vykonanie SQL dotazu
    $result = $conn->query($sql);

    // Kontrola, či boli získané nejaké výsledky
    if ($result->num_rows > 0) {
        // Výpis informácií o aute
        while($row = $result->fetch_assoc()) {
            echo '<div class="row">';
            echo '<div class="col-md-6">';
            echo '<img src="' . $row["Obrazok"] . '" class="img-fluid" alt="Car Image">';
            echo '</div>';
            echo '<div class="col-md-6">';
            echo '<h1 class="mt-3">' . $row["Znacka"] . ' ' . $row["Model"] . '</h1>'; // Zobraziť značku a model auta
            echo '<div class="details mt-3">';
            echo '<p><strong>Rok výroby:</strong> ' . $row["Rok_vyroby"] . '</p>';
            echo '<p><strong>Typ karosérie:</strong> ' . $row["Typ_karosérie"] . '</p>';
            echo '<p><strong>Farba:</strong> ' . $row["Farba"] . '</p>';
            echo '<p><strong>Najazdené km:</strong> ' . $row["Najazdene_km"] . '</p>';
            echo '<p><strong>Typ pohonu:</strong> ' . $row["Typ_pohonu"] . '</p>';
            echo '<p><strong>Prevodovka:</strong> ' . $row["Prevodovka"] . '</p>';
            echo '<p><strong>Cena:</strong> $' . $row["Cena"] . '</p>';
            echo '<p><strong>Lokalita:</strong> ' . $row["Lokalita"] . '</p>';
            echo '<p><strong>Kontaktné údaje:</strong> ' . $row["Kontaktné_udaje"] . '</p>';
            echo '</div>';
            echo '</div>';
            echo '</div>';
        }
    } else {
        echo "Žiadne informácie o aute neboli nájdené.";
    }
} else {
    echo "ID auta nebolo poslané.";
}

// Zatvorenie pripojenia k databáze
$conn->close();
?>
