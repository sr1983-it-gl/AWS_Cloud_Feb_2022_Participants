<html>
<body>
<script type="text/javascript">
function first(){
var nam=document.sample.n.value;
var passlength=document.sample.p.value.length;
var s=false;
if(nam==""){
document.getElementById("name").innerHTML=
" <img src='Downloads//s.jpeg'/> Please enter the name";
s=false;
}else{
document.getElementById("name").innerHTML=" <img src='Downloads//s.jpeg'/>";
s=true;
}
if(passlength<=6){
document.getElementById("password").innerHTML=
" <img src='Downloads//s.jpeg'/> Please Enter Password must be greater than 6";
s=false;
}else{
document.getElementById("password").innerHTML=" <img src='Downloads//s.jpeg'/>";
}
return s;
}
</script>
<form name="sample" action="custom.jsp" onsubmit="return first()">
<table>
<tr><td>User:</td><td><input type="text" name="n"/>
<span id="name" style="color:red"></span></td></tr>
<tr><td>Password:</td><td><input type="password" name="p"/>
<span id="password" style="color:red"></span></td></tr>
<tr><td colspan="3"><input type="submit" value="reg"/></td></tr>
</table>
</form>
</body>
</html>