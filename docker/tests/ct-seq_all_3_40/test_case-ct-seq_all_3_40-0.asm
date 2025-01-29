.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RBX 
CMOVLE CX, BX 
SBB CX, DX 
TEST BX, DX 
CMOVNZ AX, AX 
SUB CL, AL 
SUB SIL, SIL 
AND RCX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], 103 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RDX] 
SUB EBX, EDI 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], DX 
JMP .bb_main.1 
.bb_main.1:
IMUL EDI, EDI 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], RBX 
MOVSX EDI, AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RDI] 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RDX] 
TEST EDI, 1147966301 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], 56 
CMOVBE SI, CX 
IMUL DI, AX 
ADD SIL, -125 # instrumentation
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RBX] 
MOV DIL, -8 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RAX] 
CMP AX, -17243 
LEA EDX, qword ptr [RSI + RAX] 
CWD  
AND RDI, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RDI] 
SETNP BL 
AND AL, 28 
IMUL BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
MUL EDI 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], SIL 
NOP  
XCHG AL, SIL 
CMPXCHG EDX, ECX 
LEA EAX, qword ptr [RBX + RDX + 42008] 
CMC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
