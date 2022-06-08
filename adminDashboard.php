<?php
session_start();// to access it 


include("connection.php");
include("functions.php");
/*$sql="select * from schedule ";
 if(isset($_POST['sub'])){
       if(!empty($_POST['tripselection'])  && !empty($_POST['departDate'])){

            $trip=mysqli_real_escape_string($conn,$_POST['tripselection']);
            $date=mysqli_real_escape_string($conn,$_POST['departDate']);
            
        
            $sql .="where trip ='{$trip}'and date ='{$date}'";
        }
     }
 
 $query=mysqli_query($conn,$sql) or die(mysqli_error($conn))*/

    


?>

 <!DOCTYPE html>
 <html>
 <head>
 <link rel="stylesheet" href="css/adminDashboardStyles.css">
 <link rel="stylesheet" href="css/tablestyling.css">
	<title>Dashboard</title>
 </head>
 <body>
 <div class="navbar">
			
			</div class="menu">
				<ul>
					<li><a href="adminDashboard.php">HOME</a></li>
					<li><a href="#">PROFILE</a></li>
					<li><a href="adminLogout.php">LOGOUT</a></li>
					<li><a href="#">BOOKINGS</a></li>
                    <li><a href="schedule.php">SCHEDULE</a></li>

					
				</ul>

			</div>
	</div>

	<div class="main">

		<div class="heading1">
		
			<h1>Dashboard</h1>
		</div>	
		<div class="line">

		</div>
		<div class="filters">
            <form  method="post" enctype="multipart/form-data">
                <label for="datelabel">Departure date:</label>
                <input id="date" type="date" name="depart" />
                

                <label for="datelabel">Campus Schedule:</label>
                <select id="trip" name="tripselection">
                    <option value="">Select Trip</option>
                    <option value="Sosh-Main">Sosh-Main</option>
                    <option value="Sosh-Garankuwa">Sosh-Garankuwa</option>
                    <option value="Sosh-Arcadia">Sosh-Arcadia</option>
                    <option value="Main-Sosha">Main-Sosha</option>
                    <option value="Main-Arcadia">Main-Arcadia</option>
                    <option value="Main-Garankuwa">Main-Garankuwa</option>
                    <option value="Garankuwa-Sosh">Garankuwa-Sosh</option>
                    <option value="Garankuwa-Arcadia">Garankuwa-Arcadia</option>
                    <option value="Garankuwa-Main">Garankuwa-Main</option>
                </select>
                <input type="submit" name="searchbtn" value="SEARCH">
            </form>
				
			 
		</div>
        <div class="schedule">
            <table width="70%" cellpadding="5" cellspace="5">
                <thead>
                    <tr>
                        <td>ID</td>
                        <td>BusNo</td>
                        <td>Time</td>
                        <td>Trip</td>
                        <td>Date</td>
                    </tr>
                </thead>

                <tbody>
                <?php   
                        if(isset($_POST['searchbtn'])){
                           
                            if(!empty($_POST['tripselection'])&& !empty($_POST['depart'])){
                                    $trip=mysqli_real_escape_string($conn,$_POST['tripselection']);
                                   
                                    
                                    $date=mysqli_real_escape_string($conn,$_POST['depart']);
                                    $query="select * from schedule where trip='{$trip}' and date='{$date}' order by time  asc";
                                    $result= mysqli_query($conn,$query);
                                    if($result->num_rows>0){
                                        while($row=mysqli_fetch_array($result))
                                        { 
                                            $id=$row['id'];
                                            $busNo= $row['busNo'];
                                            $time= $row['time'];
                                            $trip=$row['trip'];
                                            $date=$row['date'];
                                            ?>
                                                <tr>
                                                    <td><?php echo $id?> </td>
                                                    <td><?php echo $busNo?> </td>
                                                    <td><?php echo $time?> </td>
                                                    <td><?php echo $trip?> </td>
                                                    <td><?php echo $date ?></td>
                                                </tr>
                                            <?php
                                          

                                        }
                                       
                                    }
                                    
                                    else{
                                        ?>
                                        <tr><td colspan="5">No Schedule found... </td></tr>
                                        <?php
                                    }
                                
                            }
                        }
                    ?>

                </tbody>
               
            </table> 
            
        </div>
		
	</div>
 </body>
 </html>