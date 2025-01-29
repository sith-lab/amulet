.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -7 # instrumentation
XCHG RSI, RDX 
CMOVL EAX, ECX 
CMOVL DX, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RCX] 
DEC BL 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
CWDE  
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -47 # instrumentation
CMOVBE RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
ADD SIL, -88 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RAX] 
LAHF  
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], -31 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOV BX, BX 
NEG BL 
LAHF  
CMOVNZ DI, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RDI] 
LEA CX, qword ptr [RDX + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 93 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RCX] 
XCHG EBX, EAX 
STC  
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 96 # instrumentation
CMOVZ RCX, RAX 
AND RDX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RDX] 
CMP AX, -25810 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RAX 
AND RDX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDX], 32 
MOV DX, 17647 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
