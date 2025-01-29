.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
SETB AL 
LEA RDX, qword ptr [RBX] 
IMUL EBX, EDI 
MOVSX RCX, BL 
CMOVB EDI, EBX 
CMOVO CX, DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RDX] 
TEST BL, -122 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RCX], CL 
CMP CL, BL 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RDI] 
ADD SIL, 109 # instrumentation
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], DL 
AND RDI, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
OR RDI, qword ptr [R14 + RSI] 
SETO DL 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], -37 
XCHG RDI, RAX 
MOVZX RDX, CX 
SBB EBX, 109 
CMOVLE ESI, EDI 
SETBE AL 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], 59 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], BL 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
INC RSI 
NEG CL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
OR AX, -15 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RCX] 
MOV DI, -2827 
CMP RAX, 2072542952 
CMOVNP RDX, RDX 
CMOVNS SI, CX 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RDI] 
ADD SIL, 115 # instrumentation
CMOVLE EDI, ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], SI 
ADD CX, BX 
MOV CL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
