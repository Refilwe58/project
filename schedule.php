<?php
    session_start();// to access it 


    include("connection.php");
    include("functions.php");
    // import
    if(isset($_POST['importbtn'])){
        $csvMimes=array('text/x-comma-separated-values', 'text/comma-separated-values','application/octet-stream',
        'text/csv','application/csv','application/excel','application/vnd.msexcel','text/plain');
        if(!empty($_POST['departDate']))
        {
            if(!empty($_FILES['file']['name'])&& in_array($_FILES['file']['type'],$csvMimes)) {
                if(is_uploaded_file($_FILES['file']['tmp_name'])){
                    $csvfile=fopen($_FILES['file']['tmp_name'],'r');
                        
                    while(($line=fgetcsv($csvfile))!== FALSE)
                        {
                            $busNo=$line[0];
                            $time=$line[1];
                            $trip=$line[2];

                        
                        $prevquery="select id from schedule where time ='$line[1]' and trip ='$line[2]'";
                            /*$prevquery="select * from schedule";*/
                            $prevResult=mysqli_query($conn,$prevquery);
                            if($prevResult->num_rows==0 ){  
                                
                                $date=$_POST['depart'];
                                /*$date=$_POST['depart'];*/
                                $query="insert into schedule (busNo,time,trip,date) values('$busNo','$time','$trip','$date')";
                                mysqli_query($conn,$query);
                            }  
                        
                         }    

                    fclose($csvfile);
                    $qstring='?status=scc';

                }else{
                    $qstring='?status=err';
                }

            }else{
                 $qstring='?status=invalid_file';
            }
                    // header("Location .php");
            
        }
        else{
            echo" select date"; 
        }
    }



        //variable
    if(!empty($_GET['status'])){
        switch($_GET['status']){
            case 'succ':
                $statusType='alert-success';
                $statusMsg='Member data has been imported sucessfully';
                break;
            case 'err':
                $statusType='alert-alert danger';
                $statusMsg='problem occured, please try again';
                break;
            case'invalid_file':
            $statusType='alert-alert danger';
            $statusMsg='please upload a valid csv';
            break;
        }
    }

?>

 <!DOCTYPE html>
 <html>
    <head>    
        <link rel="stylesheet" href="css/adminDashboardStyles.css">
	    <title>Schedule</title>
    </head>
    <body>
            <div class="navbar">
                    
                    </div class="menu">
                        <ul>
                            <li><a href="adminDashboard.php">HOME</a></li>
                            <li><a href="#">PROFILE</a></li>
                            <li><a href="adminLogout.php">LOGOUT</a></li>
                            <li><a href="#">BOOKINGS</a></li>
                            <li><a href="schedule.php">Schedule</a></li>

                            
                        </ul>

                    </div>
            </div>

            <div class="main">
               

                <div class="heading1">
                
                    <h1>SCHEDULE</h1>
                </div>	
                
                <div class="filters">

			    <label for="datelabel">Departure date:</label>

                <div class="import" id="importform" >
                    <form  method="post" enctype="multipart/form-data">
                        <input id="date" type="date" name="depart" />
                        <input type="file" name="file" accept=".csv"/>
                        <input type="submit" class="importbtn" value="IMPORT">
                    </form>
                </div>
		    </div>
        <div class="schedule">
          
            <table width="70%" cellpadding="5" cellspace="5">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>BUSNO</th>
                        <th>TIME</th>
                        <th>TRIP</th>
                        <th>DATE</th>
                    </tr>
                
                </thead>
                   
                <tbody>
               
                    <?php

                        $query="select * from schedule order by date asc,time   ";
                        $result= mysqli_query($conn,$query);
                        if($result->num_rows>0){
                            while($row=$result->fetch_assoc())
                            {
                                ?>
                                    <tr>
                                        <td><?php echo $row['id'];?> </td>
                                        <td><?php echo $row['busNo'];?> </td>
                                        <td><?php echo $row['time'];?> </td>
                                        <td><?php echo $row['trip'];?> </td>
                                        <td><?php echo $row['date'];?> </td>
                                    </tr>
                                <?php

                            }
                        }
                        else{
                            ?>
                            <tr><td colspan="5">No Schedule found... </td></tr>
                            <?php
                        }
                    ?>
                    
                </tbody>
            </table>
            
        </div>
		
	    
     </body>
 </html>