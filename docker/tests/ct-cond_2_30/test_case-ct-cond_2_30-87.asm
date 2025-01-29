.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB BL, CL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
CMOVL ESI, ESI 
ADD CX, DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RBX 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
ADD RBX, RAX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RDX 
CMP CL, SIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL ESI, EDI 
AND RSI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RSI] 
ADD CX, -19 
MOVZX EAX, AL 
SUB RAX, 298739871 
XCHG ESI, EAX 
IMUL RCX 
AND RBX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], BX 
NEG BL 
MOV EBX, EDI 
DEC RDI 
CMOVO EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
