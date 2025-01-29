.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG DL 
NEG ECX 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], 31 
SBB CX, -24 
SBB CL, CL 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
ADD AX, -3608 
JNO .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RDX] 
XCHG RDX, RAX 
AND RCX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], -85 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 98 # instrumentation
SBB EDX, ESI 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
NEG CL 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
IMUL RCX 
SBB RAX, 1449669005 
SUB BL, CL 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 44 # instrumentation
CMOVNBE BX, CX 
CMP BL, CL 
OR DL, 1 # instrumentation
INC DL 
AND RDI, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RAX] 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, 1 # instrumentation
CMOVNBE DI, SI 
IMUL RDX, RBX 
ADD SIL, 54 # instrumentation
CMOVNP DI, BX 
CMOVNP RBX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
