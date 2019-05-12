#lang pollen
<html>
<head>
  <meta charset="UTF-8">
  <title>◊(select 'h1 doc), by MalinMnnikk </title>
  <style type="text/css">
    body {padding: 3em; font-size: 20px; font-family: Helvetica; color: #1F1F23;}
    h1 {background: #F4EBFF; color: #473E61; display: inline; box-shadow: 10px 0 0 #F4EBFF, -10px 0 0 #F4EBFF;}
    h2 {background: #473E61; color: #D9D0F5; box-shadow: 10px 0 0 #473E61, -10px 0 0 #473E61;}
    h3 {background: #473E61; color: #CBF5F2; box-shadow: 10px 0 0 #473E61, -10px 0 0 #473E61;}
    h4 {background: #473E61; color: #84AAFF; box-shadow: 10px 0 0 #473E61, -10px 0 0 #473E61;}
    h5 {background: #473E61; color: #AE8EEB; box-shadow: 10px 0 0 #473E61, -10px 0 0 #473E61;}
    h6 {background: #473E61; color: #FF828B; box-shadow: 10px 0 0 #473E61, -10px 0 0 #473E61;}
    strong {color: #1F1F23;}
    span#next {float: right;}
    span#prev {float: left;}
  </style>
</head>
<body> ◊(->html doc #:splice? #t)
  <hr />
◊(define prev-page (previous here))
◊when/splice[prev-page]{
 <span id="prev">←
 <a href="/◊|prev-page|">◊(select 'h1 prev-page)</a>
 </span>}
◊(define next-page (next here))
◊when/splice[next-page]{
 <span id="next"><a href="/◊|next-page|">◊(select 'h1 next-page)</a> →
 </span>}
</body>
</html>