.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC DI 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RDX 
ADD SIL, -69 # instrumentation
CMOVB RDX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RDI] 
SBB CL, AL 
CMOVNBE DX, CX 
SBB RAX, 441559231 
CWD  
ADC RDI, 100 
ADD ESI, 126 
CMP SIL, -69 
AND RCX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RCX] 
CMOVNLE EAX, EDX 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG EAX, ESI 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EBX 
CMOVZ RBX, RDX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], CL 
XCHG EBX, EAX 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], ESI 
AND RDX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RDI 
CMOVNB DX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], -75 
CMOVO EBX, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RSI] 
MOVZX RSI, DIL 
SUB RCX, 16 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RDI] 
STC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
