<%@ include file="welcome-header.jsp" %>
<script>
function display(el,showid) {
	//alert(document.getElementById('a1').style.display);
	//el.style.display = "none";
	//if( document.getElementById('a1').style=='none')
	/*document.getElementById('a1').style.display ='block';
    document.getElementById('a2').style.display = 'block';
    document.getElementById('a3').style.display = 'block';
    document.getElementById('a4').style.display = 'block';
    document.getElementById('a5').style.display = 'block';
    document.getElementById('a6').style.display = 'block';
    document.getElementById('a7').style.display = 'block';
    document.getElementById('a8').style.display = 'block';
	document.getElementById(el).style.display ='none';
	*/
	
	document.getElementById('apprenda-ov').style.display ='none';
    document.getElementById('apprenda-ov1').style.display = 'none';
    document.getElementById('apprenda-ov2').style.display = 'none';
    document.getElementById('apprenda-ov3').style.display = 'none';
    document.getElementById('apprenda-ov4').style.display = 'none';
    document.getElementById('apprenda-ov5').style.display = 'none';
    document.getElementById('apprenda-ov6').style.display = 'none';
    document.getElementById('apprenda-ov7').style.display = 'none';
   
    
    document.getElementById(showid).style.display = 'block';
}
</script>
<div class="divBorderRight" style="height: 100%; width: 630px">
<div  class="divStyle2" style="text-align:center;font-size:x-large">Apprenda - Platform-as-a-Service</div>
 <a id ="a1" href="javascript:display('a1','apprenda-ov')">Overview</a> |
                                <a id ="a2" href="javascript:display('a2','apprenda-ov1')"> Benefits</a> | 
                                <a id ="a3" href="javascript:display('a3','apprenda-ov2')">Case Studies </a> |
                                <a id ="a5" href="javascript:display('a5','apprenda-ov3')"> Features</a> |
                                <a id ="a6" href="javascript:display('a6','apprenda-ov4')"> Hybrid PaaS</a> |
                                <a id ="a7" href="javascript:display('a6','apprenda-ov5')"> Microsoft OneCloud </a> |
                                <a id ="a8" href="javascript:display('a6','apprenda-ov6')"> Platform Services </a> |
                                <a id ="a9" href="javascript:display('a6','apprenda-ov7')"> Why Apprenda </a>
 <div id="apprenda-ov" style="display:block;">
                                
								 <table width="100%">
                                        <tr>
                                            <td with="50%">
                                                <img src="images/apprendaov.png" valign="top" width="90%">
                                            </td>
                                            <td with="50%" valign="top">
                                                 <div>
													<div style="text-align:center;font-size:x-large">Apprenda Overview</div><br />
													<ul style="list-style-type:circle">
														<li>Apprenda is an enterprise PaaS stack for .NET and Java applications that can be layered atop any arbitrary infrastructure composed of Windows and Linux OS instances. </li>
													    <li>Apprenda supports private infrastructure, private cloud & public hybrid Cloud deployment.</li>
													    <li>Support for on demand and Automatic Infrastructure provisioning with Apprenda's Kernel containerization mechanism.</li>
														<li>Support for enabling Application Level Multi-tenancy.</li>
														<li>Application Life Cycle and Release Management tools for quicker application deployment across environments. </li>
														<li>Inbuilt Business Services for Tenant Management and Metering Services.</li>
													</ul>
												</div>
                                            </td>
										</tr>
									</table>
 			</div>
 			
 			 <div id="apprenda-ov1" style="display:none;">
                                <!-- <div class="divStyle2" style="text-align:center;font-size:x-large">Pivotal Cloud Foundry Services</div> -->
								     <table width="100%">
                                        <tr>
                                            <td with="100%">
                                                <img src="images/Apprenda_Benefits.JPG" valign="top" width="90%">
                                            </td>
                                          
										</tr>
									</table>
                               <!-- </div> -->
                            </div>  
 <div id="apprenda-ov2" style="display:none;">
                                <!-- <div class="divStyle2" style="text-align:center;font-size:x-large">Pivotal Cloud Foundry Services</div> -->
								     <table width="100%">
                                        <tr>
                                            <td with="100%">
                                                <img src="images/Apprenda_CaseStudies.JPG" valign="top" width="90%">
                                            </td>
                                          
										</tr>
									</table>
                               <!-- </div> -->
                            </div>  
                                                         <div id="apprenda-ov3" style="display:none;">
                                <!-- <div class="divStyle2" style="text-align:center;font-size:x-large">Pivotal Cloud Foundry Services</div> -->
								     <table width="100%">
                                        <tr>
                                            <td with="100%">
                                                <img src="images/Apprenda_Features.JPG" valign="top" width="90%">
                                            </td>
                                          
										</tr>
									</table>
                               <!-- </div> -->
                            </div>  
                             <div id="apprenda-ov4" style="display:none;">
                                <!-- <div class="divStyle2" style="text-align:center;font-size:x-large">Pivotal Cloud Foundry Services</div> -->
								     <table width="100%">
                                        <tr>
                                            <td with="100%">
                                                <img src="images/Apprenda_HybridPaaS.JPG" valign="top" width="90%">
                                            </td>
                                          
										</tr>
									</table>
                               <!-- </div> -->
                            </div>  
                             <div id="apprenda-ov5" style="display:none;">
                                <!-- <div class="divStyle2" style="text-align:center;font-size:x-large">Pivotal Cloud Foundry Services</div> -->
								     <table width="100%">
                                        <tr>
                                            <td with="100%">
                                                <img src="images/Apprenda_MicrosoftOneCloud.JPG" valign="top" width="90%">
                                            </td>
                                          
										</tr>
									</table>
                               <!-- </div> -->
                            </div>  
                             <div id="apprenda-ov6" style="display:none;">
                                <!-- <div class="divStyle2" style="text-align:center;font-size:x-large">Pivotal Cloud Foundry Services</div> -->
								     <table width="100%">
                                        <tr>
                                            <td with="100%">
                                                <img src="images/Apprenda_PlatformServices.JPG" valign="top" width="90%">
                                            </td>
                                          
										</tr>
									</table>
                               <!-- </div> -->
                            </div>  
                             <div id="apprenda-ov7" style="display:none;">
                                <!-- <div class="divStyle2" style="text-align:center;font-size:x-large">Pivotal Cloud Foundry Services</div> -->
								     <table width="100%">
                                        <tr>
                                            <td with="100%">
                                                <img src="images/WhyApprenda.JPG" valign="top" width="90%">
                                            </td>
                                          
										</tr>
									</table>
                               <!-- </div> -->
                            </div>  
                            </div>
 			
<%-- <%@ include file="welcome-footer.jsp" %> --%>