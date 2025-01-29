.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RCX] 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDI], 63 
MOV RDX, 8797261639593856068 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RAX] 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RCX] 
ADC DIL, -13 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 21905 
AND RAX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], CL 
CMP AX, 10368 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -77 # instrumentation
CMOVNS DX, DI 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
