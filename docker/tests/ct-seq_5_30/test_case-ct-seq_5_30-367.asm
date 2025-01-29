.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 6 # instrumentation
CMOVZ SI, AX 
NEG CL 
AND RBX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RBX] 
CMOVNZ EAX, EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], -125 
LAHF  
CMOVBE AX, DX 
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
MOVZX DI, DIL 
SUB AL, -8 
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -113 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], ECX 
AND RDI, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], ECX 
MOV RSI, 1135055448813638625 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -96 # instrumentation
ADC EAX, -1289089734 
CMP BL, -60 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RSI 
AND RBX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
CBW  
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
