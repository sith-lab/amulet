.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 98 # instrumentation
CMOVL EBX, EDI 
MOV RBX, RAX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RSI 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
ADD SIL, -6 # instrumentation
CMOVS RCX, RSI 
CLC  
AND RAX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RCX] 
ADC DL, BL 
CMOVZ DI, DX 
JMP .bb_main.1 
.bb_main.1:
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, ESI 
CMP CX, 28 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], -1280505928 
CMOVNLE AX, CX 
CMOVNZ ECX, ECX 
AND RCX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RCX], 4 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RSI] 
DEC DX 
SBB RAX, -955340805 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -47 # instrumentation
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], SIL 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 21 
ADC RSI, RDX 
DEC RSI 
CMP RAX, -1821624308 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RAX] 
MOVSX BX, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], BL 
NEG ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
