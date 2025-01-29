.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 52 # instrumentation
SETNL BL 
AND RAX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 33 
IMUL CL 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], -1591 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
CMP AX, -23616 
AND RCX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RCX] 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
CMP EDX, ECX 
TEST AX, -24018 
AND EDI, 10 
ADC CL, -99 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RDX] 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 77 # instrumentation
CLC  
SETNLE CL 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -95 
OR DI, CX 
IMUL RBX 
MUL ECX 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], -44 
ADD EDX, ESI 
CMOVNB DX, CX 
AND RCX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RCX] 
CMP EAX, 1882680156 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOVZX RBX, SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RDX] 
SBB RBX, -63 
SBB AL, -3 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RDI] 
OR RCX, 82 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RBX], EAX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RSI] 
ADD SIL, -21 # instrumentation
CMOVNL AX, BX 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], -58 
CMOVP DI, DX 
ADC CL, 57 
SUB RCX, -99 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
