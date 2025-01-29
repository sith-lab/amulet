.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], -31 
DEC BL 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RSI] 
CMP RAX, 1255281677 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], -70 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -75 
IMUL EDX, ECX, -8 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RDI 
CMOVS RAX, RSI 
XCHG AL, AL 
CMOVNP ECX, EDI 
CMP SI, 52 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], BL 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
CMOVNZ RSI, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDI] 
CMOVNB BX, DX 
CMOVNO EDX, EDI 
MOV RDX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
