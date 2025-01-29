.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], 24 
CMOVL RSI, RDX 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
ADC CL, -128 
DEC AL 
CMOVNL CX, AX 
ADD EDI, ESI 
CMOVNZ RSI, RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RDI] 
ADD AX, 3143 
AND RDX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RAX] 
SBB RDI, 1 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RCX] 
LEA EDI, qword ptr [RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RDI] 
MOVSX RBX, AL 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
CMOVNS RDX, RDX 
ADD DIL, DIL 
AND RBX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], AX 
CMOVNO AX, BX 
ADD AX, DX 
CLD  
ADC RAX, 1157666660 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], CL 
CMOVNP SI, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
