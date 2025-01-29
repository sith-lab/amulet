.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RCX] 
ADC RDX, -104 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RDI] 
MOV SIL, -30 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RCX] 
ADD DIL, -98 # instrumentation
CMOVP RCX, RAX 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], AL 
IMUL RBX, RBX, 20 
ADD SIL, -68 # instrumentation
CMOVNBE DX, SI 
CMOVNO EBX, EBX 
CMOVB RDX, RBX 
CMOVO CX, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], -17 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RDI] 
CMOVZ RCX, RCX 
CMOVBE BX, AX 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 60 # instrumentation
CMOVNP EBX, ESI 
AND RSI, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], BX 
CMOVNZ RBX, RSI 
CMOVNL RAX, RSI 
NEG EBX 
AND RSI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RSI] 
JNO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD RDI, RAX 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -28 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
