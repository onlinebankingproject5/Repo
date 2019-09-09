<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>WELCOME</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}
body {
  font-family: Arial, Helvetica, sans-serif;
}
/* Style the header */
header {
  background-color: #B84A33;
  padding: 5px;
  text-align: center;
  font-size: 35px;
  color: white;
}
/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 30%;
  height: 500px; /* only for demonstration, should be removed */
  background: #31EACD;
  padding: 20px;
}
/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
}
article {
  float: left;
  padding: 100px;
  width: 70%;
  background-color: #f1f1f1;
  height: 500px; /* only for demonstration, should be removed */
}
/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}
/* Style the footer */
footer {
  background-color: #777;
  padding: 10px;
  text-align: center;
  color: white;
}
/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
}
</style>
</head>
<body>



<header>
  <h1>BANK NAME</h1>
  
   <div style=" position:absolute; left:50px; top:10px;">
  
  <h5><p>Welcome</p> </h5>
  
  </div>
  
  <div style=" position:absolute; right:50px; top:20px;">
  
  <h6><p><a href="logout.jsp">Logout</a></p></h6>
  
  </div>
  
</header>

<section>
  <nav>
    <ul>
      <li>
      	<a href="#">OVERVIEW</a>
      		<h1><li><a href="#">account summary</a></li></h1>
      		<h1><li><a href="#">profile</a></li></h1>
      		<h1><li><a href="#">statement</a></li></h1>
      		<h1><li><a href="#">branches</a></li></h1>
      		
      </li>
      
    </ul>
  </nav>
  
  <article>
    <h1><li><a href="$">PAYMENTS HISTORY</a></li></h1>
     <h1><li><a href="$">FUND TRANSFER</a></li></h1>
      <h1><li><a href="$">PAY BILLS</a></li></h1>
       <h1><li><a href="$">BALANCE</a></li></h1>
    	
  </article>
</section>


</body>
</html>
