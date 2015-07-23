
<%@ include file="welcome-header.jsp"%>
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
	
	
	document.getElementById('openshift-main').style.display ='none';
    document.getElementById('openshift-ov1').style.display = 'none';
    document.getElementById('openshift-ov2').style.display = 'none';
    document.getElementById('openshift-ov3').style.display = 'none';
    document.getElementById('openshift-ov4').style.display = 'none';
    document.getElementById('openshift-ov5').style.display = 'none';
    document.getElementById('openshift-ov6').style.display = 'none';
    document.getElementById('openshift-ov7').style.display = 'none';
   
    
    document.getElementById(showid).style.display = 'block';
}
</script>
<div class="divBorderRight" style="height: 100%; width: 630px">
	<div class="divStyle2" style="text-align: center; font-size: x-large">OpenShift
		- Platform-as-a-Service</div>
	<div>
		<a id="a1" href="javascript:display('a1','openshift-ov1')">Overview</a>
		| <a id="a2" href="javascript:display('a2','openshift-main')">
			Architecture Overview</a> | <a id="a3"
			href="javascript:display('a3','openshift-ov2')">Three problems
			that OpenShift solves</a> | <a id="a4"
			href="javascript:display('a4','openshift-ov3')">How OpenShift
			solves today's IT Challenge</a> | <a id="a5"
			href="javascript:display('a5','openshift-ov4')"> Product Overview</a>
		| <a id="a6" href="javascript:display('a6','openshift-ov5')">
			Product Offerings</a> | <a id="a7"
			href="javascript:display('a7','openshift-ov6')">Continuous
			Delivery through OpenShift </a> | <a
			href="javascript:display('a8','openshift-ov7')">Cognizant's Point
			of View </a>
		<div id="openshift-main" style="display: none;">

			<table width="100%">
				<tr>
					<td with="50%"><img src="images/openshiftov.png" valign="top"
						width="105%"></td>
					<td with="50%">
						<div>
							<div style="text-align: center; font-size: x-large">Openshift</div>
							<ul style="list-style-type: circle">
								<li>OpenShift is a PaaS product built by RedHat that runs
									on proven RHEL Linux OS. Current release versions are V 2.2 &
									V3.0.</li>
								<li>OpenShift allows developers to quickly develop, host,
									and scale applications in a cloud environment.</li>
								<li>OpenShift is a cloud application platform that support
									multiple languages, frameworks and self-service of
									infrastructure with auto, elastic, manual scaling feature.</li>
								<li>OpenShift is available as online, on premise, and open
									source project versions.</li>
								<li>OpenShift accelerates Application delivery with
									Application Life Cycle, Middleware Platform and Infrastructure
									automation.</li>
								<li>Secure SELinux and Dockers containerization enables
									multi-tenancy and optimization of Infrastructure for multiple
									applications.</li>
							</ul>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<div id="openshift-ov7" style="display: none;">
		<!--  <div class="divStyle2" style="text-align:center;font-size:x-large">Pivotal Cloud Foundry Cognizant POV</div> -->
		<table width="100%">
			<tr>
				<td with="100%"><img src="images/opsht-ov8.png" valign="top"
					width="100%"></td>

			</tr>
			<tr>
				<td with="50%"><img src="images/opsht-ov9.png" valign="top"
					width="50%"></td>

			</tr>
		</table>
	</div>

	<div id="openshift-ov6" style="display: none;">
		<!-- <div class="divStyle2" style="text-align:center;font-size:x-large">Pivotal Cloud Foundry Features</div> -->
		<table width="100%">
			<tr>
				<td with="100%"><img src="images/opsht-ov7.png" valign="top"
					width="90%"></td>

			</tr>
		</table>
		<!-- </div> -->
	</div>
	<div id="openshift-ov4" style="display: none;">
		<!-- <div class="divStyle2" style="text-align:center;font-size:x-large">Pivotal Cloud Foundry Features</div> -->
		<table width="100%">
			<tr>
				<td with="100%"><img src="images/opsht-ov5.png" valign="top"
					width="90%"></td>

			</tr>
		</table>
		<!-- </div> -->
	</div>
	<div id="openshift-ov1" style="display: block;">
		<!-- <div class="divStyle2" style="text-align:center;font-size:x-large">Pivotal Cloud Foundry Features</div> -->
		<table width="100%">
			<tr>
				<td with="100%"><img src="images/opsht-ov1.png" valign="top"
					width="90%"></td>

			</tr>
		</table>
		<!-- </div> -->
	</div>

	<div id="openshift-ov5" style="display: none;">
		<!-- <div class="divStyle2" style="text-align:center;font-size:x-large">Pivotal Cloud Foundry Features</div> -->
		<table width="100%">
			<tr>
				<td with="100%"><img src="images/opsht-ov6.png" valign="top"
					width="90%"></td>

			</tr>
		</table>
		<!-- </div> -->
	</div>

	<div id="openshift-ov2" style="display: none;">
		<!-- <div class="divStyle2" style="text-align:center;font-size:x-large">Pivotal Cloud Foundry Features</div> -->
		<table width="100%">
			<tr>
				<td with="100%"><img src="images/opsht-ov2.png" valign="top"
					width="90%"></td>

			</tr>
		</table>
		<!-- </div> -->
	</div>

	<div id="openshift-ov3" style="display: none;">
		<!--  <div class="divStyle2" style="text-align:center;font-size:x-large">Pivotal Cloud Foundry Cognizant POV</div> -->
		<table width="100%">
			<tr>
				<td with="100%"><img src="images/opsht-ov3.png" valign="top"
					width="100%"></td>

			</tr>
			<tr>
				<td with="100%"><img src="images/opsht-ov4.png" valign="top"
					width="100%"></td>

			</tr>
		</table>
	</div>
	</div>

	<%--                     
<%@ include file="welcome-footer.jsp" %> --%>