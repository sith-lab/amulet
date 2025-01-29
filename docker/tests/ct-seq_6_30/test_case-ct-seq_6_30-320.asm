.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG EDI, EDX 
SUB AL, -81 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], SI 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -43 
SUB DI, 63 
LEA EDX, qword ptr [RCX + RAX] 
SUB BX, 57 
AND RDX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RDX] 
CMP EDI, EBX 
JLE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], 18 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
SUB AX, SI 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RCX] 
ADC EBX, -128 
AND RCX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RCX] 
CMOVP ECX, EDI 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], ESI 
MOV AX, -18024 
JMP .bb_main.5 
.bb_main.5:
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RDI] 
MOVSX ECX, DL 
ADC EAX, -116 
AND RDX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], 45 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], 73 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], -2073773701 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
CMOVNP RBX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
