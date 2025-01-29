.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RBX] 
IMUL EDX 
MOV RDI, 7104094913900478315 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
SBB SIL, SIL 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], 27 
ADD DIL, SIL 
CMC  
AND RBX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RBX] 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EBX 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -87 # instrumentation
SBB EAX, 1536038619 
CMOVS RDI, RBX 
CMOVB RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
SBB EDX, EDI 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], 47 
DEC CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RDX 
CMOVLE RAX, RAX 
CWD  
STC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
