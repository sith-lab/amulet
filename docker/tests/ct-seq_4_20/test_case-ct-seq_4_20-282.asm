.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDX], -7 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], ECX 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RDI 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
SUB EAX, -1476849356 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
MOVSX DI, CL 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], 77 
ADC ESI, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], -26 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
