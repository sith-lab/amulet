.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP AL, 105 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], 64 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], ECX 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EDX 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], 50 
AND RDX, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
ADD DL, 97 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DL 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
CMP CL, 90 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], DL 
AND RDX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], -76 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], EAX 
XCHG RCX, RSI 
IMUL BX, BX 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], SI 
SUB BL, 12 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
