<h4>Manage Trainings</h4><br/>
<%
String ctx=application.getContextPath();
String uri=ctx+"/updatetraining";
%>
<form action='<%=uri %>' method="post">
<script>
var strtest;
var response=''+${ManageTrainingResponse}+'';
response = $.parseJSON(response);
strtest=response.Approver.UserName;
//alert($('#approver').text('asdsd'));



$(function() {
    $.each(response.AprrovedIncompleteList, function(i, item) {
    	$('#trainingName').append('<option value="' + item.TrainingName + '">' + item.TrainingName + '</option>');
        
      //  console.log($tr.wrap('<p>').html());
    });
});
$(document.body).on('change','#trainingName',function(){
   // alert('Change Happened');
    var end = this.value;
   
    $.each(response.AprrovedIncompleteList, function(i, item) {
    	if(item.TrainingName==end){
    		$('#approverdate').text(item.ApprovedDate);
    	}
    });
});
$( document ).ready(function() {
	$('#approver').text(strtest);
	 $('#header, h4').typewriter({speed:50});
});

</script>
<div id="magtrainingid">
<table style="width:60%">
 <TR>
 	<TD style="width:40%">
       <b>Select the Training Course Name :</b>
      </TD> 
      <TD style="width:60%">
       <select id="trainingName" name="trainingName">
                      <option value=''>Select</option>
					</select>
	   </TD> 
</TR>
<TR>
 	<TD>
       <b>Training Request Approver:</b>
      </TD> 
      <TD>
   			<label id="approver"></label>
	   </TD> 
 </TR>
  <TR>
 	<TD>
       <b>Training Approved Date :</b>
      </TD> 
      <TD>
   			<label id="approverdate"></label>
	   </TD> 
 </TR>
 <TR>
 	<TD>
       <b>Training Course Status :</b>
      </TD> 
      <TD>
   			<input type="radio" name="status" value="Not Completed" checked>Not Completed
<input type="radio" name="status" value="Completed" >Completed
	   </TD> 
 </TR>
</table>
</div>
<br/>
<input type="submit" value="Submit"/>
</form>
<br/>
<div class="wrap">
        <h2 id="header">OpenShift Services used in this page:</h2>
        <h4>
         1. Mysql DB Service<br/>
         2. Redis Cache Service<br/>
        </h4>
        
    </div>