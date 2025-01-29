.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], DL 
ADD EAX, -330537409 
AND RDI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RAX] 
ADD SIL, -84 # instrumentation
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RDI] 
MOVZX EDI, AL 
ADC RCX, 38 
ADD DI, 100 
ADD EAX, 2111491594 
AND RBX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RBX] 
CMOVNL SI, CX 
ADC DX, CX 
JP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], AL 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], 61 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
LOOPE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
IMUL BL 
ADD DIL, -36 # instrumentation
MOVZX RSI, AX 
CMOVL DX, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RCX] 
CLD  
SBB EDI, -12 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 19 # instrumentation
CMOVNP EDX, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RBX] 
CMP AX, DI 
ADC EAX, -2123168742 
CMOVNS ECX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
