.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], ESI 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], 105 
CMP EAX, 6711858 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
XOR EBX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, -1150276264 
OR EAX, -1541435102 
TEST EAX, -330530883 
AND RBX, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], DX 
MOV AX, 10991 
SUB RBX, -65 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -43 # instrumentation
SBB RAX, RBX 
AND RDX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RDX] 
MOVZX CX, AL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RDI], RCX 
SBB EAX, -2108681393 
XOR AL, -31 
XCHG AL, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RDX] 
XOR EAX, -592065664 
OR SI, 0b1000000000000000 # instrumentation
BSR AX, SI 
OR CL, DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RBX] 
SETL AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RSI 
SETZ AL 
ADD AL, -77 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
SETB BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
