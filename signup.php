<?php
session_start();
    include("connection.php");
    include("functions.php");
   
    //check if the user have typed something or posted something on the edit box
    if($_SERVER['REQUEST_METHOD']=='POST')// CHECK IF SOMEONE HAS POSTED
    {
       $studentNo= $_POST['studentNo'];
       $name= $_POST['name']; 
       $email= $_POST['email'];
       $password= $_POST['password'];
       if(!empty($studentNo)&& !empty($name) && !empty($email) && !empty($password) && is_numeric($studentNo) )
       {
            //save to db
            $query="insert into usesr (studentNo,name,email,password) values ('$studentNo','$name','$email','$password')";
            mysqli_query($conn,$query);
            header("Location: login.php");
            die;
    
       }
       else{
           echo" Please fill all fields";
       }
    }
?>

 <!DOCTYPE html>
 <html>
 <head>
	<title>SignUp</title>
 </head>
 <body>
	<style type="text/css">
        #text{
            height:25px;
            border: 25px;
            border-radius: 5px;
            padding: 4px;
            border: solid thin #aaa;
            width: 100%;
        }
        #button{
            padding: 10px;
            width: 100px;
            color: white;
            background-color: lightblue;
            border: none;
        }
        #box{
            background-color: grey;
            margin: auto;
            width: 300px;
            padding: 20px;
        }
    </style>

    <div id="box">
        <form method="post">
            <div style="font-size:20px; margin:10px; color:white ">SignUp</div>
            <input placeholder="student Number" id="text" type="tel" name="studentNo"><br><br>
            <input placeholder="Name" id="text" type="text" name="name"><br><br>
            <input placeholder="Email" id="text" type="email" name="email"><br><br>
            <input placeholder="Password" id="text"  type="password "name="password"><br><br>
            <input id="button"  type="submit" value="Signup"><br><br>
            <a href="login.php">Login</a><br><br>
        </form>
    </div>
 </body>
 </html>