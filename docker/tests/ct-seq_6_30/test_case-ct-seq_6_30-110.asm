.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], DL 
AND RDX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RAX] 
ADC BL, DIL 
JNZ .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EDI 
OR AX, 0b1000000000000000 # instrumentation
BSF AX, AX 
ADD DIL, -101 # instrumentation
MOVSX DI, BL 
CMOVNO RAX, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], -61 
CMOVNLE RCX, RDX 
ADC AL, CL 
JNP .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
ADD DIL, 105 # instrumentation
CMOVB AX, BX 
CMP AX, 24970 
AND RBX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RBX] 
CMOVNLE RAX, RAX 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
SBB CL, AL 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 28 # instrumentation
CMOVLE EDX, EDX 
ADD BL, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], DIL 
CMOVNZ EAX, EDX 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 44 # instrumentation
LEA EDX, qword ptr [RBX + RBX] 
CMOVL CX, DX 
CMOVNS EDI, EDX 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RCX] 
JMP .bb_main.5 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RCX] 
XCHG RAX, RAX 
AND RAX, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
