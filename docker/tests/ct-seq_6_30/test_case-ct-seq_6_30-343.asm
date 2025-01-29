.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -115 # instrumentation
CMOVLE RDX, RDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], 72 
MOV DL, -17 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], -4 
JMP .bb_main.1 
.bb_main.1:
OR CX, 0b1000000000000000 # instrumentation
BSR DI, CX 
AND RDI, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -7738 
SUB BL, AL 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], CL 
XCHG RDI, RAX 
JMP .bb_main.2 
.bb_main.2:
CMP CX, DI 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 85 
IMUL BL 
AND RAX, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RAX] 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 47 # instrumentation
CMOVNBE RDX, RDX 
CMOVS EDI, EBX 
SUB RBX, RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
JNO .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], -92 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], BL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RCX] 
MOV DIL, BL 
CMOVBE RCX, RSI 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], EAX 
LOOPE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, -30 # instrumentation
CMOVO AX, AX 
MOVZX RAX, SIL 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], BL 
SBB AL, -44 
OR BX, 0b1000000000000000 # instrumentation
BSF AX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
