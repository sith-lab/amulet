.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
CMP EAX, -619544402 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], -74 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], AL 
NEG BL 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RCX] 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RBX] 
SBB RBX, -92 
AND RAX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], -125 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], 45 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
