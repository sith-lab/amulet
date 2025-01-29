.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 41 # instrumentation
ADC BX, CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DIL 
SAHF  
ADD AL, -26 
XADD AL, BL 
CMP RAX, -1992348999 
SAHF  
TEST CL, 18 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], AL 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DL 
AND RDI, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RDI] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV BX, SI 
CMP SI, DX 
SUB BL, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], EBX 
DEC DL 
CMOVNP CX, SI 
ADC BX, -59 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], DIL 
MOVSX AX, AL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], AL 
MOV SI, DX 
TEST BX, 17056 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], -98 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], CL 
CMOVP EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], 50 
CMP RAX, RDI 
SETNL DL 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDX] 
CMOVNBE ECX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], 79 
AND RBX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RBX] 
ADD ESI, -59 
OR RAX, -635740648 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], -34 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
