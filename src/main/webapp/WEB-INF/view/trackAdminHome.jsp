<script>
var trgcnt=''+${PendingTrainingRequestCount}+'';
var usrst=''+${UserStatistics}+'';
var trgcost=''+${TrainingCost}+'';
var cmptrg=''+${CompletedTraining}+'';
var asscost=''+${AssociateCost}+'';

var trgresponse = $.parseJSON(trgcnt);
$( document ).ready(function() {
	$('#trainingcnt').text(trgresponse.PendingRequestCount);
});
var usrstres = $.parseJSON(usrst);
var trgcostres = $.parseJSON(trgcost);
var cmptrgres = $.parseJSON(cmptrg);
var asscostres = $.parseJSON(asscost);
$(function() {
	    $.each(usrstres.result, function(i, item) {
	    	flg=false;
	        var $tr = $('<tr>').append(
	            $('<td>').text(item._id),
	            $('<td>').text(item.total)
	        );
	        $tr.appendTo('#userstattb');
	    });
	    
	    $.each(trgcostres.result, function(i, item) {
	    	flg=false;
	        var $tr = $('<tr>').append(
	            $('<td>').text(item._id.trainingname),
	            $('<td>').text(item.total)
	        );
	        $tr.appendTo('#userstattb2');
	    });
	    
	    $.each(cmptrgres.result, function(i, item) {
	    	flg=false;
	        var $tr = $('<tr>').append(
	            $('<td>').text(item._id.trainingname),
	            $('<td>').text(item.total)
	        );
	        $tr.appendTo('#userstattb3');
	    });
	    
	    $.each(asscostres.result, function(i, item) {
	    	flg=false;
	        var $tr = $('<tr>').append(
	            $('<td>').text(item._id.associatename),
	            $('<td>').text(item.total)
	        );
	        $tr.appendTo('#userstattb1');
	    });
	    
	});

$(document).ready(function(){
    $('#header, h4').typewriter({speed:50});
});
/*var certresponse = $.parseJSON(trgcnt);
$( document ).ready(function() {
	$('#certcnt').text(certresponse.PendingRequestCount);
});
*/
</script>

<div id="trainingmsg" >
<h3>Training-Pending for your Approval : <label id="trainingcnt"></label></h3><br/><a href='pendingTrainingList.html'>Click Here to Approve</a>
</div>
<br/>
<div id="loginanalytics"><b>Login Statistics</b>
<table id="userstattb" style="  width: 519px;">
<tr>
<th> UserName </th>
<th> Number of Times Logged in</th>
</tr>

</table>
</div>

<div id="useranalytics1"><b>Training Cost by Associate </b>
<table id="userstattb1" style="  width: 424px;">
<tr>
<th> Associate Name  </th>
<th> Cost in $</th>
</tr>

</table>
</div>

<div id="useranalytics2"><b>Cost by Training</b>
<table id="userstattb2" style="  width: 519px;">
<tr>
<th> Training Name </th>
<th> Training Cost in $</th>
</tr>

</table>
</div>

<div id="useranalytics3"><b>Training Completion Statistics</b>
<table id="userstattb3">
<tr>
<th>Training Name </th>
<th> Number of  Associates Completed</th>
</tr>

</table>
</div>

 <div class="wrap">
        <h2 id="header">OpenShift Services used in this page :</h2>
        <h4>
         1. Mysql DB Service<br/>
         2. Mongo DB Service <br/>
         3. Active Directory Service
        </h4>
        
    </div>