.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -116 # instrumentation
CMOVL ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RDI 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RSI] 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP CL, BL 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], -80 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], 46 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -18 # instrumentation
CMOVLE EDX, EDI 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RDX] 
NEG RDX 
SUB CX, AX 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], AX 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], ECX 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
INC RDX 
CWDE  
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], -43 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
