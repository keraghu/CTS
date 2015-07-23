<%@ include file="welcome-header.jsp" %>
                            
                            <div>
                                <div class="divStyle2" style="text-align:center;font-size:x-large">Private PaaS Features</div>
                                <b>Extensible cartridge architecture</b>
<br>
<ul style="list-style-type:none">
  <li>Ability to plug in third-party run-times such as PHP, MySQL, and Tomcat</li>
  <li>Support for Puppet-based cartridge provisioning and application orchestration</li>
  <li>Seamless integration with WSO2 Carbon product level multi-tenancy (multi-tenant cartridges)</li>
</ul>
<br>
<b>Deploy over your preferred IaaS</b>
<ul style="list-style-type:none">
  <li>Supports Amazon Web Services EC2</li>
  <li>Supports OpenStack</li>
  <li>Experimental support for VMWare vCloud</li>
  <li>Capability to support any IaaS via jClouds API</li>
</ul>
<br>
<b>Cloud burst your platform</b>
<ul style="list-style-type:none">
  <li>Ability to define autoscaling policies over multiple IaaSs</li>
  <li>Scale up to public IaaS, in an event of resource run out in your on premise IaaS</li>
</ul>
<br>
<b>Choose the load balancer of your choice</b>
<ul style="list-style-type:none">
  <li>WSO2 Private PaaS ships a tenant-aware load balancer that is capable of serving different tenant requirements</li>
  <li> “Economy class” for low-priority workloads/tenants</li>
  <li> “Private jet” mode for workloads/tenants that require dedicated resources</li>
  <li>The load balancer itself is a pluggable cartridge component</li>
   <li>The load balancer itself is a pluggable cartridge component</li>
   <li>Bring in your own load balancer in the Private PaaS environment</li>
</ul>
<br>
<b>Policy-based multifactor auto-scaling</b>
<ul style="list-style-type:none">
  <li>Transparently add services when new resources are needed</li>
  <li>Ability to define your own scale up/scale down logic</li>
  <li>Define the scaling policy with load average/memory/cpu-usage/etc.</li>
</ul>
<br>
<b>Easy SaaS app development</b>
<ul style="list-style-type:none">
  <li>Make use of the in-built tenancy model in your SaaS apps</li>
  <li>Support for logging,metering and billing</li>
</ul>
<br>
<b>Integration ready</b>
<ul style="list-style-type:none">
  <li>Exposes a Simple RESTful admin API</li>
  <li>Command line client to manage the Private PaaS</li>
  <li>User friendly Web-based admin interface to manage your PaaS</li>
</ul>
<%@ include file="welcome-footer.jsp" %>