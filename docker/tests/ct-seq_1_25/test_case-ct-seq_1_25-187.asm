.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], -64 
AND RAX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RAX] 
ADD AL, 60 
SUB AL, DL 
CMOVS RSI, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ECX 
MOV DIL, CL 
ADD EAX, -199694580 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], -91 
AND RDI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EDX 
CMOVNBE EBX, EAX 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
CMOVNLE RBX, RDX 
MOV ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], BX 
AND RDX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RDX] 
XCHG EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], -12 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
