.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], SIL 
SUB CL, -26 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], SIL 
LEA ECX, qword ptr [RDI + RDX + 42312] 
JB .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
ADD DIL, -80 # instrumentation
SBB EDI, EBX 
INC RCX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RBX] 
MUL EDX 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
JBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, -61 # instrumentation
SBB RAX, 505698604 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EDX 
CMP AL, -34 
OR DX, 0b1000000000000000 # instrumentation
BSR BX, DX 
AND RAX, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EDI 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RCX] 
ADC DI, 6 
SBB RCX, RBX 
STC  
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], 70 
AND RSI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], 42 
MOVSX EDI, AL 
MOV SI, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RSI] 
JMP .bb_main.5 
.bb_main.5:
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
