.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, -56 # instrumentation
CMOVB RCX, RBX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
OR CX, 0b1000000000000000 # instrumentation
BSF SI, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
IMUL SI, AX 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
ADD AX, 27532 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], SIL 
XCHG RDX, RAX 
CMOVLE RAX, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], 10 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RDX] 
ADD RAX, 1486424807 
DEC SIL 
AND RDI, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RDI] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MUL BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RDI] 
SUB EBX, -26 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RAX] 
SUB RBX, RCX 
SUB RDX, RCX 
MOVZX EBX, SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RDX] 
CMOVNL EDX, EDI 
IMUL EDI, ESI, -99 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], DX 
CDQ  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
