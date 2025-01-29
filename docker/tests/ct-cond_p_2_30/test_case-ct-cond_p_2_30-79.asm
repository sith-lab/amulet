.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], BL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
ADD RSI, 37 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RCX] 
SBB DL, AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], CL 
CMOVNS RCX, RSI 
CMOVNBE RBX, RSI 
CMOVB DI, SI 
IMUL EDI, ECX, 44 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
ADC DL, BL 
MOV ESI, -1468732124 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], CL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RDX] 
CMOVBE DI, SI 
SBB CL, -59 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], 93 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
