.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -11 # instrumentation
CMOVNO RAX, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RCX] 
SUB AX, -17935 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], -54 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], AX 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 88 # instrumentation
SBB RBX, 119 
AND RAX, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RCX] 
ADC CL, 0 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], 120 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
ADD AX, -21577 
CMOVNP ESI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
