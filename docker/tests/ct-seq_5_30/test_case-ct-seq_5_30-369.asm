.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD CL, 67 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], -52 
ADD SIL, BL 
MOVZX EDI, CX 
JMP .bb_main.1 
.bb_main.1:
XCHG CL, DL 
DEC RCX 
CMOVL ESI, EDX 
CMP BX, SI 
CMOVNL DX, CX 
AND RBX, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RBX] 
CWD  
AND RDX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -62 # instrumentation
ADC EDX, EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RDX] 
SUB EDI, -8 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], -71 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
CMOVL EBX, EBX 
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, -104 # instrumentation
CMOVP CX, BX 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], 48 
STC  
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
ADD SIL, -19 # instrumentation
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RBX] 
CMOVP DI, AX 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
