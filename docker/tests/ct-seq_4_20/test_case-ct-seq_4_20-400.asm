.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], SIL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RDI] 
IMUL DI, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RSI] 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RCX] 
LEA DX, qword ptr [RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], DL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
DEC AL 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], AX 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], -121 
CMOVNS RAX, RSI 
MOV DI, BX 
AND RSI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
