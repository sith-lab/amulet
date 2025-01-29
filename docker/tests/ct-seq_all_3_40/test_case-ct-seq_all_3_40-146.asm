.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
MOVZX RCX, AL 
MOVZX DI, BL 
NOT EDX 
XADD DI, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RCX] 
CMOVNO RAX, RBX 
CMOVNO DX, DI 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], 9 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], DI 
NOT BX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
NOT SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RAX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 82 # instrumentation
MOVZX EDX, DI 
CMOVNB AX, SI 
OR RAX, -571593900 
SETB DL 
IMUL CX, BX, 113 
ADD SIL, 58 # instrumentation
MOV CL, 72 
CMOVS EDI, ESI 
SETBE AL 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], 123 
NEG RDI 
CMOVS EDI, EDI 
AND RSI, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RSI] 
MOV DL, -122 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RBX] 
SETNBE CL 
AND AL, 42 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
MOV RCX, -3306767791077531791 
OR DX, 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
OR BL, BL 
SUB RBX, 38 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
