# Andrei Homescu (c) 2010

FUNCTION_PREFIX = "G_"
LABEL_PREFIX = "L_"

class Function(object):
    def __init__(self):
        self.first_label = None
        self.iregs = 0
        self.noreturn = True
        self.vr_map = {}

class File(object):
    def __init__(self):
        self.functions = {}
        self.data_len = 0
        self.data_label_offsets = {}

class Globals(object):
    def __init__(self):
        self.functions = {}
        self.data_len = 0
        self.data_label_offsets = {}
        self.code_label_indices = {}
        self.code_label_list = []
        self.data_list = []

def recode_coolir_string(s):
    """Recode the string @s from CoolIR format into LLVM string format"""
    s = s[1:-1]
    s = s.replace("\"\"", "\\\"")
    return s

def len_llvm_string(s):
    """Compute the number of bytes that @s takes in memory"""
    return len(s) - s.count("\\")

def recode_label(l):
    return l.replace("_", "_u_").replace(".", "_d_")
