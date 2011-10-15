<%@ page language="java" contentType="application/xhtml+xml; charset=UTF-8"
    pageEncoding="UTF-8"%><?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xf="http://www.w3.org/2002/xforms">
<head>
<xf:model>
 <xf:instance>
        <user xmlns="">
            <name>Enter username here...</name>
            <password>Enter password here...</password>
        </user>
    </xf:instance>
	<xf:bind nodeset="name" required="true()"/>
	<xf:bind nodeset="password" required="true()"/>
	
    <xf:submission action="http://localhost:8090/pureXML_CRUD/Create_Servlet" 
        method="post" id="signup"/>
</xf:model>
</head>
<body>
<h1>Signup Form</h1>

<p>
Enter your username and password...
</p>

<p>
<xf:input ref="name"><xf:label>Username:</xf:label></xf:input></p>
<p><xf:input type="password" ref="password"><xf:label>Password:</xf:label></xf:input></p>
<p><xf:submit submission="signup"><xf:label>Search</xf:label></xf:submit></p>
</body>
</html>
