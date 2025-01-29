.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 47 # instrumentation
CMOVP DI, AX 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], SIL 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], 34 
TEST EAX, -1626262423 
ADD AX, -9961 
SETP CL 
AND RDX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDX], EDX 
XOR BX, -91 
MUL CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], -17 
SETNB AL 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DL 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 127 # instrumentation
MOVSX AX, DL 
MOVSX EAX, AX 
CMOVNZ RCX, RCX 
IMUL BL 
CMOVNO EAX, EBX 
CMOVO RCX, RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DIL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RBX] 
ADD EDX, EDX 
IMUL RDX, RAX, 81 
XADD CL, CL 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], -99 
AND RDX, 0b1111111111111 # instrumentation
AND RSI, qword ptr [R14 + RDX] 
SUB RAX, -1586329873 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RBX] 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], CL 
DEC SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EBX 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
MOV BX, DX 
CBW  
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
CDQ  
XOR EAX, -99 
AND RCX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RCX], 82 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
