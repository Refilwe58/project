<?php

function check_login($conn){

   if(isset($_SESSION['studentNo'])){

       $id=$_SESSION['studentNo'];
       $query="select * from usesr where studentNo = '$id' limit 1";

       $result = mysqli_query($conn,$query);
       if($result && mysqli_num_rows($result)>0) //checking if connected & if studentNo is in the database
       {
           $student_data=mysqli_fetch_assoc($result);
           return $student_data;
       }

   }

   header("location: login.php");
   die;
}