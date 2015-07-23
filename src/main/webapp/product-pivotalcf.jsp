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
	
	document.getElementById('pivotal-cf').style.display ='none';
    document.getElementById('pivotal-cf1').style.display = 'none';
    document.getElementById('pivotal-cf2').style.display = 'none';
    document.getElementById('pivotal-cf3').style.display = 'none';
    document.getElementById('pivotal-cf4').style.display = 'none';
    document.getElementById('pivotal-cf5').style.display = 'none';
    //document.getElementById('pivotal-cf6').style.display = 'none';
    //document.getElementById('pivotal-cf7').style.display = 'none';
   
    
    document.getElementById(showid).style.display = 'block';
}
</script>
<div class="divBorderRight" style="height: 100%; width: 630px">
<div  class="divStyle2" style="text-align:center;font-size:x-large">Pivotal Cloud Foundry - Platform-as-a-Service</div>
 <a id ="a1" href="javascript:display('a1','pivotal-cf')">Overview</a> |
                                <a id ="a2" href="javascript:display('a2','pivotal-cf1')"> Platforms and Service Components</a> | 
                                <a id ="a3" href="javascript:display('a3','pivotal-cf2')">Cognizant POV</a> |
                                <a id ="a5" href="javascript:display('a5','pivotal-cf3')"> How is it comparable with other products</a> |
                                <a id ="a6" href="javascript:display('a6','pivotal-cf4')"> List of services</a> |
                                <a id ="a7" href="javascript:display('a6','pivotal-cf5')"> Infrastructure Needs </a>
                                <div id="pivotal-cf" style="display:block;">
				    <div>
                             
								  <div>
                                    <table width="100%">
                                        <tr>
                                            <td with="90%">
                                                <img src="images/pivotalcf1.png" valign="top" width="140%">
                                            </td>
                                            <td with="10%" valign="top">
                                                 <div>
													<div style="font-size:x-large">Pivotal Cloud Foundry</div>
													<ul style="list-style-type:circle">
													   <li>Streamline application development, deployment and operations on a centrally-managed</li>
													    <li>Platform as a Service for public and private cloud </li>
														  <li>Built on Open Source</li>
												   <!-- 
													</ul>
													<div style="text-align:center;font-size:x-large">Built on Open Source</div>
													<ul style="list-style-type:circle"> -->
														<li>Pivotal's commercial edition builds on the open source Cloud Foundry release with advanced features:</li>
														<li>Simplified operations management</li>
														<li>Pivotal-managed, secure services marketplace</li>
														<li>Enterprise role-based access and security</li>
														<li>Operations web interface</li>
														<li>Central logging and metrics</li>
														<li>Commercial support and services</li>
													</ul>
												</div>
                                            </td>
										</tr>
									</table>
                                </div>
															
                            </div>
							<div>
								<!-- <div class="divStyle2" style="text-align:center;font-size:x-large">Product Architecture Overview</div> -->
								   <div>
                                    <table width="100%">
                                        <tr>
											  <td with="50%" valign="top">
                                                <img src="images/pivotalcf2.png" valign="top" width="95%">
                                              </td>
											   <td with="50%" width="50%">
											   <div>
													<div style="font-size:x-large">Pivotal Cloud Foundry includes:</div>
													<ul style="list-style-type:circle">
														<li>Pivotal Cloud Foundry Elastic Runtime Service </li>
													   <li>Provides a complete, scalable runtime environment, extensible to most modern frameworks or languages running on Linux. Deployed applications enjoy built-in services, and can automatically bind to new data services through a service broker or to an existing user provided service. </li>
													    <li>Pivotal Cloud Foundry Operations Manager</li>
														  <li>Industry's first turnkey enterprise PaaS management platform with IaaS integration.</li>
												   <!-- 
													</ul>
													<div class="divStyle2" style="text-align:center;font-size:x-large">Built on Open Source</div>
													<ul style="list-style-type:circle"> -->
														<li>Pivotal Cloud Foundry Mobile Services </li>
														<li>Provides a powerful set of consumer-grade, mobile backend services that accelerate mobile app development.</li>
														<li>Pivotal-managed, secure services marketplace</li>
														<li>Automatic application binding and service provisioning with platform integration for ease of creation and management of services with Pivotal Cloud Foundry including those provided by Pivotal and vibrant ecosystem such as RabbitMQ, Pivotal HD, MySQL, Redis, MongoDB, ElasticSearch, RiakCS, Neo4J, etc. </li>
												    </ul>
												</div>
											 </td>
										</tr>
									 </table> 
								  </div>
						   </div>   
						   </div>
						     <div id="pivotal-cf1" style="display:none;">
                                <!-- <div class="divStyle2" style="text-align:center;font-size:x-large">Pivotal Cloud Foundry Services</div> -->
								     <table width="100%">
                                        <tr>
                                            <td with="100%">
                                                <img src="images/pcfcomp.png" valign="top" width="90%">
                                            </td>
                                          
										</tr>
									</table>
                               <!-- </div> -->
                            </div>
                            
                             <div id="pivotal-cf2" style="display:none;">
                              <!--  <div class="divStyle2" style="text-align:center;font-size:x-large">Pivotal Cloud Foundry Cognizant POV</div> -->
								     <table width="100%">
                                        <tr>
                                            <td with="100%">
                                                <img src="images/pcf-cpov1.png" valign="top" width="100%">
                                            </td>
                                          
										</tr>
										<tr>
                                            <td with="100%">
                                                <img src="images/pcf-cpov2.png" valign="top" width="100%">
                                            </td>
                                          
										</tr>
									</table>
						        </div>
                             <div id="pivotal-cf3" style="display:none;">
                                
								     <table width="100%">
                                        <tr>
                                            <td with="100%">
                                                <img src="images/pcffeat.png" valign="top" width="90%">
                                            </td>
                                          
										</tr>
									</table>
                                </div>
                            <div id="pivotal-cf4" style="display:none;">
                                
								     <table width="100%">
                                        <tr>
                                            <td with="100%">
                                                <img src="images/pcflists.png" valign="top" width="90%">
                                            </td>
                                          
										</tr>
									</table>
                                </div>
                            <div id="pivotal-cf5" style="display:none;">
                                <!-- <div class="divStyle2" style="text-align:center;font-size:x-large">Pivotal Cloud Foundry Services</div> -->
								     <table width="100%">
                                        <tr>
                                            <td with="100%">
                                                <img src="images/pcfnds.png" valign="top" width="90%">
                                            </td>
                                          
										</tr>
									</table>
                               <!-- </div> -->
                            </div>  
                            </div>              
<%-- <%@ include file="welcome-footer.jsp" %> --%>