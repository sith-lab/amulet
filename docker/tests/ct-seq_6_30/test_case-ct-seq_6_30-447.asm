.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
ADD SIL, -99 # instrumentation
CMOVNL DI, DI 
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RSI] 
IMUL AL 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], -1469798666 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDI], -65 
ADD DIL, -2 # instrumentation
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RDX] 
LEA DX, qword ptr [RDX + RBX + 5043] 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], 12 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], BL 
ADD DIL, 113 
CMOVO ESI, ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DIL 
ADC SIL, -79 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RSI] 
SBB SIL, 107 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], BL 
SUB SI, -12 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], CL 
JBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, 88 # instrumentation
CMOVS AX, BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], CX 
CMOVNS AX, CX 
STC  
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
