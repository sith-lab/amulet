.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD EBX, -70 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
XCHG BX, DI 
CMOVNLE ESI, ECX 
AND RSI, 0b1111111111111 # instrumentation
AND RBX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, 126 # instrumentation
ADC CX, 88 
NOT RCX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDX], -11 
OR RCX, RCX 
ADC BX, DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], 83 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ESI 
OR BL, BL 
CMP DX, DI 
MUL DX 
ADD SIL, -116 # instrumentation
JNLE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
XOR EAX, 41069479 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RDI] 
AND EDX, EDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], -90 
MOV RAX, -5237778028878852156 
ADC ECX, 2 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], 86 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
ADD SIL, 55 # instrumentation
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -18 # instrumentation
CMOVNL AX, DX 
MOVZX DX, AL 
AND RAX, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RDX] 
LOOPNE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], AL 
SUB RAX, 84 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -43 
XOR EDX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
