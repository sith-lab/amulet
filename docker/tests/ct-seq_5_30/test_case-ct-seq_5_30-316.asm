.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RSI] 
LEA RBX, qword ptr [RBX] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], -98 
XCHG CL, CL 
IMUL RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
CMOVNS RCX, RAX 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -79 # instrumentation
CMOVBE ESI, EAX 
CMP RAX, -68 
AND RDI, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RDI] 
SUB AL, -55 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], DI 
SBB AL, 89 
MOV DI, 21531 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XCHG CX, SI 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], -83 
MOVSX RAX, SIL 
XCHG EAX, EAX 
CMOVLE EAX, EBX 
AND RAX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], AL 
CMOVNL EDX, EAX 
ADD AX, -37 
IMUL ESI, EBX 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RBX] 
CMOVO DI, DI 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
