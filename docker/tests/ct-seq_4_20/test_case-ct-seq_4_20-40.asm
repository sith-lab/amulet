.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 111 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DL 
ADC AL, -113 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RDX] 
ADD DIL, 30 # instrumentation
SBB BX, -116 
AND RAX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RAX] 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
IMUL EDX, EAX 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOV RDI, RDI 
AND RDX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RBX 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -119 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DIL 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], 358601269 
ADC ESI, ECX 
CMOVNBE RCX, RDX 
CMOVNS EBX, ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], 95 
AND RAX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
