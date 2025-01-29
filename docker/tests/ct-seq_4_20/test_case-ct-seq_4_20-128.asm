.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], -66 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], BL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
INC DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], BX 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDX] 
MOVZX ESI, CL 
CMOVNO BX, CX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -20259 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -76 
JRCXZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], AX 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], BL 
AND RCX, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RCX] 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
