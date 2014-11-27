<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="utils.*" errorPage=""%>
<%
	//No Quotes In level Name
	String levelName = "Mobile Reverse Engineering 1";
	//Alphanumeric Only
	String levelHash = "5bc811f9e744a71393a277c51bfd8fbb5469a60209b44fa3485c18794df4d5b1";
	//Level blurb can be written here in HTML OR go into the HTML body and write it there. Nobody will update this but you
	String levelBlurb = "";

	try {
		if (request.getSession() != null) {
			HttpSession ses = request.getSession();
			String userName = (String) ses
					.getAttribute("decyrptedUserName");
			ShepherdLogManager.logEvent(request.getRemoteAddr(),
					request.getHeader("X-Forwarded-For"), levelName
							+ " has been accessed by " + userName);
		}
	} catch (Exception e) {
		ShepherdLogManager.logEvent(request.getRemoteAddr(),
				request.getHeader("X-Forwarded-For"), levelName
						+ " has been accessed");
		ShepherdLogManager.logEvent(request.getRemoteAddr(),
				request.getHeader("X-Forwarded-For"),
				"Could not recover username: " + e.toString());
	}
	/**
	 * <br/><br/>
	 * This file is part of the Security Shepherd Project.
	 * 
	 * The Security Shepherd project is free software: you can redistribute it and/or modify
	 * it under the terms of the GNU General Public License as published by
	 * the Free Software Foundation, either version 3 of the License, or
	 * (at your option) any later version.<br/>
	 * 
	 * The Security Shepherd project is distributed in the hope that it will be useful,
	 * but WITHOUT ANY WARRANTY; without even the implied warranty of
	 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	 * GNU General Public License for more details.<br/>
	 * 
	 * You should have received a copy of the GNU General Public License
	 * along with the Security Shepherd project.  If not, see <http://www.gnu.org/licenses/>. 
	 *
	 * @author Sean Duggan
	 */
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Security Shepherd - <%=levelName%></title>
<link href="../css/lessonCss/theCss.css" rel="stylesheet" type="text/css"
	media="screen" />

</script>
</head>
<body>
	<script type="text/javascript" src="../js/jquery.js"></script>
	<div id="contentDiv">
		<h2 class="title"><%=levelName%></h2>
		<p>
			<%=levelBlurb%>
			<br /> When an attacker reverse engineers an APK, they usually find
			multiple <a>packages</a> containing multiple <a>activities</a>, 
			containing multiple <a>methods</a> which have all been obfuscated to
			crawl through. The key for this challenge has been hard coded into the APK for this challenge. To get to
			the key reverse engineer the APK and find the correct Activity which
			performs a conditional statement to check the validity of the key. <br />
			<br/>
			<%= Analytics.getMobileLevelBlurb("ReverseEngineer2.apk") %>
		</p>
	</div>
	<% if(Analytics.googleAnalyticsOn) { %><%= Analytics.googleAnalyticsScript %><% } %>
</body>
</html>