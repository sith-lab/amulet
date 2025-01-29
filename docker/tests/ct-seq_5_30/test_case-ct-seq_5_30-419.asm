.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD AX, 16782 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], ESI 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], SIL 
JBE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], SIL 
ADC DL, DL 
MOVZX DX, DIL 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], -17 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], CX 
AND RSI, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RSI] 
CMOVLE EAX, EDI 
SUB RAX, 186046433 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RCX 
ADD DI, -25 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
ADD DIL, -13 # instrumentation
JLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], -16 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], DL 
OR DX, 0b1000000000000000 # instrumentation
BSR AX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], DL 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
SAHF  
ADC EDX, -1 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RDX] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
MOV RAX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
