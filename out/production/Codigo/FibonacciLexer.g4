lexer grammar FibonacciLexer;
//palabras reservadas

PR_BEGIN: 'begin';
PR_END : 'end';
PR_WHILE : 'while';
PR_FUNCTION: 'function';
PR_TIPO: 'numero' | 'cadena';
PR_INCLUDE : 'include';
PR_DEVOLVER : 'devolver';
PR_VOID: 'void';
PR_IF: 'if';
PR_THEN: 'then';
PR_ELSE: 'else';
PR_ENDIF: 'endif';
//Comentarios

COMENTARIOBLOQUE: (('/***' .*? '***/')|('/**' .*? '**/')) ->skip;
COMENTARIOLINEA: (('//' .*? NEW_LINE )|('/*' .*? '*/' )) ->skip;


//Símbolos terminales
SUMA : '+';
TRUE : 'true';
FALSE : 'false';
RESTA : '-';
MULT : '*';
DIV : '/';
ASIGNAR : ':=';
OPLOGICOS : '>'|'<'|'>='|'<='|'=='|'!=';
COMILLAS : '"';
COMA : ',';
DOSPUNTOS : ':';
FINALSENTENCIA : ';';
IDENTIF: [a-zA-Z](([a-zA-Z0-9] | '_')*)?;
PI: '(';
PD: ')';
NUMERO : [0-9]+;
CADENA : '"' (NEW_LINE | . )*? '"';
TIPO_CADENA: ('d'|'s');
WS : (' '+ |  (NEW_LINE | [\t\b])+ )->skip;
NEW_LINE : [\r\n]+;