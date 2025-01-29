.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RDI, -41 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], 74 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RSI 
JMP .bb_main.1 
.bb_main.1:
DEC CX 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RDX] 
SBB RBX, -53 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RBX] 
SUB RAX, 828905881 
CMOVNB DI, CX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RAX 
ADD SIL, 25 # instrumentation
CMOVP RDI, RSI 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], 84 
LOOPNE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], CL 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], DL 
JNS .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RDI] 
NEG SIL 
CMOVNZ RAX, RDI 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
SBB EAX, 1055425666 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RBX 
JMP .bb_main.5 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], 87 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], BL 
SBB EAX, -17805149 
CMP ECX, EDI 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], SIL 
MOVZX RAX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
