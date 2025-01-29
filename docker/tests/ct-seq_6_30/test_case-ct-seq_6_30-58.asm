.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -82 # instrumentation
ADC DIL, 62 
SBB ECX, -92 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], ECX 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], 117 
XCHG DL, BL 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
CDQ  
ADC DL, BL 
JMP .bb_main.2 
.bb_main.2:
INC EAX 
CMOVZ RBX, RDI 
IMUL CX, CX, 43 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RBX] 
MOVSX DX, BL 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -125 # instrumentation
ADC EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RBX 
INC RDX 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
MOVSX EDX, BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], SIL 
INC RDX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], AL 
AND RDX, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RDX] 
JP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
ADD BX, 40 
CMOVNB ECX, EAX 
ADD RAX, -1710617232 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
