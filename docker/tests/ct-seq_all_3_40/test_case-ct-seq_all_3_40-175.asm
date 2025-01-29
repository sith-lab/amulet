.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
CMP EBX, EBX 
AND BX, DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
XOR RDX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], RSI 
CMOVNZ EDX, EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], DX 
XOR DI, SI 
ADD BL, BL 
SBB EAX, -1878711168 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
TEST AL, DIL 
SETNP AL 
SAHF  
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -117 # instrumentation
CMOVNL BX, BX 
CMOVNLE SI, CX 
AND RDI, 0b1111111111111 # instrumentation
XOR EDI, dword ptr [R14 + RDI] 
SETNZ DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RCX], RCX 
TEST RAX, RBX 
SUB EAX, 422136595 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RDX] 
TEST AL, DL 
AND RCX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RDX] 
CMP EDX, -121 
XOR AX, -10164 
ADD AX, 134 
JMP .bb_main.2 
.bb_main.2:
AND AX, -6681 
ADC AX, -14897 
AND RAX, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RCX] 
CMOVNO EAX, EAX 
INC ECX 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], ESI 
SBB AX, 11092 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], -120 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
