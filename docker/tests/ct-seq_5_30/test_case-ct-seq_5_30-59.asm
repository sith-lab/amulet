.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RAX] 
MOVZX DX, CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RDI] 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
MOV EDX, 813889277 
MOV DL, AL 
AND RSI, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
DEC RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RBX] 
CMP CX, -36 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EDI 
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
IMUL RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], AX 
IMUL RAX, RDI 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RDI] 
CMOVNB EDX, ESI 
JNB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], SIL 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], CL 
XCHG CX, BX 
AND RDI, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], 90 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RAX 
ADD RAX, -1513845655 
CMOVBE ESI, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
CLD  
SBB RAX, 834231465 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
