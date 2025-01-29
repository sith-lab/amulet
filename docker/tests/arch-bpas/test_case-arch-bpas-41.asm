.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], -86 
AND RBX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDI], DIL 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], 10 
CMOVNO RDX, RBX 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
ADC RAX, 852827052 
ADC EDI, 122 
SETNZ CL 
CMOVO EDI, EAX 
CMOVP RCX, RDI 
AND RDX, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
CMP RAX, -470588625 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RBX] 
OR BX, CX 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
NEG CX 
SETBE DIL 
MOV AL, 53 
CMOVNLE EDI, EAX 
SETB DIL 
LOOP .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EDX 
AND RAX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RAX] 
MOVZX BX, CL 
ADC EDI, 56 
ADC EDI, -57 
JMP .bb_main.5 
.bb_main.5:
MOVSX CX, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
XADD DL, CL 
MOV EAX, 274284484 
SUB RSI, RSI 
SETNO BL 
CMP RAX, 1383713770 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RCX], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
