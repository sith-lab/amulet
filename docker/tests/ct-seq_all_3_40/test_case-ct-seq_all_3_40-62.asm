.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 66 # instrumentation
SETNL DL 
MOV BL, BL 
TEST DIL, 103 
CMOVLE EDX, EAX 
CMP RCX, 70 
IMUL CX, BX 
MOVZX SI, DL 
AND RAX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], AL 
MOVZX RSI, CX 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], DIL 
SETNLE BL 
AND RCX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RCX] 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], 30 
AND RSI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RSI], DIL 
LEA ECX, qword ptr [RCX] 
SUB AL, -78 
CMOVNBE DI, DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], 56 
CMOVNP EDX, EBX 
AND RAX, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RAX] 
SETNBE DL 
CMOVB RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DL 
ADC BL, DL 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR AL, -102 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], -73 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
SUB RCX, -33 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RAX] 
SETL DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RCX], 80 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], SI 
AND DX, 63 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
OR EAX, -576562205 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], -19 
AND RCX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RCX], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
