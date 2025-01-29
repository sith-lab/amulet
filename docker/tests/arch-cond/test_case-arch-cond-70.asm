.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RSI 
SUB DL, -91 
MOVZX BX, BL 
SETZ SIL 
LEA DX, qword ptr [RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RAX] 
CMP AL, AL 
CMOVS EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RCX 
CMOVNO RDX, RBX 
SUB EAX, -945611022 
AND RDI, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RDI] 
SETNZ AL 
XOR AL, DIL 
MOV DL, CL 
SBB CL, BL 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], AL 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RCX] 
SETB DL 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
SUB ECX, 107 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 45 
AND RBX, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], -126 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RBX] 
AND SIL, CL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RSI] 
ADC EAX, -155178134 
XOR DIL, -22 
SBB AL, -103 
CWD  
CMPXCHG EDI, ECX 
MOV EDX, EBX 
ADD AL, AL 
XCHG CL, DL 
ADC RAX, 1290868683 
ADD RDI, 103 
CMOVL AX, BX 
MUL AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
