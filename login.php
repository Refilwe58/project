<?php
session_start();
include("connection.php");
include("functions.php");


//check if the user have typed something or posted something on the edit box
if($_SERVER['REQUEST_METHOD']=='POST')// CHECK IF SOMEONE HAS POSTED
{
  
   $email= $_POST['email'];
   $password= $_POST['password'];
   if(!empty($email) && !empty($password) )
   {
        //read from db
        $query="select * from usesr where email='$email' limit 1";
        $result= mysqli_query($conn,$query);
        if($result){
            if($result && mysqli_num_rows($result)>0)
            {
                $student_data=mysqli_fetch_assoc($result);
              if($student_data['password']=== $password){
                
                $_SESSION['studentNo']=$student_data['studentNo'];
                 header("Location: dashboard.php");
                die;
              }
            }
        }
        echo" Wrong user name or password";   
      
   }
   else{
       echo" Please fill all fields";
   }
}
?>



 <!DOCTYPE html>
 <html>
 <head>
	<title>Login</title>
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
            <div style="font-size:20px; margin:10px; color:white ">Login</div>

            <input placeholder="Email" id="text" type="email" name="email"><br><br>
            <input placeholder="Passsword" id="text"  type="password" name="password"><br><br>
            <input id="button"  type="submit" value="Login"><br><br>
            <a href="signup.php">SignUp</a><br><br>
            <a href="adminlogin.php">Admin</a><br><br>
        </form>
    </div>
 </body>
 </html>