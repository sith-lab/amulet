.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], -16 
MOVSX AX, CL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], -110 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
ADC DL, -62 
CMP DL, AL 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], 99 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], -94 
SUB SI, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
JBE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD SIL, -93 # instrumentation
CMOVP EDI, EBX 
MOV AL, -67 
CMP SI, DI 
JNS .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RSI] 
CMOVNB DX, AX 
CMP EAX, -621414753 
CMOVNO EDX, EBX 
JNBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
SUB DL, DIL 
AND RDX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RDX] 
LEA CX, qword ptr [RBX + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
