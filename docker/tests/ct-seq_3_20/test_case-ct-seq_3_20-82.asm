.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], AX 
MOVZX RAX, SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], 117 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], -99 
ADC AX, -5421 
XCHG CL, DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EAX 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], ESI 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], ESI 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], -107 
CMOVZ BX, SI 
ADC DIL, 82 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RDX] 
CMP ESI, ESI 
AND RSI, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RSI] 
ADD DX, DX 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], AL 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
