.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], BL 
CMOVL RCX, RDX 
ADD DI, SI 
CMOVL DI, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
CMOVNZ EBX, EAX 
SBB DIL, -120 
IMUL RAX, RCX 
IMUL RSI, RSI, -120 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -10 # instrumentation
SAHF  
CMOVNS RAX, RAX 
CMOVNL EAX, ECX 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], -42 
MOVZX RDI, AX 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVZX RBX, SI 
AND RDI, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RDI] 
CMOVNBE RBX, RDI 
CMOVNO EDX, EDX 
NEG ECX 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 30 # instrumentation
CMOVLE EBX, EDX 
ADD RAX, 2123613571 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
LAHF  
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
