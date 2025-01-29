.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], BL 
IMUL RDI 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, ECX 
ADD SIL, -103 # instrumentation
CMOVBE RDX, RSI 
CMP SI, CX 
BSWAP EDI 
CMOVLE AX, DX 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
SUB DIL, 116 
AND RBX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RBX] 
SBB EAX, 648896973 
CMP DI, 52 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], 87 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MUL RCX 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], EDX 
CMOVBE DX, CX 
ADD SI, CX 
CMOVP RCX, RDX 
MOVSX DX, CL 
INC ESI 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
ADD DI, 5 
ADC RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
