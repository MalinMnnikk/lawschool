#lang pollen
<html>
<head>
  <meta charset="UTF-8">
  <title>◊(select 'h1 doc), by MalinMnnikk </title>
  <style type="text/css">
    body {padding: 3em; font-size: 20px; font-family: Helvetica; color: #1F1F23;}
    h1 {background: #3F3E40; color: #FBF7FF; padding: 10px;}
    h2 {background: #FBF7FF; color: #3F3E40; padding: 10px;}
    h3 {background: #E2DFE6; color: #7E7C80; padding: 10px;}
    h4 {background: #7E7C80; color: #FBF7FF; padding: 10px;}
    h5 {background: #FBF7FF; color: #7E7C80; padding: 10px;}
    h6 {background: #E2DFE6; color: #7E7C80; padding: 10px;}
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
