.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RSI] 
CMOVNLE RDI, RCX 
XOR CL, BL 
LEA EBX, qword ptr [RDI + RCX + 53715] 
AND RCX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RCX] 
ADD AX, 733 
SETBE BL 
JMP .bb_main.1 
.bb_main.1:
NEG RDX 
XOR RBX, -112 
TEST EDI, -2044138251 
AND RAX, 0b1111111111111 # instrumentation
OR RDI, qword ptr [R14 + RAX] 
SBB AX, 1147 
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CLD  # instrumentation
NOT RCX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
XOR EBX, 42 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], DL 
SETNO AL 
LOOPNE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
MOVZX RCX, CX 
OR RCX, 85 
SBB EDI, -36 
TEST DL, SIL 
JNP .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD SIL, 60 # instrumentation
SETL AL 
CMOVS AX, BX 
ADC CL, CL 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RSI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], DL 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], DI 
TEST RCX, RDX 
ADD DIL, -121 # instrumentation
LAHF  
JMP .bb_main.5 
.bb_main.5:
CLD  # instrumentation
SUB DL, -22 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], 77 
NOT RSI 
ADD DI, 19 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], -60 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
