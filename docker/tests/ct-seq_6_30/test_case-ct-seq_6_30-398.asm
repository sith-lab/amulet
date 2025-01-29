.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -56 # instrumentation
ADC SIL, 37 
ADC AL, -45 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RDI 
MOVSX CX, SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
ADD RAX, -2145076946 
AND RCX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RCX] 
SBB ESI, 27 
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, 116 # instrumentation
SBB SIL, AL 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RCX] 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], DX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RDI] 
JO .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD DIL, -103 # instrumentation
CMOVNZ EDI, EDX 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RCX] 
LEA RSI, qword ptr [RBX + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], CL 
ADC CX, DI 
CMOVB EDI, EBX 
INC DL 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DL 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDX] 
XCHG EDI, EAX 
IMUL RCX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
