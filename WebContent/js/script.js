/**
 * 
 */
function validate()
{
	var x=/^[0-9]+$/;
	var y=document.getElementById("toddlerid").value;
	if(x.test(y)==false)
		alert("only Numbers are allowed in toddlerId");
	y=document.getElementById("toddlerAge").value;
	if(y!=null)
		{
		if(y.length()>1)
			{
			alert("Toddler Age should be of 1 digit");
			}
		}
	
}