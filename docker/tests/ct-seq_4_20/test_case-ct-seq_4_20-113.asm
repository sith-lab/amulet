.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], 122 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], -122 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], 123 
SUB CL, DL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
CMP EAX, 688621620 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
ADD DL, CL 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], 33 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], AL 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], -76 
CBW  
AND RAX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RDI] 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOV AL, 22 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DL 
AND RDX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
