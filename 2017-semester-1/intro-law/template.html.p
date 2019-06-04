#lang pollen
<html>
<head>
  <meta charset="UTF-8">
  <title>◊(select 'h1 doc), by MalinMnnikk </title>
  <style type="text/css">
    body {padding: 3em; font-size: 20px; font-family: Helvetica; color: #1F1F23;}
    h1 {background: #FFA59E; color: #332022; padding: 10px;}
    h2 {background: #FFA0AA; color: #332022; padding: 10px;}
    h3 {background: #E8A390; color: #241C18; padding: 10px;}
    h4 {background: #FFC9AA; color: #332022; padding: 10px;}
    h5 {background: #FF828B; color: #332022; padding: 10px;}
    h6 {background: #FF828B; color: #332022; padding: 10px;}
    strong {color: #332022;}
    span#next {float: right;}
    span#prev {float: left;}
  </style>
</head>
<body> ◊(->html doc #:splice? #t)
  <hr />
◊(define prev-page (previous here))
◊when/splice[prev-page]{
 <span id="prev">←
 <a href="◊|prev-page|">◊(select 'h1 prev-page)</a>
 </span>}
◊(define next-page (next here))
◊when/splice[next-page]{
 <span id="next"><a href="◊|next-page|">◊(select 'h1 next-page)</a> →
 </span>}
</body>
</html>
