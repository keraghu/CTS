<h1 align="center"> Manage Certifications.......</h1>
<form action="/CTS//updatecertifications" method="post">
<script>
var strtest;
var response=''+${manageCertifcationResponse}+'';
response = $.parseJSON(response);
strtest=response.Approver.UserName;
//alert($('#approver').text('asdsd'));

$(function() {
    $.each(response.certList, function(i, item) {
    	$('#"certificationName"').append('<option value="' + item.CertificationName + '">' + item.CertificationName + '</option>');
        
      //  console.log($tr.wrap('<p>').html());
    });
});
$(document.body).on('change','#certificationName',function(){
    // alert('Change Happened');
    var end = this.value;
   
    $.each(response.courseNameList, function(i, item) {
    	if(item.CertificationName==end){
    		$('#certificationCost').text(item.CertificationCost);
    	}
    	
    	if(item.CertificationName==end){
    		$('#reimbursement').text(item.Reimbursement);
    	}
    	
      });
});
$( document ).ready(function() {
	$('#approver').text(strtest);
});

</script>
<b>Certification Name :</b><select id="certificationName" name="certificationName">
                      <option value=''></option>
					</select>
<br/><br/>

<b>Certification Approver:</b> <label id="approver"></label><br/><br/> 

Completed On :<input type="text" name="completedDate"> <br/>
Score/Grade: <input type="text" name="score"><br/>
Certification Cost :<label id="certificationCost" ></label><br/>
Re-imbursement Required  :<input type="radio" name="isReimbursed" value="Yes" checked>Yes
<input type="radio" name="isReimbursed" value="No" >No<br/> 
<input type="submit" value="Submit"/>
</form>