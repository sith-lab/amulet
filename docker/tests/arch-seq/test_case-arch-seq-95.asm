.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AX, 0b1000000000000000 # instrumentation
BSF BX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RDI] 
INC RCX 
SUB RAX, 294560111 
CMOVBE RCX, RDI 
SUB RSI, RBX 
CMOVS RDI, RSI 
MOVZX RDI, BL 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -95 # instrumentation
ADC ESI, 96 
SETLE BL 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RBX] 
SETNZ BL 
INC DI 
XADD BX, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], RDX 
JNLE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
ADD DIL, 42 # instrumentation
SBB SI, DX 
CMOVBE ESI, EAX 
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], RBX 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], DI 
XCHG EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], -28 
JNS .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD SIL, 49 # instrumentation
SBB ESI, -29 
XOR DL, 116 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RCX] 
TEST AL, 45 
JMP .bb_main.4 
.bb_main.4:
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
CMPXCHG CL, CL 
CMOVNL RDI, RAX 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], 30 
XOR AL, -88 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], BL 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], -80 
XOR EAX, 1706112876 
CMP EAX, 1095438037 
JMP .bb_main.5 
.bb_main.5:
XCHG ECX, EAX 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], -59 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
