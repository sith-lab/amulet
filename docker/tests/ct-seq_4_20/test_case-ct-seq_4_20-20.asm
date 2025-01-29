.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RAX] 
ADD DIL, 21 # instrumentation
CMOVNB ESI, EAX 
CMOVLE RCX, RSI 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], 99 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RSI] 
ADC DIL, 65 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
STC  
AND RSI, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RSI] 
CMOVP RCX, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], -28 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], -55 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
