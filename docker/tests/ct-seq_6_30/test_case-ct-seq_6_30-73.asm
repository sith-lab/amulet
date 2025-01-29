.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RAX] 
CMOVNLE EAX, EDI 
AND RCX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RCX] 
MOVSX EDI, SI 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], 2110135094 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RBX 
SBB RAX, 2037854852 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -125 
AND RDX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RDX] 
JP .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
ADD SIL, -13 # instrumentation
MOVZX BX, BL 
BSWAP ECX 
MOVSX EBX, CX 
SBB EBX, ESI 
CMP BX, BX 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOV BL, CL 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -6025 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -25 # instrumentation
ADC DX, DX 
MOVZX EDX, CL 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], BX 
DEC AL 
ADD BX, CX 
IMUL CL 
CMP RAX, RAX 
ADD EAX, 884540438 
DEC EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RDI] 
JMP .bb_main.5 
.bb_main.5:
XCHG ESI, EAX 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
