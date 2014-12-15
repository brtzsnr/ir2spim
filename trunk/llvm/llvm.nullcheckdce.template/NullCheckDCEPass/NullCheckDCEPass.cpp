
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
	struct NullCheckDCEPass : public FunctionPass {
		static char ID;
		NullCheckDCEPass() : FunctionPass(ID) {}

		bool runOnFunction(Function& F) override {
			errs() << "Hello: ";
			errs().write_escaped(F.getName()) << '\n';
			return false;
		}
	};
}


char NullCheckDCEPass::ID = 0;
static RegisterPass<NullCheckDCEPass> X ("nullcheckdce", "NullCheck DCE Pass", false, false);