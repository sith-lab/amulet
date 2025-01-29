.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DX, 0b1000000000000000 # instrumentation
BSR AX, DX 
CMP AX, BX 
SUB SIL, 62 
ADC EAX, -905829104 
CMOVB EDX, EBX 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], AL 
JP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD DIL, -96 # instrumentation
CMOVP RBX, RBX 
MOVSX DX, DIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RDX] 
CWD  
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -73 
JMP .bb_main.2 
.bb_main.2:
MOV BL, -17 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], ESI 
SBB CL, DL 
AND RCX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RCX] 
CMP CX, 54 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], -102 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RAX] 
JNO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, 104 # instrumentation
CMOVO ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
MOVZX RDI, BL 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -46 # instrumentation
ADC RAX, 1941529386 
SBB SIL, -95 
ADD DIL, -3 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RSI] 
JMP .bb_main.5 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], 28 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
