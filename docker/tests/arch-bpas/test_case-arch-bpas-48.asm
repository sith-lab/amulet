.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -56 # instrumentation
ADC ECX, EDX 
CMP CX, 106 
AND RDX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDX] 
CMOVB EDI, EBX 
CWD  
CMOVNL EDX, EBX 
IMUL RBX, RCX, 87 
SUB ESI, 49 
AND SIL, 123 
ADC SIL, -52 
CMOVNP EBX, EDI 
NOT SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], AX 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RCX] 
CMOVLE EBX, EBX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RBX] 
XOR AL, 60 
AND RDX, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RDX] 
JNL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
XCHG EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], 61 
SUB EAX, -959147458 
SBB DX, 111 
CMOVNB RDI, RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], 57 
MOVSX CX, DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], ESI 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 87 # instrumentation
CMOVB SI, DX 
MUL RDI 
ADD AL, -33 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
NOP  
AND RCX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RCX] 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDX], CX 
AND RAX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RDX] 
TEST EAX, 1703126538 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RSI] 
IMUL BL 
ADD AX, 21458 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
