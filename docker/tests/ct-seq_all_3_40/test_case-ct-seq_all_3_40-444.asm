.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SAHF  
SETNBE DIL 
AND RSI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RAX], RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RBX] 
OR EAX, -118 
ADD RAX, 877200502 
CMOVB RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], CL 
XOR DI, -54 
AND RBX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], CX 
JMP .bb_main.1 
.bb_main.1:
NEG DI 
IMUL DX, SI, 53 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], AL 
XOR DL, -100 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDI] 
SETNL CL 
AND RDX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDX] 
TEST RDX, RCX 
NEG AX 
ADC DI, AX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RDX 
ADD CL, DL 
CMP ECX, 90 
SUB SI, AX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDX] 
IMUL EAX 
ADD DIL, -108 # instrumentation
CMOVNZ ECX, ESI 
DEC RCX 
AND RAX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RAX] 
CMP RAX, 504785753 
CMOVNB EDX, EBX 
OR SI, DX 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RSI 
CLC  
AND RBX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
