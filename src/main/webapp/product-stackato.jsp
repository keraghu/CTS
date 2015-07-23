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
	document.getElementById(el).style.display ='none';*/
	
	
	document.getElementById('stackato-ov').style.display ='none';
    document.getElementById('stackato-ov1').style.display = 'none';
    document.getElementById('stackato-ov2').style.display = 'none';
    document.getElementById('stackato-ov3').style.display = 'none';
   
    
    document.getElementById(showid).style.display = 'block';
}
</script>
<div class="divBorderRight" style="height: 100%; width: 630px">
<div  class="divStyle2" style="text-align:center;font-size:x-large">Stackato - Platform-as-a-Service</div>
<a id ="a1" href="javascript:display('a1','stackato-ov')">Overview</a> |
                                <a id ="a2" href="javascript:display('a2','stackato-ov1')"> Strengths</a> | 
                                <a id ="a3" href="javascript:display('a3','stackato-ov2')">Features</a> |
                                <a id ="a5" href="javascript:display('a5','stackato-ov3')"> Product Elements</a>      
                                
				  <div id="stackato-ov" style="display:block;">
                                
								 <table width="100%">
                                        <tr>
                                            <td with="50%">
                                                <img src="images/stackatoov.png" valign="top" width="90%">
                                            </td>
                                            <td with="50%" valign="top">
                                                 <div>
													<div style="text-align:center;font-size:x-large">Stakato Overview</div>
													<ul style="list-style-type:circle">
														<li>Enterprise Ready: Commercially supported Open source </li>
													   <li>More Choice: Languages, Frameworks, data services</li>
													    <li>Hypervisor (IaaS)-agnostic and Portable: from desktop(micro cloud) to private, public, and hybrid clouds</li>
														<li>Migrate existing apps with minimal re-engineering </li>
														<li>Simplicity of PaaS deployment </li>
														<li>End-to-end: push from desktop to IDE</li>
													    <li>Monitor Performance: vCenter, New Relic</li>
														<li>Enhanced Security: multi-tenant, Docker containers</li>
														<li>Enhanced application lifecycle management</li>
													</ul>
												</div>
                                            </td>
										</tr>
									</table>
                            </div>
                            <div id="stackato-ov1" style="display:none;">
                                <!-- <div class="divStyle2" style="text-align:center;font-size:x-large">Pivotal Cloud Foundry Services</div> -->
								     <table width="100%">
                                        <tr>
                                            <td with="100%">
                                                <img src="images/Stackato-Overview.GIF" valign="top" width="90%">
                                            </td>
                                          
										</tr>
									</table>
                               <!-- </div> -->
                            </div>  
                            <div id="stackato-ov2" style="display:none;">
                                <!-- <div class="divStyle2" style="text-align:center;font-size:x-large">Pivotal Cloud Foundry Services</div> -->
								     <table width="100%">
                                        <tr>
                                            <td with="100%">
                                                <img src="images/Stackato-FeaturesAndBenefirts.GIF" valign="top" width="90%">
                                            </td>
                                          
										</tr>
									</table>
                               <!-- </div> -->
                            </div>  
                            <div id="stackato-ov3" style="display:none;">
                                <!-- <div class="divStyle2" style="text-align:center;font-size:x-large">Pivotal Cloud Foundry Services</div> -->
								     <table width="100%">
                                        <tr>
                                            <td with="100%">
                                                <img src="images/Stackato-ProductElements.GIF" valign="top" width="90%">
                                            </td>
                                          
										</tr>
									</table>
                               <!-- </div> -->
                            </div>  
                            </div>
                             
                            
<%-- <%@ include file="welcome-footer.jsp" %> --%>