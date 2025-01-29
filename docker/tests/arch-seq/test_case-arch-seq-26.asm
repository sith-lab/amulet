.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], -51 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
CMPXCHG DX, SI 
MOV RDX, -3480889984242300331 
JL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], 64 
MUL AL 
ADD CL, 110 
XOR RAX, 1431574969 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RAX], AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RAX] 
SUB AL, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], RBX 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
XCHG AX, SI 
MUL EDI 
AND RDX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RDX] 
SUB CX, 106 
ADD RAX, 737837834 
SETNL AL 
ADD ECX, -21 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RSI] 
ADD ESI, -95 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
MOVZX EDI, DL 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ESI 
CMOVNS RDI, RDX 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 70 # instrumentation
SETNB CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], -124 
CMOVLE RCX, RBX 
CMOVNBE RAX, RSI 
MUL AL 
AND RDX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], DL 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RCX] 
CMOVZ RBX, RAX 
CMOVNB RCX, RSI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
