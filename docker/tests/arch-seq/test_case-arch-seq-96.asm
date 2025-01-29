.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 95 # instrumentation
CMOVNLE EAX, ECX 
CWD  
CMOVNZ RDX, RBX 
CMOVNS RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RBX] 
SBB AX, 22131 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 45 # instrumentation
SETB DL 
CMOVB RCX, RBX 
OR DL, 1 # instrumentation
MOV CL, AL 
CWD  
XOR ECX, EDX 
SBB EAX, -666949878 
CMOVNO ECX, EBX 
MOVZX CX, AL 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], CL 
OR AX, -13721 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RAX] 
TEST SIL, -64 
IMUL SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RDX] 
IMUL AX, DX 
IMUL RAX 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
XOR AX, 17639 
SETNL CL 
CMOVS DI, DX 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], RDI 
OR CX, 0b1000000000000000 # instrumentation
BSR BX, CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], DX 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CLD  # instrumentation
XADD EDI, ECX 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RCX] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EDX 
MOVSX EDX, DL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
CMPXCHG RSI, RBX 
TEST EAX, 1659434993 
SBB AX, -22470 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
