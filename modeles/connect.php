<?php
if(isset($_POST['login']) && isset($_POST['pass'])){
    $loginf = htmlspecialchars(strip_tags(trim($_POST['login'])));
    $passf = htmlspecialchars(strip_tags(trim($_POST['pass'])));

    $sql = mysqli_query($mysqli,"SELECT u.*,d.* FROM util u INNER JOIN droit d ON d.id = u.droit_id WHERE u.lelogin = '$loginf' AND u.lepass = '$passf'");

    if(mysqli_num_rows($sql)){
        $a =  mysqli_fetch_assoc($sql);
        $_SESSION['key'] = session_id();
        $_SESSION['userid'] = $a['id'];
        $_SESSION['ecriture'] = $a['ecrit'];
        $_SESSION['modif'] = $a['modifie'];
        $_SESSION['modifall'] = $a['modifie_tous'];
        $_SESSION['delete'] = $a['sup'];
        $_SESSION['deleteall'] = $a['sup_tous'];
        header('Location: ./');
    }else{
        $error = "Mauvais login ou mot de passe !";
    }
}
?>
