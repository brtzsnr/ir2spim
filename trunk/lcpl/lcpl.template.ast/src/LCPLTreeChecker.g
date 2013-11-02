tree grammar LCPLTreeChecker;

options {
    tokenVocab=LCPLTreeBuilder;
    ASTLabelType=CommonTree;
}

@members {
}

@header {
    import java.util.LinkedList;
    import ro.pub.cs.lcpl.*;
}

program returns [Program result]
    : ^(PROGRAM classdef)
    { 
        LinkedList<LCPLClass> classes = new LinkedList<LCPLClass>();
        classes.add($classdef.result);
        $result=new Program($PROGRAM.line, classes); 
    }
    ;

classdef returns [LCPLClass result]
    :   ^(CLASS name=ID parent=ID ^(METHOD method))
    {
        List<Feature> features = new LinkedList<Feature>();
        features.add($method.result);
        $result= new LCPLClass($CLASS.line, $name.text, $parent.text, features);
    }
    ;
    
method returns [Method result]  
    :   ^(METHOD ID statement)
    {
        List<FormalParam> parameters = new LinkedList<FormalParam>();   
        List<Expression> body = new LinkedList<Expression>();
        body.add($statement.result);
        $result = new Method($METHOD.line, $ID.text, parameters, "void", new Block($METHOD.line, body));
    }
    ;    

statement returns [ Expression result ]  
    :   ^(STATEMENT ID string_const)
    {
        List<Expression> params = new LinkedList<Expression>();
        params.add($string_const.result);
        $result = new Dispatch($STATEMENT.line, null, $ID.text, params);
    }
    ;
    
string_const returns [ StringConstant result ] 
    :   STRING_CONST
    {
        return new StringConstant($STRING_CONST.line,$STRING_CONST.text.substring(1,$STRING_CONST.text.length()-1));
    }
    ;
    