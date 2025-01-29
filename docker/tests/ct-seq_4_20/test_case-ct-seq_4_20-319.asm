.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], SIL 
CMOVLE RDX, RAX 
SBB BL, SIL 
OR SI, 0b1000000000000000 # instrumentation
BSR AX, SI 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RCX], -68 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], -85 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EAX 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], SI 
ADC BX, -28 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], DX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], CX 
JMP .bb_main.3 
.bb_main.3:
ADD DI, DX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
