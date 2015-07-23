<h1 align="center"> Training Confirmation.......</h1>
<script>
var strtest;
var response=''+${submitTrainingResponse}+'';
response = $.parseJSON(response);

$( document ).ready(function() {
	$('#trainingReqid').text(response.userTrainReq.ReqId);
	$('#trainingName').text(response.userTrainReq.TrainingName);
	$('#trainingStatus').text(response.userTrainReq.ReqStatus);
});
</script>


Training Request-Id :<label id="trainingReqid" ></label><br/><br/>
Training Name :<label id="trainingName" ></label><br/><br/>
Training Status :<label id="trainingStatus" ></label><br/><br/>