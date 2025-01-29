.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB ESI, -37 
AND RDI, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], ECX 
CMOVB RBX, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RCX] 
ADC DL, -19 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], -28 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RSI] 
XOR CL, SIL 
XOR AL, 73 
XCHG AL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RBX 
OR CX, 0b1000000000000000 # instrumentation
BSR DX, CX 
ADD DIL, -104 # instrumentation
SBB SIL, -49 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -118 # instrumentation
SETZ DL 
IMUL AX, SI 
IMUL RCX, RDI, -42 
OR DL, CL 
AND RCX, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RCX] 
SBB BL, AL 
MOVZX ESI, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], CL 
LEA RDX, qword ptr [RCX + RAX] 
SETNS SIL 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RAX 
AND RBX, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RSI] 
SBB DL, AL 
IMUL RSI 
SUB RDI, RDX 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RDI 
CMOVNZ EBX, EDI 
MOVZX RBX, DIL 
AND RCX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], CL 
SBB CL, -4 
ADC SI, SI 
XCHG SIL, CL 
CMP EAX, EAX 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], 114 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
