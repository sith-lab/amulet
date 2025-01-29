.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], 91 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], 42 
ADC RCX, 84 
SUB RDI, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], 68 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RBX], 88 
AND RBX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RBX] 
ADD RAX, -275947572 
AND RAX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], EDI 
CMOVO ECX, EDI 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RCX 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], 56 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
CMP RAX, 527628400 
SBB BL, -29 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], AX 
MOVSX SI, AL 
ADD AL, -54 
CMOVBE SI, BX 
AND RBX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], BL 
MOVSX ESI, BX 
OR AX, 0b1000000000000000 # instrumentation
BSR SI, AX 
ADD DIL, -54 # instrumentation
CMOVL RDX, RSI 
MOVZX EBX, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
