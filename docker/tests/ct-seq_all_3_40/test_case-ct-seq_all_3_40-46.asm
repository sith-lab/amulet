.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], -46 
CMP RAX, RCX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RCX 
MUL CL 
SBB EAX, 64 
AND RBX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RBX] 
CMP CL, CL 
CMP AL, -5 
CMP BL, AL 
SETZ CL 
CMOVNLE EAX, ECX 
SBB AL, 22 
CMOVP RBX, RDI 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -127 # instrumentation
CMOVNB DI, BX 
AND RAX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RAX] 
MOVSX EAX, AX 
XOR AX, -29741 
SUB RAX, -2036802248 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], 88 
AND RDI, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -23 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RAX] 
SBB DL, 10 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RAX] 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -93 # instrumentation
SBB AX, -20694 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], BL 
NOT AL 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], 1636985147 
AND RCX, 0b1111111111111 # instrumentation
OR DIL, byte ptr [R14 + RCX] 
MOV ESI, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RDI] 
CMOVS EDX, ECX 
ADD EDX, -125 
SETL AL 
XCHG BX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
