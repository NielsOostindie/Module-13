<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <iframe width="560" height="315" src="https://www.youtube.com/embed/Jdm24wR1yd4?si=kYTJaG5_8MU7MLRg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

    <form action="index.php" method="post">
        <p>e-mail</p>
        <input type="email" name="email">
        <p>naam</p>
        <input type="text" name="name">
        <p>comment</p>
        <input type="text" name="comment">
        <input type="submit">
    </form>

    <?php
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);
    //shows all errors

    require 'vendor/autoload.php';//loads composer pakage

    use Carbon\Carbon;//use composer pakage carbon
    use YoHang88\LetterAvatar\LetterAvatar;//use LetterAvatar to create a profile picture with initials


    if (isset($_POST['email'])) {//look if there was a post
        $email = $_POST['email'];//post email
        $name = $_POST['name'];//post name
        $comment = $_POST['comment'];//post comment


        // Database connection
        $conn = new mysqli('localhost', 'root', '', 'fake_youtube');
        if ($conn->connect_error) {
            echo "$conn->connect_error";
            die("Connection Failed : " . $conn->connect_error);
        } else {
            $stmt = $conn->prepare("insert into comment(email, name, comment, date)
             values(?, ?, ?, NOW())");
            $stmt->bind_param("sss", $email, $name, $comment);
            $execval = $stmt->execute();
            echo $execval;
            $stmt->close();
            $conn->close();
        }
    } else {
    }

    // Database connection
    $conn = new mysqli('localhost', 'root', '', 'fake_youtube');
    if ($conn->connect_error) {
        echo "$conn->connect_error";
        die("Connection Failed : " . $conn->connect_error);
    }

    $sql = "SELECT * FROM `comment`";//sellect all from tabel
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {//loop trough all the stuff from table
        // output data of each row
        while ($row = $result->fetch_assoc()) {
            $avatar = new LetterAvatar($row["name"]);
            echo "id: " . $row["ID"] . "<br>" . " - photo " . "<br>" ?> <img src="<?php echo $avatar ?>" /> <br> <?php echo " - email: " . $row["email"] . "<br>" . " - name: " . $row["name"] . "<br>" . " - comment: " . $row["comment"] . "<br>" . " - time: " .     $post_date = Carbon::createFromDate($row["date"])->diffForHumans() . "<br>" . "<br>";
        }
    } else {
        echo "0 results";
    }
    $conn->close();



    ?>
</body>

</html>