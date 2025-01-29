.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], 117 
ADD BX, -77 
CMOVZ RBX, RAX 
ADC RBX, 120 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], BL 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EBX 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RDI] 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -49 # instrumentation
ADC DL, -49 
STC  
XCHG SI, AX 
LEA RCX, qword ptr [RCX + RCX] 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], -95 
ADC AX, -33 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], DX 
JP .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
CMP DL, CL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RBX] 
MOVZX RDI, SI 
SUB SIL, SIL 
CMOVZ RAX, RAX 
JNZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, BL 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EDI 
ADD AL, BL 
INC ESI 
SUB RSI, -40 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
