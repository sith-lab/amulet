.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RBX] 
ADD EAX, 329164600 
MOVZX CX, AL 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
DEC RCX 
MOV EDI, -1146907647 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -46 
CMP DX, -32 
CMOVNP ECX, ESI 
MOVSX RDX, AL 
MOVSX ECX, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], BL 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], ECX 
CMOVLE CX, CX 
JRCXZ .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
MUL ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RCX 
CMOVBE RAX, RDI 
INC DX 
IMUL ECX 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RAX 
ADD AL, -43 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], -78 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RBX] 
JNL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EBX 
CMOVO CX, BX 
CMOVNB RDI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
