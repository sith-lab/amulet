.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 84 # instrumentation
CMOVNZ RBX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RBX] 
XCHG DI, AX 
SETL DL 
MOVZX RAX, AL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], 658192346 
XOR DI, SI 
ADC CX, DI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RSI] 
SUB EAX, 2074933493 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RBX], SI 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], DI 
AND RDX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], 63 
ADC DX, DI 
DEC CL 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], 1027125505 
TEST AL, -11 
AND RAX, -100 
AND RSI, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RSI], RDI 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EDX 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], DL 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -68 # instrumentation
CMOVS EAX, ECX 
OR AL, 49 
CMPXCHG BX, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RAX] 
ADD EDI, ESI 
SETNLE CL 
ADD AX, -16908 
NEG EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], DX 
CMOVL EDX, EBX 
MOV CL, -42 
XOR DL, -87 
AND RAX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
