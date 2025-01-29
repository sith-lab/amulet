.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
OR EDX, dword ptr [R14 + RBX] 
XCHG RDX, RAX 
AND RDX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RDX] 
AND EAX, 494554697 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RDI] 
INC BX 
SUB RAX, 1616051239 
ADD AL, 87 
CMOVLE EDI, EDI 
MOVZX EDX, BL 
OR SI, SI 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR DIL, DIL 
ADD RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RDX] 
CMP ESI, ESI 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RCX 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], DL 
SBB EAX, -630220539 
AND RCX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RCX] 
SUB RBX, -65 
CMP BL, 16 
MOVZX EDI, AL 
OR BX, SI 
XOR AL, BL 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOV DI, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RBX] 
MOVSX EDX, DL 
ADD SIL, SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], BL 
SETP DL 
XOR DI, SI 
ADC BL, 16 
CMP RDX, -58 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 87 
SETL AL 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RAX 
CMOVNZ RSI, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
