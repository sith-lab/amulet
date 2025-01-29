.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], 51 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RSI] 
CMOVL AX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
SUB EAX, -1383480454 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RCX 
MOVSX AX, DL 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], 44 
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
AND RDX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDX] 
DEC RDI 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], 43 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], ECX 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XCHG RDI, RAX 
CMP ECX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
