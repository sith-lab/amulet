.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RCX] 
XOR AX, 9339 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], AX 
CMPXCHG EDI, ECX 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
TEST DIL, DL 
CMOVNBE EDX, ESI 
XCHG DI, DI 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDX] 
DEC CL 
AND RDX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDX] 
CMOVNZ CX, BX 
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
MOVSX BX, DIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], CL 
AND RCX, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RCX] 
SETP CL 
XCHG RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RDX 
IMUL ESI 
MOVZX EDX, BL 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], DX 
XADD DIL, DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], SIL 
MOV BL, -32 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RBX] 
SUB SIL, -53 
CMP DIL, 4 
AND RDX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RDX] 
ADC EAX, -119 
SETNBE DL 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, 67 # instrumentation
CMOVBE RAX, RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], SI 
SUB EBX, -38 
AND DL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
