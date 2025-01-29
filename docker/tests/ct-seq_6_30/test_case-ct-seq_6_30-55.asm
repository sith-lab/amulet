.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 106 # instrumentation
CMOVP SI, SI 
ADD CX, -84 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RDI] 
ADD AX, -118 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DIL 
CMOVNL RBX, RDI 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RBX] 
ADD DIL, 84 # instrumentation
CMOVNP AX, SI 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], SI 
AND RDX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DIL 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
BSWAP RBX 
ADC RCX, 20 
LOOP .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD DIL, -21 # instrumentation
CMOVB RDX, RDI 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], ESI 
JMP .bb_main.5 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RDX] 
CMP AL, -114 
SUB EAX, 128753775 
ADC EAX, 1139125088 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
CMP DIL, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
