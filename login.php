<?php 

include 'db2.php';

  @$mail = $_POST['email'];
  @$epassword = $_POST['password'];

  $sql=mysqli_query($con,"SELECT * FROM role_db WHERE email='$mail' AND password='$epassword'");

 
	
  if($sql->num_rows>0){
    		    
	while ($row = mysqli_fetch_assoc($sql)) {
		
		$json['value'] = 1;
		$json['message'] = 'User Successfully LoggedIn';
		$json['email'] = $row['email'];
		$json['id'] = $row['role_id'];
		$json['status'] = 'success';

	}
	
	
}else{

		$json['value'] = 0;
		$json['message'] = 'Failed to LogIn';
		$json['email'] = '';
		$json['id'] = '';
		$json['status'] = 'failure';

}
 		echo json_encode($json);
 		mysqli_close($con);



?>