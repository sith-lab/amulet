.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
ADD CX, BX 
CMOVNO RAX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], 73 
AND RDI, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RDI] 
CMOVB RCX, RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], AL 
AND RDX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RAX 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RDX] 
CDQ  
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
MOV CL, DIL 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
CWDE  
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
