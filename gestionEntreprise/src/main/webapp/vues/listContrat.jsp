<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<%@include file="navbar.html" %>
<br><br>
<form method=get action=Contratmc>
<div class=container>
<div class="row mt-4 pl-2">
<div class="col-md-1">
<label for="mc" class="form-label">Mot Cle:</label>
</div>
<div class="col-md-3">
<input type="text" id="mc" class="form-control" name=mc>
</div>
<div class="col-md-3">
<button type="submit" class="btn btn-primary">Chercher</button>
</div> </div> </div> </form>
<br><hr>
<h2 style="text-align: center;">Liste des contrats</h2>
<table class="table table-hover">

<tr><th>reference</th><th>typeContrat</th><th>salaire</th><th>Employe</th><th>Action</th>
</tr>
<c:forEach items="${Contrat}" var="p">
<tr>

<td>${p.reference}</td>
<td>${p.typeContrat}</td>
<td>${p.salaire}</td>
<td>${p.employe.nom}</td>


<td><a href="/Entreprise/supprimer/${p.reference}"
 class="btn btn-danger">supprimer</a>
 <a href="/Entreprise/modifierContrat/${p.reference}" class="btn btn-warning">
 Edit</a></td>
 

 
</tr>
</c:forEach>
</table>
</body>
</html>