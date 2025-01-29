.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RCX] 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -118 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RBX] 
XCHG AL, AL 
XCHG DX, BX 
CLC  
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RAX 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RBX 
MOVZX EDX, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
MUL RBX 
ADD DIL, -5 # instrumentation
CMOVS ESI, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RAX] 
OR CX, 0b1000000000000000 # instrumentation
BSF DI, CX 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], BL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, -88 # instrumentation
CMOVB RSI, RAX 
SUB EAX, 1497774387 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RDX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], 118 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], BX 
ADD AX, 27794 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CMP SIL, 81 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], -67 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
