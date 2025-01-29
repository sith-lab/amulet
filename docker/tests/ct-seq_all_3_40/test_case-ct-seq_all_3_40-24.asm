.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RSI], BX 
STC  
MOVSX AX, BL 
CMOVS DX, DI 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RSI 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], AL 
XOR AL, -29 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], -20 
SUB CL, 72 
CMOVO ESI, EBX 
MOVZX RCX, DIL 
AND ESI, EDI 
SETLE DIL 
CMP DX, SI 
CMOVNO RDX, RAX 
ADC BL, BL 
TEST RCX, -1941393605 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RAX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
ADD SIL, -65 # instrumentation
SETP AL 
STC  
SAHF  
SETNB BL 
CMOVNO ESI, ESI 
MUL DL 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
CMC  
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RDI 
SETNS DL 
CMOVL AX, SI 
CMOVS AX, DI 
XOR EDI, 47 
ADC RSI, -24 
OR SIL, -12 
XOR BL, SIL 
LEA EDX, qword ptr [RCX] 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], 12 
OR CL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
