.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -79 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
CMOVS AX, CX 
AND RDX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], -53 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
ADD DIL, -67 # instrumentation
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOV DL, CL 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RDI] 
XCHG ESI, ECX 
ADC DIL, AL 
JZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RAX 
ADC RAX, -482023138 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
MOVZX ESI, BL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -10 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
SUB RAX, 2025530394 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
CMOVNP RDX, RCX 
AND RCX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -98 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RDX] 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], BL 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -62 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
