.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG CL, AL 
CMP RAX, 774919780 
CWD  
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], CL 
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
SBB AX, -8414 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RDI] 
CMOVS RBX, RDX 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -58 # instrumentation
CMOVNS EDX, EAX 
SAHF  
MOVZX RAX, SIL 
IMUL DI 
JMP .bb_main.2 
.bb_main.2:
MOVZX RBX, DIL 
AND RDX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDX] 
JS .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], SIL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RDI] 
CMOVNB RDI, RBX 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], BL 
SBB EAX, -34 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
DEC RCX 
ADD DL, -29 
AND RDX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDX] 
JNZ .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RAX] 
CMP AL, -33 
MOVZX BX, DIL 
AND RDX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
XCHG RAX, RSI 
SBB DIL, 123 
JMP .bb_main.5 
.bb_main.5:
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
