.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL CX, AX 
CMOVO CX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RCX 
CMP BL, CL 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 19 
CMOVS EBX, ESI 
CWDE  
CMOVNLE EBX, ECX 
CMP DL, 25 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EDI 
ADD DIL, 72 # instrumentation
ADC CL, -107 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], 2 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], BX 
CMOVNZ RSI, RAX 
ADC SIL, -23 
CWD  
MOV AL, -91 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RDI, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RDI] 
CMOVLE RCX, RCX 
CMOVNB RDI, RCX 
INC BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
