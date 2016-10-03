rebol [
       title: "Test Functions"
       exports: [ succ dbl ]

]


succ: func [ n ] [ return n + 1 ]

dbl: func [ n ] [ return n * 2 ]

