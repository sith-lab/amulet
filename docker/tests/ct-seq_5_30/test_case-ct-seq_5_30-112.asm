.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EAX 
XCHG RCX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -95 
CMOVNL ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], CL 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], DI 
ADC CL, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], 110 
JBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
SUB RAX, -1626656475 
AND RDX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
CMP DX, CX 
MOVZX ESI, AX 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], BX 
LOOP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, -84 # instrumentation
SBB RDX, 70 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RSI 
MUL BX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], AL 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
MOVSX RBX, DX 
JMP .bb_main.4 
.bb_main.4:
CMP DI, DI 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EDI 
CMOVNL RAX, RDX 
AND RCX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RCX] 
ADC AL, CL 
AND RDX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RDX] 
BSWAP RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
