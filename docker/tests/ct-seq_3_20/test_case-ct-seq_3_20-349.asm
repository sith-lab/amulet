.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX EBX, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], 37 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RBX 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], 6 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
MOVZX EDI, SIL 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], SI 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], 42 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], AX 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], 57 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], BX 
AND RDX, 0b1111111111111 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], CL 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RSI] 
ADD DIL, 45 # instrumentation
CMOVNS DX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
