#lang racket/base
(require pollen/decode pollen/misc/tutorial txexpr)
(provide root)
(define (root . elements)
  (let ([toc (build-toc elements)])
  (txexpr 'root empty (decode-elements (add-toc elements toc)
                                       #:txexpr-elements-proc decode-paragraphs
                                       #:string-proc (compose1 smart-quotes smart-dashes)))))

(define (add-toc elements toc)
  (if (list? elements)
      (append toc elements)
      (append toc (cons elements '()))))

(define (build-toc elements)
  (let* ([headers (filter is-header? elements)]
         [toc (map header->li headers)]) 
    (list
     (txexpr 'h2 '() (list "Termin 4, våren 2019"))
     (txexpr 'ul '() toc))))

(define (is-header? element)
  (let ([tag (get-tag element)])
  (or
   (equal? tag 'h1)
   (equal? tag 'h2)
   (equal? tag 'h3)
   (equal? tag 'h4)
   (equal? tag 'h5)
   (equal? tag 'h6))))

(define (header->li h)
  (let* ([id (attr-ref h 'id "anything")]
         [elements (get-elements h)]
         [link (txexpr 'a '() elements)]
         [tag (get-tag h)]
         [hreflink (attr-set link 'href (string-append "#" id))]
         [li (txexpr 'li '() (list hreflink))])
    (wrap-in-tag 'ul (nesting-level tag) li)))

(define (nesting-level tag)
  (cond
    [(equal? tag 'h1) 0]
    [(equal? tag 'h2) 1]
    [(equal? tag 'h3) 2]
    [(equal? tag 'h4) 3]
    [(equal? tag 'h5) 4]
    [(equal? tag 'h6) 5]
    )
)

(define (wrap-in-tag tag n element)
   (if (< n 1)
        element
        (wrap-in-tag tag (- n 1) 
            (txexpr tag '() (list element)))))


(provide author)
(provide search-word)
(define author "Malin Männikkö")
(define search-word "Law School")
