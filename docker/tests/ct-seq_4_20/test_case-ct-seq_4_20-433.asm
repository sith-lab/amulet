.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG DL, AL 
IMUL BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 120 # instrumentation
CMOVNL EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RAX] 
INC AX 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], EDI 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], -83 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
ADC DI, 67 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], 60 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RDX 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EDI 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RDI] 
XCHG CL, DL 
AND RBX, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
