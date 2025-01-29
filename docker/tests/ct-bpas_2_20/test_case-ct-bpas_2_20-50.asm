.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RDI 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], -90 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
CMOVBE RAX, RBX 
ADD DI, BX 
MOV EBX, -386552239 
SBB CL, 55 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EDI 
AND RBX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RBX] 
CMOVNLE ESI, EDX 
ADC CL, CL 
AND RSI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RSI] 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], 99 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RBX 
CMOVNO EBX, ESI 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
