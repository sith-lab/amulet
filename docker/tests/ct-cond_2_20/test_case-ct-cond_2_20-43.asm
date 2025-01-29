.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], CL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], -11 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -111 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDI 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
SBB RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], -63 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], -68 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
