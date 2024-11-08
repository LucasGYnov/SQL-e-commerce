<?php

require_once 'vendor/autoload.php'; // Charge les dépendances installées, notamment Faker

$faker = Faker\Factory::create(); // Initialise Faker pour générer des données fictives

// Configuration de la connexion à la base de données
$host = "localhost"; 
$username = "root"; 
$password = ""; 
$dbname = "e_commerce";

// Connexion à la base de données
$conn = new mysqli($host, $username, $password, $dbname);

// Vérification de la connexion
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error); // Stoppe le script si la connexion échoue
}

// Déclaration des variables pour le nombre d'entrées à générer
$numUsers = 10;
$numProducts = 20;
$numAddresses = $numUsers;
$numCarts = $numUsers;
$numCartItems = 30;
$numOrders = $numUsers;
$numInvoices = $numOrders;
$numRatings = 20;
$numPhotos = 15;
$numPayments = $numUsers;

// Fonction pour remplir la table `user`
function generateUsers($conn, $faker, $numUsers) {
    for ($i = 0; $i < $numUsers; $i++) {
        $name = $faker->name;
        $email = $faker->unique()->safeEmail; // Adresse email unique
        $password = password_hash($faker->password, PASSWORD_BCRYPT); // Mot de passe haché

        $sql = "INSERT INTO user (name, email, password) VALUES ('$name', '$email', '$password')";
        $conn->query($sql); // Exécute l'insertion
    }
    echo "$numUsers users added.\n"; // Confirme l'ajout
}

// Fonction pour remplir la table `user_address`
function generateUserAddresses($conn, $faker, $numAddresses) {
    for ($i = 0; $i < $numAddresses; $i++) {
        $userId = $i + 1; // L'ID de l'utilisateur est basé sur l'index
        $street = $faker->streetAddress;
        $city = $faker->city;
        $postalCode = $faker->postcode;
        $country = $faker->country;

        $sql = "INSERT INTO user_address (user_id, street, city, postal_code, country) VALUES ($userId, '$street', '$city', '$postalCode', '$country')";
        $conn->query($sql);
    }
    echo "$numAddresses addresses added for each user.\n";
}

// Fonction pour remplir la table `product`
function generateProducts($conn, $faker, $numProducts) {
    for ($i = 0; $i < $numProducts; $i++) {
        $name = $faker->word;
        $description = $faker->text(200);
        $price = $faker->randomFloat(2, 1, 100); // Prix aléatoire entre 1 et 100
        $stock = $faker->numberBetween(1, 100); // Stock aléatoire

        $sql = "INSERT INTO product (name, description, price, stock) VALUES ('$name', '$description', $price, $stock)";
        $conn->query($sql);
    }
    echo "$numProducts products added.\n";
}

// Fonction pour remplir la table `shopping_cart`
function generateShoppingCarts($conn, $numCarts) {
    for ($i = 0; $i < $numCarts; $i++) {
        $userId = $i + 1; // Associe un panier à chaque utilisateur

        $sql = "INSERT INTO shopping_cart (user_id) VALUES ($userId)";
        $conn->query($sql);
    }
    echo "$numCarts shopping carts added for each user.\n";
}

// Fonction pour remplir la table `shopping_cart_item`
function generateShoppingCartItems($conn, $numCartItems, $numProducts) {
    for ($i = 0; $i < $numCartItems; $i++) {
        $cartId = rand(1, 10); // Panier aléatoire
        $productId = rand(1, $numProducts); // Produit aléatoire
        $quantity = rand(1, 5); // Quantité aléatoire

        $sql = "INSERT INTO shopping_cart_item (cart_id, product_id, quantity) VALUES ($cartId, $productId, $quantity)";
        $conn->query($sql);
    }
    echo "$numCartItems shopping cart items added.\n";
}

// Fonction pour remplir la table `order`
function generateOrders($conn, $numOrders) {
    for ($i = 0; $i < $numOrders; $i++) {
        $userId = $i + 1;
        $cartId = $i + 1; // Chaque commande correspond à un panier

        $sql = "INSERT INTO `order` (user_id, cart_id) VALUES ($userId, $cartId)";
        $conn->query($sql);
    }
    echo "$numOrders orders created for each shopping cart.\n";
}

// Fonction pour remplir la table `invoice`
function generateInvoices($conn, $numInvoices) {
    for ($i = 0; $i < $numInvoices; $i++) {
        $orderId = $i + 1; // Facture pour chaque commande
        $total = rand(20, 200); // Montant total aléatoire
        $invoiceDate = date('Y-m-d', strtotime('-' . rand(0, 30) . ' days')); // Date aléatoire récente

        $sql = "INSERT INTO invoice (order_id, total, invoice_date) VALUES ($orderId, $total, '$invoiceDate')";
        $conn->query($sql);
    }
    echo "$numInvoices invoices added for each order.\n";
}

