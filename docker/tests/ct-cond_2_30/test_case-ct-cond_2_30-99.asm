.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
ADC RBX, -123 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], 25 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RAX 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RBX] 
SBB AL, DIL 
AND RDI, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RCX] 
MOV BL, DL 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RDI] 
IMUL BL 
SBB AL, -20 
MOVZX RSI, DX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
CMP AL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RAX] 
NEG BX 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EDI 
SBB RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], -120 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], BL 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DIL 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], 123 
AND RCX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RCX] 
CMOVNP ECX, ECX 
AND RBX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
