.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
NEG CX 
CMC  
ADC DL, CL 
AND RDI, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
MOV BL, DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RCX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 14 # instrumentation
ADC EBX, EDI 
SUB AL, 75 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RDI 
OR SI, 0b1000000000000000 # instrumentation
BSF AX, SI 
AND RDI, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RDI] 
IMUL RCX, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RCX 
CMOVBE CX, SI 
SUB RCX, -92 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
