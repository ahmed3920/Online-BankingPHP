<?php  ob_start();  ?>
<?php
include 'db_connect.php';
if(isset($_POST['staff_login-btn'])){
	
if(!empty($_POST['staff_id']) && !empty($_POST['password'])){

$staff_id = $_POST['staff_id'];
$password = $_POST['password'];

    
		$sql="SELECT * FROM bank_staff where staff_id='". $staff_id ."' and Password='" . $password . " ' ";
		$query=mysqli_query($conn,$sql);
		$numrows=mysqli_num_rows($query);
		if($numrows !=0){
			while($row=mysqli_fetch_array($query)){
				$dbstaff_id=$row['staff_id'];
				$dbpassword=$row['Password'];
			}
			if($staff_id==$dbstaff_id && $password==$dbpassword){
			$_SESSION['staff_login'] = true;
			$_SESSION['staff_name'] = $row['staff_name'];
			$_SESSION['staff_id'] = $row['staff_id'];
			date_default_timezone_set('Asia/Kolkata');
			$_SESSION['staff_last_login'] = date("d/m/y h:i:s A");
			header('location:staff_profile.php');
			}
		}
		else{
			
		echo '<script>alert("Incorrect Id/Password.")</script>';
			
		}
	}
			
		else{
		echo '<script>alert("All fields are required!")</script>';
		}
		
}



?>