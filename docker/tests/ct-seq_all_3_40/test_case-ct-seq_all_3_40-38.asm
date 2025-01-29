.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -79 # instrumentation
SBB RAX, -692157300 
IMUL EDX 
ADD DIL, 5 # instrumentation
CMOVNBE EDX, EAX 
CMP EAX, -1639932630 
CMOVNB AX, BX 
DEC RCX 
CMOVNBE ESI, ECX 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], 2095212523 
SBB DL, BL 
SBB EAX, 104 
STC  
CWD  
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], -127 
MOV DL, CL 
ADD AL, AL 
TEST DL, DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], -18 
XOR DI, -48 
MOV SI, AX 
MOVSX AX, AL 
SBB EDX, -78 
SBB RAX, -126 
XADD BL, AL 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], DL 
XCHG RCX, RAX 
ADC RAX, -65 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], 56 
CMOVBE EDX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RAX] 
ADD RAX, -156910070 
XADD AX, BX 
SUB BL, BL 
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
ADD EAX, 1264547308 
SETZ BL 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], AX 
SBB CX, -41 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RCX] 
SETBE DL 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
