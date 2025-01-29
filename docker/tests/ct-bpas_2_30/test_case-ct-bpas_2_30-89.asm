.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV RBX, RDI 
CMP SIL, -78 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
SBB SI, -25 
NEG SI 
CMP EAX, EDX 
AND RBX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EBX 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RCX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RDX] 
NEG RAX 
SBB RAX, 1594578811 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], CL 
MOVSX RDX, BL 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], 73 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
MOVZX EAX, CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], CL 
CMOVP EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RBX, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RBX] 
CMOVL RCX, RBX 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], 86 
MOV EDI, 1089555072 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
