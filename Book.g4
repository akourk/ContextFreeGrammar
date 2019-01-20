// Define a grammar called Book
grammar Book;

datamodel
	: value
	;
value
	: object | array | STRING | INTEGER
	;
object
	: '<' keyvalue (','keyvalue)* '>'
	;
keyvalue
	: STRING '->' value
	;
array
	: '[' value ',' value ']'
	;
STRING
	: '"' .+? '"'
	;
INTEGER
	: [0-9]+
	;
ID
	: [0-9]+             	// match number identifiers
	;
WS
	: [ \t\r\n]+ -> skip 	// skip spaces, tabs, newlines
	;