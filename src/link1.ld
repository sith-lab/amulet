/* 
    Linker script inspired by nanobench layout
*/

OUTPUT_FORMAT("elf64-x86-64", "elf64-x86-64",
	      "elf64-x86-64")
OUTPUT_ARCH(i386:x86-64)
ENTRY(_start)
SEARCH_DIR("=/usr/local/lib/x86_64-linux-gnu"); SEARCH_DIR("=/lib/x86_64-linux-gnu"); SEARCH_DIR("=/usr/lib/x86_64-linux-gnu"); SEARCH_DIR("=/usr/lib/x86_64-linux-gnu64"); SEARCH_DIR("=/usr/local/lib64"); SEARCH_DIR("=/lib64"); SEARCH_DIR("=/usr/lib64"); SEARCH_DIR("=/usr/local/lib"); SEARCH_DIR("=/lib"); SEARCH_DIR("=/usr/lib"); SEARCH_DIR("=/usr/x86_64-linux-gnu/lib64"); SEARCH_DIR("=/usr/x86_64-linux-gnu/lib");


WORKING_MEMORY_SIZE = 0x10000000; /* 256MB */
MAIN_REGION_SIZE = 0x1000;
FAULTY_REGION_SIZE = 0x1000;
OVERFLOW_REGION_SIZE = 0x1000;

MEMORY{
    code    :   ORIGIN = 0x401000, LENGTH = 1M 
    working_region :   ORIGIN = 0x502000, LENGTH = 256M 
    /* stack   :   ORIGIN = 0x700000, LENGTH = 1M */
}

SECTIONS{
    /* PROVIDE (__executable_start = SEGMENT_START("text-segment", 0x0000)); . = SEGMENT_START("text-segment", 0x0000) + SIZEOF_HEADERS; */
    
    __sandbox_base = ORIGIN(working_region) + (WORKING_MEMORY_SIZE / 2);
    __main_region = __sandbox_base + OVERFLOW_REGION_SIZE;
    __faulty_region = __main_region + MAIN_REGION_SIZE;
    __upper_overflow = __faulty_region + FAULTY_REGION_SIZE;
    __stacktop = __main_region + MAIN_REGION_SIZE - 8;
    .text   :
    {
        /* . = ALIGN(4096); */
        *(.text)
        /* . = ALIGN(4096); */
    } > code

    .init1 :
    {
        _szero = ORIGIN(working_region);
        _ezero = __main_region - 1;
    } > working_region


    .data  __main_region : 
    {
         _sdata = .;
        *(.data)
        _edata = .;
    } > working_region 
   
    .init2 __upper_overflow :
    {
        _szero = __upper_overflow ;
        _ezero = __sandbox_base - 1 ;
    } > working_region

    
    /DISCARD/ :
    {
        *(.note.gnu.property)
    }

}
