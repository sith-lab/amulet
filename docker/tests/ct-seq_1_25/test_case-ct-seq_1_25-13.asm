.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], ECX 
ADC EAX, -33885449 
MOV AL, DIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RCX] 
IMUL DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], -114 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], 77 
SUB ESI, ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], -10 
XCHG EDI, EBX 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EBX 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], ESI 
CMOVNO DI, AX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RSI] 
CMP DI, 35 
AND RDI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
MOVSX ESI, DX 
STD  
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], -85 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
