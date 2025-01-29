.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 101 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RSI] 
XCHG AX, AX 
ADD ECX, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], -56 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
IMUL ESI 
OR EAX, 2014699170 
IMUL CX 
ADD DIL, -92 # instrumentation
CMOVNP RAX, RSI 
SETBE DL 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], 2 
JMP .bb_main.1 
.bb_main.1:
XOR BX, 87 
OR SIL, DIL 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], 105 
AND RAX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RAX] 
XOR AL, CL 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], CL 
XOR AX, AX 
SETZ CL 
SUB RDX, -87 
XADD AL, AL 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
ADD DIL, 95 # instrumentation
CMOVL EBX, EDX 
SBB AX, -16773 
CMOVNP EDI, EAX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RAX] 
CMOVNBE ESI, EAX 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
AND RAX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RDI] 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
CMP BX, -85 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RCX] 
SETNBE AL 
OR DX, DX 
LEA RDI, qword ptr [RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
