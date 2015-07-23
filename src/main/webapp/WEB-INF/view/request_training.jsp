<h3 > Request for Training</h3>
<%
String ctx=application.getContextPath();
String uri=ctx+"/submitTraining";
%>
<form action='<%=uri %>'  method="post">
<script>
var strtest;
var response=''+${requestTrainingResponse}+'';
response = $.parseJSON(response);
strtest=response.Approver.UserName;
//alert($('#approver').text('asdsd'));



$(function() {
    $.each(response.courseNameList, function(i, item) {
    	$('#trainingName').append('<option value="' + item.TrainingName + '">' + item.TrainingName + '</option>');
        
      //  console.log($tr.wrap('<p>').html());
    });
});
$(document.body).on('change','#trainingName',function(){
    //alert('Change Happened');
    var end = this.value;
    $('#drupallink').show();
	//$('#drupallink').style.display='block';
    $.each(response.courseNameList, function(i, item) {
    	if(item.TrainingName==end){
    		$('#trainingDuration').text(item.Duration);
    	}
    	
    	if(item.TrainingName==end){
    		$('#trainingStartDate').text(item.TrainingStartDate);
    	}
    	
    	if(item.TrainingName==end){
    		$('#trainingEndDate').text(item.TrainingEndDate);
    	}
    	
    	if(item.TrainingName==end){
    		$('#trainingMode').text(item.TrainingMode);
    	}
    	
    	if(item.TrainingName==end){
    		$('#prerequesties').text(item.Prerequesties);
    	}
    	
    	if(item.TrainingName==end){
    		$('#certicationTitle').text(item.Certification);
    	}
    	
    });
});
$( document ).ready(function() {
	$('#approver').text(strtest);
	 $('#header, h4').typewriter({speed:50});
	 $('#drupallink').hide();
});



</script>
<div id="reqtrainingid">
<TABLE   style="width:60%">
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
       <b>Training Duration:</b>
      </TD> 
      <TD>
   			<label id="trainingDuration"></label>
	   </TD> 
 </TR>
 <TR>
 	<TD>
       <b>Training Start Date:</b>
      </TD> 
      <TD>
   			<label id="trainingStartDate"></label>
	   </TD> 
 </TR>
  <TR>
 	<TD>
       <b>Training End Date :</b>
      </TD> 
      <TD>
   			<label id="trainingEndDate"></label>
	   </TD> 
 </TR>
 <TR>
 	<TD>
       <b>Training Mode:</b>
      </TD> 
      <TD>
   			<label id="trainingMode"></label>
	   </TD> 
 </TR>
  <TR>
 	<TD>
       <b>Pre-Requisites :</b>
      </TD> 
      <TD>
   			<label id="prerequesties"></label>
	   </TD> 
 </TR>
 <TR>
 	<TD>
       <b>Associated Certification:</b>
      </TD> 
      <TD>
   			<label id="certicationTitle"></label>
	   </TD> 
 </TR>
 
</TABLE>
</div>	
<!-- 
Training Course Status :<input type="radio" name="status" value="Not Completed" checked>Not Completed
<input type="radio" name="status" value="Completed" >Completed<br/>  -->
<br/><input type="submit" value="Submit"/>
<br/><br/>
<div id="drupallink" >
Add Article: <a target="_blank" href="http://mydrupal-jlight.rhcloud.com/node/add/article">Click here </a><br/>
Libraries : <a target="_blank" href="http://mydrupal-jlight.rhcloud.com/node/3#overlay-context=">Click here </a>
</div>
</form>

  <div class="wrap">
        <h3 id="header">OpenShift Services used in this page :</h3>
        <h4>
         1. Mysql DB Service<br/>
         2. Redis Cache Service<br/>
         3. RabbitMQ Messaging Service <br/>
         4. Drupal Service
        </h4>
        
    </div>