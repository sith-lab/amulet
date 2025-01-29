.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], DX 
XOR DI, BX 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RAX] 
ADD SIL, 69 # instrumentation
CMOVNBE EDI, EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EAX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -3 
ADD DL, CL 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD RSI, -51 
OR AL, -7 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], DL 
XOR EDI, 82 
AND RCX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RCX] 
SUB AL, -80 
CMOVP ESI, EDI 
LOOP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], 68 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 39 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], 58 
SUB DL, -9 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], 28 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], -54 
JNL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, 0 # instrumentation
ADC RCX, RDI 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], DX 
ADC RAX, -472794824 
SBB CL, AL 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], -125 
OR BL, -77 
AND RAX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RAX] 
MOVZX RBX, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RAX] 
OR RCX, -41 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RDI] 
JMP .bb_main.5 
.bb_main.5:
OR BX, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RBX] 
MOV DIL, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
