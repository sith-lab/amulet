.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RDI 
CMP BL, 13 
SUB BX, 32 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], 55 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], AX 
OR DL, 1 # instrumentation
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RDX] 
CMOVBE SI, AX 
MOVZX RSI, SI 
CMOVL EDX, ECX 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
JO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RBX] 
OR DX, 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RDI] 
SBB RAX, -1119930010 
CMOVNB EAX, EDI 
MOVZX RDI, DX 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVSX RCX, BL 
NEG EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RCX] 
SUB RAX, -1772830835 
ADD AX, 31271 
JMP .bb_main.4 
.bb_main.4:
XCHG DX, DX 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -32 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RDI] 
ADD ECX, -78 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RDI 
SUB EAX, 90 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
