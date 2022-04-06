<!DOCTYPE html>
<html>
<script>

	function checkAll(){
		var v1 = checkName();
		var v2 = checkAge();
		return v1&&v2;
	}
	
	function checkName(){
		var v = document.getElementById("t1").value;
		if(v.length==0){
			alert("Name can't be blank. Please enter name.");
			return false;
		}
		else{
			return true;
		}
	}
	
	function checkAge(){
		var v = document.getElementById("t2").value;
		if(isNaN(v) == true){
			alert("Age must be a number only");
			return false;
		}
		else{
			return true;
		}
	}
</script>
<body>
<h1>Validate User on Client Side</h1>
<form action="SaveUser" onsubmit = "return checkAll()">
<pre>
	Name <input type="text" name="t1" id="t1"/>
	Age	 <input type="text" name="t2" id="t2"/>
		<input type="submit" value="Register"/>
</pre>
</form>
</body>
</html>