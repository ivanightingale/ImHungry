<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="searchPage.css" />
<link href="https://afeld.github.io/emoji-css/emoji.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Search Page</title>
</head>
<body>
	<div id = "header">I'm Hungry </div>
	<div id = "format">
		<form action = "searchServlet" method = "Post">
			<input type = "text" name = "search" id = "search" placeholder = "Enter Food" required>
			<div id = hover_format>
				<input type = "number" name = "number" id = "number" value = "5" min= "1">
				<div id = "hover_text">
					Number of items to show in results
				</div>
			</div>
			
			<br>
			<div id = "container">
				<div id ="text">Feed Me!</div>
				<input type="image" id = "emoji" onclick ="transform()" src="sad.png" alt="Feed MEEEE" />
			</div>
			
			
		</form>
	</div>
<script>
function transform()
{
	var image = document.getElementById('emoji');
	image.src = "happy.png";
}
</script>

</body>
</html>