.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], -115 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 37 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], 34 
AND RBX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RBX] 
LOOP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], 88 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RSI] 
CWD  
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], 58 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RCX] 
CMOVZ BX, SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
