<script>


$( document ).ready(function() {
	var role=${UserRole};
	//var response = $.parseJSON(role);
	if(role=='Associate'){
		$('#tmenu').hide();
	}else if(role=='TrackAdmin'){
		$('#amenu').hide();
	}
});
</script>

<div id='amenu'>
<a href="home.html">Home</a><br/>
<a href="request_train.html">Request for Training</a><br/>

<a href="managetraining.html">Manage Training</a><br/>

</div>



<div id='tmenu'>
<a href="home.html">Home</a><br/>
<a href="pendingTrainingList.html"> Training - Pending for Approval</a><br/>

</div>
