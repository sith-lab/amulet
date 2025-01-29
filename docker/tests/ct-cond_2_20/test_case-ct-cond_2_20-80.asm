.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RSI] 
IMUL BX, AX, 98 
LEA RDI, qword ptr [RCX + RSI + 3856] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RDI] 
ADD EAX, -884800551 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RDX] 
ADD DIL, -64 # instrumentation
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
