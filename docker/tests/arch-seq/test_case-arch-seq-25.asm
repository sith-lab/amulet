.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -123 # instrumentation
CMOVNO RCX, RCX 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RAX 
TEST AL, -77 
CMOVLE ESI, ECX 
MOV EDI, EBX 
ADC RAX, 90 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RAX] 
CMOVS CX, DI 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], 1562603638 
CMOVNO ESI, EAX 
INC CL 
AND DIL, BL 
SETO CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RSI] 
CMP CL, AL 
CMOVNZ RCX, RSI 
JNZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD SIL, 48 # instrumentation
LAHF  
AND RAX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RAX] 
XOR RAX, -1426004372 
ADC EAX, 1682587363 
IMUL RCX 
MOVSX RSI, BX 
DEC RAX 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], ECX 
AND RSI, 0b1111111111111 # instrumentation
AND RSI, qword ptr [R14 + RSI] 
MOV RAX, 2654532108396042412 
SBB DX, AX 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], -2047949964 
MOVSX EDX, DX 
SETL CL 
ADC DIL, -59 
CMP DL, 115 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], 119 
AND RDX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], DIL 
LEA ECX, qword ptr [RDX + RCX + 3407] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RSI] 
CMOVNS EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
