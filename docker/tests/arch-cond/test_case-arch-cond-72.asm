.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -31 # instrumentation
ADC SIL, -35 
CMOVB BX, SI 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RDX] 
TEST RAX, RAX 
CMOVP AX, BX 
SBB BL, AL 
CMOVNL AX, DX 
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
SUB RCX, -92 
ADD AX, -18400 
AND RAX, 616532477 
XCHG CL, SIL 
SETB AL 
XOR BX, DX 
JMP .bb_main.2 
.bb_main.2:
INC BL 
MOV DI, 4409 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDX] 
OR EAX, 1043995708 
SBB AX, DI 
XOR SI, 1 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -117 # instrumentation
SETL DL 
CMOVNB RDX, RCX 
CMOVP EAX, EDX 
SUB BL, 76 
CBW  
AND RDX, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RDX] 
IMUL RBX, RSI 
XCHG RSI, RAX 
SUB RSI, RDI 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], EDX 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RDI 
XCHG AL, DL 
SETB BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], CL 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDX 
ADD SIL, -107 # instrumentation
JNO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, 38 # instrumentation
CMOVNBE ESI, ECX 
OR CX, DX 
CMP RCX, 110 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
