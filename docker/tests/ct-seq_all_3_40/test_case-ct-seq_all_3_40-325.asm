.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP EDX, ESI 
OR AL, -57 
MOVZX DI, AL 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], 20 
ADD AL, BL 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 27 
MOV DL, BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], 7 
MOVZX AX, BL 
AND RDX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDX] 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RBX], -29 
CMP ECX, EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RCX], -82 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RSI], BX 
CBW  
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], -103 
NOT DX 
SETNZ DIL 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RSI 
SUB DI, 63 
ADC BL, DIL 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], 89 
SETS DL 
XOR DIL, -74 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], ESI 
SETP DL 
INC RCX 
ADC BL, -17 
XADD RSI, RSI 
MOVZX ECX, SI 
CMP EDI, -86 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RCX], SIL 
XOR EAX, -1873609117 
SUB EAX, EAX 
XCHG AL, BL 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], 98 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
