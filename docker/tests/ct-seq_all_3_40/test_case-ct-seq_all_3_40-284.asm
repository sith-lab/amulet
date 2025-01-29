.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD CL, DL 
SUB CL, DL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RSI] 
SAHF  
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 38 
ADD RAX, 63888528 
TEST RAX, 155995930 
AND RDI, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], 124 
XCHG EDX, EDX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], 42 
SETNZ BL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RDX] 
SETNZ SIL 
CMOVNP CX, SI 
CMOVB EDI, EDX 
AND RCX, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RCX] 
SETNZ DL 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], -100 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], AL 
CMOVNZ EAX, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDX], EDX 
CMOVNBE BX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
IMUL SI, DX, 109 
NEG RBX 
OR CX, -40 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], BL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
CMPXCHG EAX, EBX 
SBB DI, BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], BL 
SBB DL, 114 
AND RCX, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RCX] 
IMUL CX 
ADD SIL, 104 # instrumentation
SETS DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
