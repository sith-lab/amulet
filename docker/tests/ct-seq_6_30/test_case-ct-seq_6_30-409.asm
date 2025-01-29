.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -55 # instrumentation
CMOVS EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], ESI 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -46 # instrumentation
CMOVNB CX, DI 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RCX 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DL 
ADD RAX, -1751302576 
ADC CL, -59 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RSI 
ADD EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RDX 
SBB RAX, 308213658 
DEC RDI 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], AX 
AND RDI, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RDI] 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -118 # instrumentation
ADC CL, 31 
CMOVB DI, AX 
STD  
ADD AL, 92 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RDI 
JMP .bb_main.5 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
IMUL RDX, RDI, -82 
MUL EDX 
SBB BX, -58 
CMP AX, 25 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
