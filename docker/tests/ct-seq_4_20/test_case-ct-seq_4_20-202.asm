.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RDI, RDX, 27 
AND RAX, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RAX] 
MOV BX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], -29 
AND RBX, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RBX] 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
NEG CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DIL 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RDI] 
ADC EAX, -1937367245 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 40 # instrumentation
CMOVZ RCX, RDI 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], ESI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
