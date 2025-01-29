.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP AL, -70 
MOVZX RDI, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RCX] 
CMOVB RBX, RCX 
AND RAX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], 36 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], -1726119823 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], ECX 
IMUL EAX, EBX, 14 
ADC DL, 23 
AND RBX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RBX], RSI 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD EDX, EBX 
NEG RSI 
XCHG DX, DX 
IMUL RSI, RAX, -70 
NOT EBX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RCX] 
MOVSX RCX, DI 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RCX] 
AND EDI, 6 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RAX] 
AND DX, SI 
ADC AX, DI 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], -28 
ADC DIL, 76 
CWDE  
XOR AX, 4063 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RBX], ESI 
SETZ SIL 
OR RDX, -91 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RDI] 
XOR RDI, RAX 
IMUL EBX, EBX, -22 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RSI] 
SUB RAX, 388049116 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
