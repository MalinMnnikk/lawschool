#lang pollen
<html>
<head>
  <meta charset="UTF-8">
  <title>◊(select 'h2 doc), by MalinMnnikk </title>
  <style type="text/css">
    body {padding: 3em; font-size: 20px; font-family: Helvetica; color: #1F1F23;}
    h1 {background: #FF88B7; color: #2D162E; padding: 10px;}
    h2 {background: #E86B8A; color: #2D162E; padding: 10px;}
    h3 {background: #E8736F; color: #2D162E; padding: 10px;}
    h4 {background: #FF88B7;color: #2D162E; padding: 10px;}
    h5 {background: #E8736F; color: #2D162E; padding: 10px;}
    h6 {background: #E86FDC; color: #2D162E; padding: 10px;}
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
 <a href="◊|prev-page|">◊(select 'h1 prev-page)</a>
 </span>}
◊(define next-page (next here))
◊when/splice[next-page]{
 <span id="next"><a href="◊|next-page|">◊(select 'h1 next-page)</a> →
 </span>}
</body>
</html>
