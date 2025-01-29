.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -40 # instrumentation
MOV BL, CL 
CMOVP RDX, RDI 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], -109 
AND RCX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RCX] 
SBB RAX, -1097496971 
SBB ESI, EDX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], CX 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
SUB RCX, 106 
SBB ECX, 0 
AND RCX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], CL 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], 29 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], AX 
ADD EAX, -1891960194 
CLD  
CMOVNL RCX, RBX 
SUB AL, CL 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RBX] 
ADD AX, -28146 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], -30 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RSI] 
CMOVNS CX, DI 
ADD AL, -87 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], 68 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
