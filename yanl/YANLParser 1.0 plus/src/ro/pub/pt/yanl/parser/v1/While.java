package ro.pub.pt.yanl.parser.v1;

import java.util.LinkedList;
import java.util.List;

import org.antlr.runtime.tree.CommonTree;

public class While extends Statement {

	List<Statement> statements = new LinkedList<Statement>();
	Expression condition;
	// TODO Typecheck if boolean

	public While(CommonTree t) {
		super(t);
		// TODO Auto-generated constructor stub
	}

	public List<Statement> getStatements() {
		return statements;
	}

	public void setCondition(Expression condition) {
		this.condition = condition;
	}

	@Override
	public void resolve(Scope scope) throws YANLException {
		super.resolve(scope);
		
		// Check if the condition is boolean
		condition = condition.resolveExpression(scope);
		Type.BOOLEAN.checkCanAssign(condition.type, condition.node);
		
		// Check loop
		Statement.resolveAll(scope, statements);
	}	
}
