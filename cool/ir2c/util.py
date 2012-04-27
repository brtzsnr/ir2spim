# Andrei Homescu (c) 2010

FUNCTION_PREFIX = "G_"
LABEL_PREFIX = "L_"

class Function(object):
    def __init__(self):
        self.first_label = None
        self.iregs = 0
        self.vr_map = {}
        self.insn_list = []
        self.is_runtime_function = False

class File(object):
    def __init__(self):
        self.functions = {}
        self.data_fields_cnt = 0
        self.data_label_offsets = {}

class Globals(object):
    def __init__(self):
        self.functions = {}
        self.data_fields_cnt = 0
        self.data_label_offsets = {}
        self.data_list = []

def decode_coolir_string(s):
    """Decode the string @s from CoolIR format"""
    s = s[1:-1]
    s = s.replace("\"\"", "\"")
    s = s.replace("\\\\", "\\")
    s = s.replace("\\n", "\n")
    s = s.replace("\\t", "\t")
    return s

def recode_coolir_string(s):
    """Recode the string @s into C format"""
    s = s[1:-1]
    s = s.replace("\\", "\\\\")
    s = s.replace("\"", "\\\"")
    s = s.replace("\n", "\\n")
    s = s.replace("\t", "\\t")
    return s

def len_const_string(s):
    """Compute the number of bytes that @s takes in memory"""
    return len(s)

def recode_label(l):
    return l.replace("_", "_u_").replace(".", "_d_")
