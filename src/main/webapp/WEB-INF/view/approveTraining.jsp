<%
String ctx=application.getContextPath();
String uri=ctx+"/login";
%>
<script>
var response=''+${pendingtraininglist}+'';
var contex='<%=ctx%>';
response = $.parseJSON(response);
function approveTraining(reqid){
	 
	 $.ajax({
		  type:    "POST",
		  url:     contex+"/approveTrainingRequest",
		  data:    { reqId: ""+reqid,reqStatus:"Approved" },
		//  dataType: 'json',
		  success: function(data) {
		      //  alert('call back');
		        $('#apptd-'+reqid).text('');
           	// $('#apptd-'+reqid).text('Approved');
           	$('#apptd-'+reqid).html('<label style="color:green"><b>Approved</b></label>');
           	$('#rejtd-'+reqid).text('');
		  },
		  error:   function(jqXHR, textStatus, errorThrown) {
		        alert(jqXHR.responseText+" status = " + textStatus + ", " +
		              "error thrown: " + errorThrown
		        );
		  }
		});
}

function rejectTraining(reqid){
	 $.post( 
			 contex+"/approveTrainingRequest",
            { reqId: ""+reqid,reqStatus:"Rejected" },
            function(data) {
            	   //alert('call back');
   		        $('#rejtd-'+reqid).text('');
              	// $('#rejtd-'+reqid).text('Approved');
            	$('#rejtd-'+reqid).html('<label style="color:red"><b>Rejected</b></label>');
            	$('#apptd-'+reqid).text('');
            }
         );
}

/*function updatePendingList(resp){
	resp1 = $.parseJSON(resp);
	 $.each(resp1, function(i, item) {
	        var $tr = $('<tr>'+item.ReqId).append(
	        		$('<td>').text(item.ReqId),
	        		$('<td>').text(item.AssociateName),
	        		$('<td>').text(item.TrainingName),
	        		$('<td>').text(item.TrainingDesc),
	        		$('<td>').text(item.TrainingDate),
	        		$('<td >').html("<div id=\"aprtd-"+item.ReqId+"\"><input id=\"approvebtn\" type=\"submit\" value=\"Approve\" onclick=\"approveTraining("+item.ReqId+");\"></div>"),
	        		$('<td id="rejtd-'+item.ReqId+'" >').append('<input id="rejectbtn" type="submit" value="Reject"  onclick="rejectTraining('+item.ReqId+');">')
	        );
	        $tr.appendTo('#approvetableid');
	      //  console.log($tr.wrap('<p>').html());
	    });
}*/
//alert(response);
$(function() {
	    $.each(response, function(i, item) {
	        var $tr = $('<tr>').append(
	        		$('<td>').text(item.ReqId),
	        		$('<td>').text(item.AssociateName),
	        		$('<td>').text(item.TrainingName),
	        		$('<td>').text(item.TrainingDesc),
	        		$('<td>').text(item.TrainingDate),
	        		$('<td id="apptd-'+item.ReqId+'" >').append('<input id="approvebtn" type="submit" value="Approve" onclick="approveTraining('+item.ReqId+');">'),
	        		$('<td id="rejtd-'+item.ReqId+'" >').append('<input id="rejectbtn" type="submit" value="Reject"  onclick="rejectTraining('+item.ReqId+');">')
	        );
	        $tr.appendTo('#approvetableid');
	        
	      //  console.log($tr.wrap('<p>').html());
	    });
	//updatePendingList(response);
	});
$(document).ready(function(){
    $('#header, h4').typewriter({speed:50});
});


</script>
<div id='approvetrgid'>
<table id='approvetableid'>
<tr>
<th>Req ID</th>
<th>Associate Name</th>
<th>Training Name </th>
<th>Training Description </th>
<th>Training Date </th>
<th>Click below to Approve</th>
<th>Click below to Reject</th>
</tr>
</table>
</div>

  <div class="wrap">
        <h3 id="header">OpenShift Services used in this page :</h3>
        <h4>
         1. Mysql DB Service<br/>
         2. Redis Cache Service<br/>
         3. Sendgrid Mail Service<br/>
        </h4>
        
    </div>
