.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], BL 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XCHG SIL, DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
ADD RAX, 671093863 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RDI] 
CMP DX, -106 
CMP BX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], ECX 
AND RAX, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EDI 
AND RBX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RBX] 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RBX] 
MOVZX RSI, DX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
CMOVNL RCX, RBX 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], 61 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
