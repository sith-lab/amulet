.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], 45 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
ADD AL, 1 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], DIL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
XCHG BX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RAX] 
CMOVNO EBX, ECX 
CMOVBE BX, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RDI 
AND RCX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RCX], -80 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], -120 
CMOVO ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RDI] 
ADC EAX, -12832731 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], DIL 
ADD RAX, 1270553281 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], CL 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
CMP EDI, EBX 
IMUL RDX 
AND RAX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RAX] 
SUB EDX, -47 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RCX 
AND RCX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RCX] 
IMUL RDI, RBX, -6 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], -95 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
