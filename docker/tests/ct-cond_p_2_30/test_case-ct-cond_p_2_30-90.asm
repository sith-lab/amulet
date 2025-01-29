.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB DL, SIL 
CMOVL ESI, EBX 
SUB AX, 10404 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], -78 
ADD AL, 86 
ADD DI, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RDX] 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
MUL EBX 
MUL RCX 
IMUL CX, CX, -44 
MOVSX DX, DL 
AND RAX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
XCHG DL, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RSI] 
MOVSX RBX, DL 
MOV DL, BL 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], DI 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DL 
ADC SI, -117 
SUB RAX, 1039231533 
OR SI, 0b1000000000000000 # instrumentation
BSF SI, SI 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], AL 
MOVSX EDI, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
