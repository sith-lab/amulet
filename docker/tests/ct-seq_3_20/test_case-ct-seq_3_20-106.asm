.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RSI] 
ADC DL, 126 
SBB DX, SI 
AND RBX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RBX] 
ADD DIL, 77 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], -92 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], 71 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 115 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], -111 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], 90 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
AND RAX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], AL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
