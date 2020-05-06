<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method ="post" action="submit">

<table cellpadding="2"  bgcolor="99FFFF" >

<tr>
<td colspan=2>
<center><font size=4><b>Sample Registration Form</b></font></center>
</td>
</tr>

<tr>
<td> Sample ID</td>
<td><input type=text name="id" id="textname" size="30"></td>
</tr>

<tr>
<td>Name</td>
<td><input type=text name="name" id="textname" size="30"></td>
</tr>

<tr>
<td>Father Name</td>
<td><input type="text" name="fathername" id="fathername"
size="30"></td>
</tr>

<tr>
<td> Address</td>
<td><input type="text" name="address" id="address" size="30"></td>
</tr>



<tr>
<td>Sex</td>
<td><input type="radio" name="sex" value="male" size="10">Male
<input type="radio" name="sex" value="Female" size="10">Female</td>
</tr>


<tr>
<td>Age</td>
<td><input type="text" name="age" id="age" size="30">
</td>
</tr>


<tr>
<td>PinCode</td>
<td><input type="text" name="pincode" id="pincode" size="30">
</td>
</tr>

<tr>
<td>EmailId</td>
<td><input type="text" name="emailid" id="emailid" size="30"></td>
</tr>

<tr>
<td>DOB</td>
<td><input type="text" name="dob" id="dob" size="30"></td>
</tr>

<tr>
<td>MobileNo</td>
<td><input type="text" name="mobileno" id="mobileno" size="30"></td>
</tr>

<td>Symptoms</td>
<td><textarea name="symptoms" id="symptoms"></textarea></td>
</tr>

<tr>
<td>Corona Suspect</td>
<td><input type="radio" name="corona" value="Yes" size="10">Yes
<input type="radio" name="corona" value="No" size="10">No</td>
</tr>


<tr>
<td><input type="reset"></td>
<td colspan="2"><input type="submit" value="Submit Form" /></td>


</tr>

</table>
</form>

<form method ="post" action="up">
<td ><input type="submit" value="Update" /></td>
</form>



</body>
</html>