.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
MOV BL, BL 
CMOVNB EBX, EDI 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
CMOVNP RCX, RAX 
CMOVNZ ESI, ESI 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 15053 
LOOP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CMP RAX, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], SIL 
SBB SI, AX 
MOVZX DX, AL 
ADC RSI, 93 
ADD BL, AL 
JS .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
NEG SI 
MOVSX RBX, AX 
AND RCX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RCX] 
LOOPE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RCX] 
INC AX 
CMOVNL ECX, ECX 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], 41 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], AL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RDI] 
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
JMP .bb_main.5 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], EDX 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], 33 
AND RAX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
