.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], AL 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], 21 
AND RDX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDX] 
CMP AX, 13025 
CMP CL, BL 
SUB RAX, 104 
XCHG SIL, DL 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RCX], -109 
AND RDX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RCX], 75 
NEG CL 
AND RSI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RSI], SIL 
JL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
IMUL SI, SI, 114 
AND BL, BL 
TEST EAX, -481268487 
CMOVO DX, BX 
AND RDI, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDI] 
SETNB SIL 
XADD SIL, DIL 
SETBE DL 
NOT SI 
MOVZX EBX, AL 
JMP .bb_main.3 
.bb_main.3:
SUB AL, 78 
ADC AX, 32002 
CMOVZ EBX, ESI 
MOVSX SI, DIL 
CMP ECX, 76 
JP .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], -27 
XCHG ECX, EBX 
CMOVNBE RAX, RAX 
NOT RDX 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], RSI 
JLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RCX] 
STD  
OR AX, 0b1000000000000000 # instrumentation
BSR AX, AX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
