.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, ECX 
IMUL RAX 
MOV DX, AX 
INC BL 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], BL 
CMOVNBE DI, DI 
MOVZX EDX, SIL 
MUL BX 
DEC RDX 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDX] 
XCHG AX, AX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RDX] 
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EDI 
CMOVL BX, CX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
NEG CL 
CMOVS EBX, EDI 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], AL 
CMOVB RDI, RDI 
CMOVZ DX, DX 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], -36 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
IMUL RAX 
ADD SIL, -80 # instrumentation
CMOVNBE CX, DI 
MOVZX CX, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
