.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC RDX 
OR DL, DL 
ADD BL, DIL 
JP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], AL 
MOVZX AX, BL 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDI] 
ADD DIL, 121 # instrumentation
CMOVL EAX, EDX 
SETZ AL 
MOVZX CX, DL 
SETNLE DL 
IMUL SIL 
XOR EBX, -94 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 104 # instrumentation
CMOVNO RAX, RDX 
INC SI 
MUL ECX 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 107 
AND RSI, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], 35 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], -13 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RSI 
CMPXCHG ECX, ECX 
SETNZ CL 
SETNS DL 
CMPXCHG DX, DX 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
OR EAX, dword ptr [R14 + RCX] 
XOR EAX, ECX 
CMOVNBE EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], -48 
ADC EDX, 44 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RCX] 
IMUL BL 
ADD DIL, -96 # instrumentation
JL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD AL, 26 
CMOVP RBX, RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RCX, RAX 
MOVSX ESI, CX 
MOVZX RBX, SI 
MOV DL, DL 
AND RBX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RBX], 13 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
