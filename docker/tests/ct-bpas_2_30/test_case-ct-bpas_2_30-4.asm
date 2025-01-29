.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP ESI, ECX 
XCHG AL, CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
ADC AL, BL 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -82 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
MOV RDX, RDX 
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
STC  
MOV DL, 49 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RCX] 
CMOVNLE BX, BX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ECX 
AND RBX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RBX] 
XCHG EBX, EAX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
DEC BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], EBX 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
ADC AL, -4 
CMP DIL, 4 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
SUB RAX, RCX 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EBX 
CMOVZ RDI, RCX 
CMOVBE EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
