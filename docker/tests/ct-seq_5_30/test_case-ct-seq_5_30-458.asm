.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX AX, DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], BL 
AND RAX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RAX] 
CMOVO EDI, EDI 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
MOVSX EDI, AL 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], ESI 
ADD RAX, -225701618 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], -101 
JB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CMP BL, 86 
IMUL CL 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -78 
NEG AL 
ADD AX, 31506 
CMOVNZ RBX, RCX 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], 55 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -77 # instrumentation
CMOVS ESI, EDX 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], SIL 
IMUL AL 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 85 # instrumentation
CMOVO DX, AX 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], -92 
AND RDI, 0b1111111111111 # instrumentation
SUB ESI, dword ptr [R14 + RDI] 
CMOVZ ECX, ECX 
NEG RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -46 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
