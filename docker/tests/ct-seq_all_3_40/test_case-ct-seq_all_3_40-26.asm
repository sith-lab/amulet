.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], -84 
CWD  
SUB BX, DI 
XCHG BL, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RSI] 
ADD AX, 18867 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
AND RDI, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RDI] 
TEST EDI, 1688631342 
MOV EDX, 464536221 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], SI 
OR EBX, -73 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 67 # instrumentation
CMOVNL AX, AX 
OR DL, 1 # instrumentation
MOVSX DI, CL 
CMP DX, DI 
XOR DIL, -92 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RSI], ECX 
AND RCX, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RCX] 
CMOVZ EDI, EDI 
CMOVP BX, DI 
MOVZX SI, BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], 43 
ADC EDI, -27 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], -1394452476 
XCHG RDX, RAX 
SETNO DL 
SETO DL 
CMPXCHG CL, DL 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], 68 
TEST RBX, -1647475824 
SUB AX, 2440 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