// Fonction pour remplir la table `product_rating`
function generateProductRatings($conn, $faker, $numRatings, $numProducts, $numUsers) {
    for ($i = 0; $i < $numRatings; $i++) {
        $userId = rand(1, $numUsers); // Utilisateur aléatoire
        $productId = rand(1, $numProducts); // Produit aléatoire
        $rating = rand(1, 5); // Note entre 1 et 5
        $comment = $faker->text(100);

        $sql = "INSERT INTO product_rating (user_id, product_id, rating, comment) VALUES ($userId, $productId, $rating, '$comment')";
        $conn->query($sql);
    }
    echo "$numRatings product ratings added.\n";
}

// Fonction pour remplir la table `photo`
function generatePhotos($conn, $faker, $numPhotos, $numUsers, $numProducts) {
    for ($i = 0; $i < $numPhotos; $i++) {
        $entityType = rand(0, 1) === 0 ? 'user' : 'product'; // Détermine si la photo est pour un utilisateur ou un produit
        $entityId = $entityType === 'user' ? rand(1, $numUsers) : rand(1, $numProducts);
        $photoUrl = $faker->imageUrl(); // URL de la photo

        $sql = "INSERT INTO photo (entity_type, entity_id, url) VALUES ('$entityType', $entityId, '$photoUrl')";
        if (!$conn->query($sql)) {
            echo "Error inserting photo: " . $conn->error . "\n";
        }
    }
    echo "$numPhotos photos added.\n";
}

// Fonction pour remplir les tables de paiement
function generateCardPayments($conn, $numPayments) {
    global $faker; 
    for ($i = 0; $i < $numPayments; $i++) {
        $cardNumber = $faker->creditCardNumber;
        $expirationDate = date('Y-m-d', strtotime('+1 year'));
        $cardHolder = $faker->name;

        $sql = "INSERT INTO card_payment (card_number, expiration_date, card_holder) VALUES ('$cardNumber', '$expirationDate', '$cardHolder')";
        $conn->query($sql);
    }
    echo "$numPayments card payments added.\n";
}

function generateIbanPayments($conn, $numPayments) {
    global $faker; 
    for ($i = 0; $i < $numPayments; $i++) {
        $iban = $faker->iban;
        $bankName = $faker->company;
        $accountHolder = $faker->name;

        $sql = "INSERT INTO iban_payment (iban, bank_name, account_holder) VALUES ('$iban', '$bankName', '$accountHolder')";
        $conn->query($sql);
    }
    echo "$numPayments IBAN payments added.\n";
}

function generatePayments($conn, $numPayments, $numOrders) {
    for ($i = 0; $i < $numPayments; $i++) {
        $orderId = rand(1, $numOrders);
        $paymentMethod = rand(0, 1) === 0 ? 'card' : 'iban';

        $cardPaymentId = $paymentMethod === 'card' ? rand(1, $numPayments) : "NULL";
        $ibanPaymentId = $paymentMethod === 'iban' ? rand(1, $numPayments) : "NULL";

        $sql = "INSERT INTO payment (user_id, payment_type, card_payment_id, iban_payment_id) VALUES (
            (SELECT user_id FROM `order` WHERE id = $orderId), 
            '$paymentMethod', 
            $cardPaymentId, 
            $ibanPaymentId
        )";

        if (!$conn->query($sql)) {
            echo "Error inserting payment: " . $conn->error . "\n";
        }
    }
    echo "$numPayments payments added for each order.\n";
}

// Exécution des fonctions de peuplement
generateUsers($conn, $faker, $numUsers);
generateUserAddresses($conn, $faker, $numAddresses);
generateProducts($conn, $faker, $numProducts);
generateShoppingCarts($conn, $numCarts);
generateShoppingCartItems($conn, $numCartItems, $numProducts);
generateOrders($conn, $numOrders);
generateInvoices($conn, $numInvoices);
generateProductRatings($conn, $faker, $numRatings, $numProducts, $numUsers);
generatePhotos($conn, $faker, $numPhotos, $numUsers, $numProducts);
generateCardPayments($conn, $numPayments);
generateIbanPayments($conn, $numPayments);
generatePayments($conn, $numPayments, $numOrders);

// Fermeture de la connexion
$conn->close();
?>
