.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DI, SI 
CMOVO ECX, EDI 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], 53 
DEC RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], 65 
CMOVBE DX, CX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RAX] 
JB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
ADD SIL, 68 # instrumentation
CWDE  
MOVSX SI, DL 
CMOVB EBX, EBX 
AND RCX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], AL 
MOV BX, 688 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], ECX 
ADD AL, 126 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RDX] 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 122 # instrumentation
CMOVNB BX, SI 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], -120 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RDX] 
ADC RAX, 662969885 
ADD EDI, -96 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
SUB EAX, -1819621562 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], 55 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
