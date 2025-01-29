.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EDI 
SUB BL, CL 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], BL 
MOVSX ESI, CX 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], -52 
JP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
IMUL BX, CX 
DEC EDI 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DL 
CMOVNO RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 127 # instrumentation
CMOVS ESI, EDI 
CMP RBX, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RDI] 
CMOVNL RAX, RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], BL 
SUB CL, CL 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], DX 
MOV DX, -19583 
JS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
CMOVL EAX, EDX 
BSWAP RDX 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 100 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
