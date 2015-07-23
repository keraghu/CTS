  

  <script>
  var response=''+${completedtraininglist}+'';
  
  response = $.parseJSON(response);
  //alert(response);
  $(function() {
	  var flg=true;
	    $.each(response.CompletedList, function(i, item) {
	    	flg=false;
	        var $tr = $('<tr>').append(
	            $('<td>').text(item.TrainingName),
	            $('<td>').text(item.TrainingStartDate),
	            $('<td>').text(item.TrainingEndDate),
	            $('<td>').text(item.TrainingMode)
	        );
	        $tr.appendTo('#trainingtb');
	      //  console.log($tr.wrap('<p>').html());
	    });
	    
	    if(false){
	    	//var $tr = $('<tr>').append($('<td>').text('There is no record to display'),$('<td>').text(''),$('<td>').text(''),$('<td>').text(''));
	    	var $label = $('<label>').text('There is no record to display');
	    	$label.appendTo('#trainingtb');
	    }
	});
  
  $(function() {
	  var flg=true;
	    $.each(response.UpcomingList, function(i, item) {
	    	flg=false;
	        var $tr = $('<tr>').append(
	            $('<td>').text(item.TrainingName),
	            $('<td>').text(item.TrainingStartDate),
	            $('<td>').text(item.TrainingEndDate),
	            $('<td>').text(item.TrainingMode)
	        );
	        $tr.appendTo('#upcomingtb');
	      //  console.log($tr.wrap('<p>').html());
	    });
	    if(false){
	    	var $tr = $('<tr>').append($('<td>').text('There is no record to display'));
	    	$tr.appendTo('#upcomingtb');
	    }
	});
  
  
  $(document).ready(function(){
      $('#header, h4').typewriter({speed:50});
  });
  
 /* var res=''+${certificationlist}+'';
  res = $.parseJSON(res);
  $(function() {
	    $.each(res, function(i, item) {
	        var $tr = $('<tr>').append(
	            $('<td>').text(item.CertificationName),
	            $('<td>').text(item.Score),
	            $('<td>').text(item.CertificationCost),
	            $('<td>').text(item.CompletedDate)
	        );
	        $tr.appendTo('#certificatetb');
	      //  console.log($tr.wrap('<p>').html());
	    });
	});
  */
  </script>
  <div id="completedid">
  <h3><p>Completed Training List</p></h3><br/>
  	<table id="trainingtb" style="width:100%">
  	<tr>
  		<th style="width:40%">Training Name</th>
  	    <th style="width:20%">Start Date</th>
  	    <th style="width:20%">End Date </th>
  	    <th style="width:20%"> Mode </th>
  	</tr>
  	</table>
  </div>
  <br/>
<div id="upcomingid">
<h3><p>Upcoming Training List</p></h3><br/>
  	<table id="upcomingtb" style="width:100%">
  	<tr>
  		<th style="width:40%">Training Name</th>
  	    <th style="width:20%">Start Date</th>
  	    <th style="width:20%">End Date </th>
  	    <th style="width:20%"> Mode </th>
  	</tr>
  	</table>
  </div>
  <br/>
 <!-- 
  <div id="certificateid">
  <p>Certification List</p><br/>
  	<table id="certificatetb" style="width:100%">
  	<tr>
  	 <th>Name</th>
  	 <th>Score</th>
  	 <th>cost</th>
  	 <th>Completed date</th>
  	</tr>
  	</table>
  </div> -->
  

  <div class="wrap">
        <h2 id="header">OpenShift Services used in this page :</h2>
        <h4>
         1. Mysql DB Service<br/>
         2. Redis Cache Service<br/>
         3. Active Directory Service
        </h4>
        
    </div>
  