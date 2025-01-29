.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], -91 
AND RDX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RDX], -75 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EDX 
ADD SI, DX 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], BL 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], -105 
CMOVBE ESI, EDX 
AND RDX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RDX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -123 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], -44 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RBX 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], 69 
SBB ECX, 67 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], AL 
DEC BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
