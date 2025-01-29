.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL ECX, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RCX] 
CWD  
AND RSI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RSI], 2 
CMOVO SI, AX 
XCHG RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -79 
ADD RBX, 28 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RAX] 
SUB CL, AL 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], DL 
AND RDI, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], -78 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
CMP AL, 18 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], -28 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], EAX 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
CMP RAX, -386892668 
CLC  
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EBX 
CMOVO RSI, RBX 
ADD RSI, RSI 
IMUL BX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
