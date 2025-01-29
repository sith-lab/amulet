.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP EAX, 621474926 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], DI 
CMOVNB RSI, RBX 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD EBX, -122 
CMOVL ECX, EBX 
SUB RCX, 92 
JNBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
MOVSX RAX, CL 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
SBB RAX, -1842092314 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RBX] 
NEG ESI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DIL 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
CMP EAX, -1807910399 
JMP .bb_main.4 
.bb_main.4:
IMUL ECX, EDI, -63 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
SUB BX, -119 
AND RBX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RBX] 
MOVSX BX, SIL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RSI] 
CDQ  
AND RAX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RAX] 
SUB BL, DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], EAX 
CMOVLE RAX, RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
