.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX RDX, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RSI] 
SUB CL, DIL 
INC EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
ADD DIL, 86 # instrumentation
MOV SIL, SIL 
JBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], CL 
MOV RDX, 1840845238283313728 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], DX 
MOVSX DI, CL 
JO .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD SIL, -126 # instrumentation
LAHF  
AND RCX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RSI] 
CDQ  
AND RDX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDX], 93 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], EDI 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], SI 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], 84 
AND RDX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDX] 
CMOVNO DI, DX 
JNS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, 104 # instrumentation
ADC DI, 122 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], -99 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], DI 
SUB EAX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
