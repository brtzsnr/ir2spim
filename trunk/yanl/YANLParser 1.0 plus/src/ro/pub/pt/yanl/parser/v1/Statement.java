package ro.pub.pt.yanl.parser.v1;

import java.util.List;

import org.antlr.runtime.tree.CommonTree;

/* Single non-empty statement: procedure call, assignment, if, while, repeat */

public class Statement extends Element {

	public Statement(CommonTree t) {
		super(t);
	}
	
	/* Resolve all statements in a list */
	static void resolveAll(Scope scope, List<Statement> list) {
		for (Statement s:list)
			s.resolve(scope);
	}
}
