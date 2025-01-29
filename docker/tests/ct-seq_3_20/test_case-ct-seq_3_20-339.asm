.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RBX] 
OR CX, 0b1000000000000000 # instrumentation
BSR SI, CX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 1 # instrumentation
AND DX, word ptr [R14 + RDI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RDI] 
DEC DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], BX 
CMOVNZ EAX, EDI 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -76 
AND RAX, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], AL 
IMUL EDI, EDI 
ADD SIL, 125 # instrumentation
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], CL 
LEA EDX, qword ptr [RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RBX 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
