<?php ob_start() ?>

<html>
<head>
    <title>Registration Form</title>
    <link rel="stylesheet" type="text/css" href="css/customer_reg_form.css"/>
    
	<?php include'header.php';  ?>
    </head>
    <body>
    <div class="container_regfrm_container_parent">
	<h3>Online Account Opening Form</h3>
	<div class="container_regfrm_container_parent_child">
		<form method="post">
				 <input type="text" name="name" placeholder="Name" required />
				 <select name ="gender" required >
					  <option class="default" value="" disabled selected>Gender</option>
					  <option value="Male" required >Male</option>
					  <option value="Female">Female</option>
					  <option value="Others">Others</option>
				</select>
				 <input type="text" name="mobile" placeholder="Mobile no" required />
				 <input type="text" name="email" placeholder="Email " />
				 <input type="text" name="landline" placeholder="Landline no" />
				 <input type="text" name="dob" placeholder="Date of Birth" onfocus="(this.type='date')" required />
				 
				 <input type="text" name="citizenship" placeholder="ID Number" required />
				 <input class="address" type="text" name="homeaddrs" placeholder="Home Address" required  />
				 <input class="address" type="text" name="officeaddrs" placeholder="Office Address" />
				



				 <select name ="state" required >
					  <option class="default" value="" disabled selected>State</option>
					  
					  <option value="Egypt">Egypt</option>
					  <option value="China">China</option>
					  <option value="Florida">Florida</option>
					  <option value="Washington">Washington</option>
					  <option value="India">India</option>
					
					  <option value="USA">USA</option>
				</select>



				 <select name ="city" required >
					  <option class="default" value="" disabled selected>City</option>
					  <option value="Los Angeles">cairo </option>
					  <option value="San Diego">San Diego</option>
					  <option value="Fresno">Fresno</option>
					  <option value="Houston">Houston</option>
					  <option value="Austin">Austin</option>
					  <option value="Dallas">Dallas</option>
					  <option value="Texas City">Texas City</option>
					  <option value="Miami">Miami</option>
					  <option value="Orlando">Orlando</option>
					  
					  
				</select>



				 
				 <input type="text" name="Postal" placeholder="Postal Code" required />
				 <input type="text" name="arealoc" placeholder="Area/Locality" required />
				 <input type="text" name="pin" placeholder="PIN "  />
				 
				 <select name ="acctype" required >
					  <option class="default" value="" disabled selected>Account Type</option>
					  <option value="Saving">Saving</option>
					  <option value="Current">Current</option>
					  <option value="Current">Gold</option>
				</select>
				<input type="submit" name="submit" value="Submit">
				</form>
         </div>
		 </div>
		 
<?php include'footer.php';?>
    
</body>
</html>


<?php 

if(isset($_POST['submit'])){

	session_start();
	$_SESSION['$cust_acopening'] = TRUE;
	$_SESSION['cust_name']=$_POST['name'];
	$_SESSION['cust_gender']=$_POST['gender'];
	$_SESSION['cust_mobile']=$_POST['mobile'];
	$_SESSION['cust_email']=$_POST['email'];
	$_SESSION['cust_landline']=$_POST['landline'];
	$_SESSION['cust_dob']=$_POST['dob'];
	$_SESSION['ID_number']=$_POST['ID_Number'];
	$_SESSION['cust_homeaddrs']=$_POST['homeaddrs'];
	$_SESSION['cust_officeaddrs']=$_POST['officeaddrs'];
	$_SESSION['cust_country']=$_POST['country'];
	$_SESSION['cust_state']=$_POST['state'];
	$_SESSION['cust_city']=$_POST['city'];
	$_SESSION['postal_code']=$_POST['Postalcode '];
	$_SESSION['arealoc']=$_POST['arealoc'];
	$_SESSION['PIN']=$_POST['PIN'];
	$_SESSION['cust_acctype']=$_POST['acctype'];
	
	header('location:cust_regfrm_confirm.php');
	
	
}

?>