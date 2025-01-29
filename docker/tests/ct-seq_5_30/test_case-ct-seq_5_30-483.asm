.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RAX] 
CMOVB DX, AX 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], -32 
DEC BL 
AND RAX, 0b1111111111111 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RDX] 
IMUL CX, CX, 47 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 119 # instrumentation
CMOVS EDI, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RBX] 
JO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RAX] 
LEA ESI, qword ptr [RSI + RCX + 44938] 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
CMOVNO RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RCX] 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -81 # instrumentation
CMOVB DI, DX 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], DL 
SBB RDX, 59 
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
INC DL 
CMOVO RDI, RDI 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD BL, -93 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
CMP RAX, -1302121737 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RBX] 
XCHG EDX, EDI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
