.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -34 # instrumentation
SBB RBX, -82 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
CMP RAX, 1223942989 
XOR AX, 3458 
AND RDI, 0b1111111111111 # instrumentation
AND SI, word ptr [R14 + RDI] 
CMOVZ EAX, ESI 
SUB RDX, 110 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], 27 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
SETNP CL 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], -34 
MOVSX RSI, DI 
LOOP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RBX] 
SUB SI, -93 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], ESI 
MOVZX DX, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDI], RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], ECX 
SETNS AL 
SUB CL, DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 102 
SUB CX, 62 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RDX] 
SBB DL, DL 
AND RBX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RBX] 
OR SIL, -40 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RDI 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
INC RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDI], DIL 
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], ESI 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], ECX 
IMUL AL 
AND RAX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RAX] 
ADD DI, 24 
MUL CL 
SUB CL, 6 
MOVSX RAX, AX 
CMOVLE ECX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
