.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG EDI 
AND RDX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
SUB DX, 86 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], CL 
CMOVLE DI, AX 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], AL 
ADD CL, 82 
CMOVNLE EBX, EDX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], BX 
XCHG ECX, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], -55 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RCX] 
MOVZX EDI, SI 
MOVSX RBX, DI 
ADD RCX, RBX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -46 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], 58 
AND RCX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RAX] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RDX 
DEC EDX 
CMP AL, -51 
MOV DL, DL 
CMOVP RBX, RDI 
STD  
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
