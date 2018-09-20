# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\expat//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"




# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 6 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat_config.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2



# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat_external.h" 1
# 108 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat_external.h"

# 108 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat_external.h"
typedef char XML_Char;
typedef char XML_LChar;
# 121 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat_external.h"
typedef long XML_Index;
typedef unsigned long XML_Size;
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/internal.h" 1
# 89 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/internal.h"
void
align_limit_to_full_utf8_characters(const char * from, const char ** fromLimRef);
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/xmltok.h" 1
# 112 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/xmltok.h"
typedef struct position {

  XML_Size lineNumber;
  XML_Size columnNumber;
} POSITION;

typedef struct {
  const char *name;
  const char *valuePtr;
  const char *valueEnd;
  char normalized;
} ATTRIBUTE;

struct encoding;
typedef struct encoding ENCODING;

typedef int ( *SCANNER)(const ENCODING *,
                               const char *,
                               const char *,
                               const char **);

enum XML_Convert_Result {
  XML_CONVERT_COMPLETED = 0,
  XML_CONVERT_INPUT_INCOMPLETE = 1,
  XML_CONVERT_OUTPUT_EXHAUSTED = 2
};

struct encoding {
  SCANNER scanners[4];
  SCANNER literalScanners[2];
  int ( *sameName)(const ENCODING *,
                          const char *,
                          const char *);
  int ( *nameMatchesAscii)(const ENCODING *,
                                  const char *,
                                  const char *,
                                  const char *);
  int ( *nameLength)(const ENCODING *, const char *);
  const char *( *skipS)(const ENCODING *, const char *);
  int ( *getAtts)(const ENCODING *enc,
                         const char *ptr,
                         int attsMax,
                         ATTRIBUTE *atts);
  int ( *charRefNumber)(const ENCODING *enc, const char *ptr);
  int ( *predefinedEntityName)(const ENCODING *,
                                      const char *,
                                      const char *);
  void ( *updatePosition)(const ENCODING *,
                                 const char *ptr,
                                 const char *end,
                                 POSITION *);
  int ( *isPublicId)(const ENCODING *enc,
                            const char *ptr,
                            const char *end,
                            const char **badPtr);
  enum XML_Convert_Result ( *utf8Convert)(const ENCODING *enc,
                              const char **fromP,
                              const char *fromLim,
                              char **toP,
                              const char *toLim);
  enum XML_Convert_Result ( *utf16Convert)(const ENCODING *enc,
                               const char **fromP,
                               const char *fromLim,
                               unsigned short **toP,
                               const unsigned short *toLim);
  int minBytesPerChar;
  char isUtf8;
  char isUtf16;
};
# 267 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/xmltok.h"
typedef struct {
  ENCODING initEnc;
  const ENCODING **encPtr;
} INIT_ENCODING;

int XmlParseXmlDecl(int isGeneralTextEntity,
                    const ENCODING *enc,
                    const char *ptr,
                    const char *end,
                    const char **badPtr,
                    const char **versionPtr,
                    const char **versionEndPtr,
                    const char **encodingNamePtr,
                    const ENCODING **namedEncodingPtr,
                    int *standalonePtr);

int XmlInitEncoding(INIT_ENCODING *, const ENCODING **, const char *name);
const ENCODING *XmlGetUtf8InternalEncoding(void);
const ENCODING *XmlGetUtf16InternalEncoding(void);
int XmlUtf8Encode(int charNumber, char *buf);
int XmlUtf16Encode(int charNumber, unsigned short *buf);
int XmlSizeOfUnknownEncoding(void);


typedef int ( *CONVERTER) (void *userData, const char *p);

ENCODING *
XmlInitUnknownEncoding(void *mem,
                       int *table,
                       CONVERTER convert,
                       void *userData);

int XmlParseXmlDeclNS(int isGeneralTextEntity,
                      const ENCODING *enc,
                      const char *ptr,
                      const char *end,
                      const char **badPtr,
                      const char **versionPtr,
                      const char **versionEndPtr,
                      const char **encodingNamePtr,
                      const ENCODING **namedEncodingPtr,
                      int *standalonePtr);

int XmlInitEncodingNS(INIT_ENCODING *, const ENCODING **, const char *name);
const ENCODING *XmlGetUtf8InternalEncodingNS(void);
const ENCODING *XmlGetUtf16InternalEncodingNS(void);
ENCODING *
XmlInitUnknownEncodingNS(void *mem,
                         int *table,
                         CONVERTER convert,
                         void *userData);
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/nametab.h" 1
static const unsigned namingBitmap[] = {
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
0x00000000, 0x04000000, 0x87FFFFFE, 0x07FFFFFE,
0x00000000, 0x00000000, 0xFF7FFFFF, 0xFF7FFFFF,
0xFFFFFFFF, 0x7FF3FFFF, 0xFFFFFDFE, 0x7FFFFFFF,
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFE00F, 0xFC31FFFF,
0x00FFFFFF, 0x00000000, 0xFFFF0000, 0xFFFFFFFF,
0xFFFFFFFF, 0xF80001FF, 0x00000003, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0xFFFFD740, 0xFFFFFFFB, 0x547F7FFF, 0x000FFFFD,
0xFFFFDFFE, 0xFFFFFFFF, 0xDFFEFFFF, 0xFFFFFFFF,
0xFFFF0003, 0xFFFFFFFF, 0xFFFF199F, 0x033FCFFF,
0x00000000, 0xFFFE0000, 0x027FFFFF, 0xFFFFFFFE,
0x0000007F, 0x00000000, 0xFFFF0000, 0x000707FF,
0x00000000, 0x07FFFFFE, 0x000007FE, 0xFFFE0000,
0xFFFFFFFF, 0x7CFFFFFF, 0x002F7FFF, 0x00000060,
0xFFFFFFE0, 0x23FFFFFF, 0xFF000000, 0x00000003,
0xFFF99FE0, 0x03C5FDFF, 0xB0000000, 0x00030003,
0xFFF987E0, 0x036DFDFF, 0x5E000000, 0x001C0000,
0xFFFBAFE0, 0x23EDFDFF, 0x00000000, 0x00000001,
0xFFF99FE0, 0x23CDFDFF, 0xB0000000, 0x00000003,
0xD63DC7E0, 0x03BFC718, 0x00000000, 0x00000000,
0xFFFDDFE0, 0x03EFFDFF, 0x00000000, 0x00000003,
0xFFFDDFE0, 0x03EFFDFF, 0x40000000, 0x00000003,
0xFFFDDFE0, 0x03FFFDFF, 0x00000000, 0x00000003,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0xFFFFFFFE, 0x000D7FFF, 0x0000003F, 0x00000000,
0xFEF02596, 0x200D6CAE, 0x0000001F, 0x00000000,
0x00000000, 0x00000000, 0xFFFFFEFF, 0x000003FF,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0xFFFFFFFF, 0xFFFF003F, 0x007FFFFF,
0x0007DAED, 0x50000000, 0x82315001, 0x002C62AB,
0x40000000, 0xF580C900, 0x00000007, 0x02010800,
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
0x0FFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x03FFFFFF,
0x3F3FFFFF, 0xFFFFFFFF, 0xAAFF3F3F, 0x3FFFFFFF,
0xFFFFFFFF, 0x5FDFFFFF, 0x0FCF1FDC, 0x1FDC1FFF,
0x00000000, 0x00004C40, 0x00000000, 0x00000000,
0x00000007, 0x00000000, 0x00000000, 0x00000000,
0x00000080, 0x000003FE, 0xFFFFFFFE, 0xFFFFFFFF,
0x001FFFFF, 0xFFFFFFFE, 0xFFFFFFFF, 0x07FFFFFF,
0xFFFFFFE0, 0x00001FFF, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
0xFFFFFFFF, 0x0000003F, 0x00000000, 0x00000000,
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF,
0xFFFFFFFF, 0x0000000F, 0x00000000, 0x00000000,
0x00000000, 0x07FF6000, 0x87FFFFFE, 0x07FFFFFE,
0x00000000, 0x00800000, 0xFF7FFFFF, 0xFF7FFFFF,
0x00FFFFFF, 0x00000000, 0xFFFF0000, 0xFFFFFFFF,
0xFFFFFFFF, 0xF80001FF, 0x00030003, 0x00000000,
0xFFFFFFFF, 0xFFFFFFFF, 0x0000003F, 0x00000003,
0xFFFFD7C0, 0xFFFFFFFB, 0x547F7FFF, 0x000FFFFD,
0xFFFFDFFE, 0xFFFFFFFF, 0xDFFEFFFF, 0xFFFFFFFF,
0xFFFF007B, 0xFFFFFFFF, 0xFFFF199F, 0x033FCFFF,
0x00000000, 0xFFFE0000, 0x027FFFFF, 0xFFFFFFFE,
0xFFFE007F, 0xBBFFFFFB, 0xFFFF0016, 0x000707FF,
0x00000000, 0x07FFFFFE, 0x0007FFFF, 0xFFFF03FF,
0xFFFFFFFF, 0x7CFFFFFF, 0xFFEF7FFF, 0x03FF3DFF,
0xFFFFFFEE, 0xF3FFFFFF, 0xFF1E3FFF, 0x0000FFCF,
0xFFF99FEE, 0xD3C5FDFF, 0xB080399F, 0x0003FFCF,
0xFFF987E4, 0xD36DFDFF, 0x5E003987, 0x001FFFC0,
0xFFFBAFEE, 0xF3EDFDFF, 0x00003BBF, 0x0000FFC1,
0xFFF99FEE, 0xF3CDFDFF, 0xB0C0398F, 0x0000FFC3,
0xD63DC7EC, 0xC3BFC718, 0x00803DC7, 0x0000FF80,
0xFFFDDFEE, 0xC3EFFDFF, 0x00603DDF, 0x0000FFC3,
0xFFFDDFEC, 0xC3EFFDFF, 0x40603DDF, 0x0000FFC3,
0xFFFDDFEC, 0xC3FFFDFF, 0x00803DCF, 0x0000FFC3,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0xFFFFFFFE, 0x07FF7FFF, 0x03FF7FFF, 0x00000000,
0xFEF02596, 0x3BFF6CAE, 0x03FF3F5F, 0x00000000,
0x03000000, 0xC2A003FF, 0xFFFFFEFF, 0xFFFE03FF,
0xFEBF0FDF, 0x02FE3FFF, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x00000000, 0x00000000,
0x00000000, 0x00000000, 0x1FFF0000, 0x00000002,
0x000000A0, 0x003EFFFE, 0xFFFFFFFE, 0xFFFFFFFF,
0x661FFFFF, 0xFFFFFFFE, 0xFFFFFFFF, 0x77FFFFFF,
};
static const unsigned char nmstrtPages[] = {
0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x00,
0x00, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F,
0x10, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x13,
0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x15, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x17,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x18,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
static const unsigned char namePages[] = {
0x19, 0x03, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x00,
0x00, 0x1F, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25,
0x10, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x13,
0x26, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x27, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x17,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x18,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
# 25 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
# 124 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
static int
isNever(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *UNUSED_p __attribute__((__unused__)))
{
  return 0;
}

static int
utf8_isName2(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *p)
{
  return (namingBitmap[((namePages)[((((const unsigned char *)p)[0]) >> 2) & 7] << 3) + (((((const unsigned char *)p)[0]) & 3) << 1) + (((((const unsigned char *)p)[1]) >> 5) & 1)] & (1u << ((((const unsigned char *)p)[1]) & 0x1F)));
}

static int
utf8_isName3(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *p)
{
  return (namingBitmap[((namePages)[(((((const unsigned char *)p)[0]) & 0xF) << 4) + (((((const unsigned char *)p)[1]) >> 2) & 0xF)] << 3) + (((((const unsigned char *)p)[1]) & 3) << 1) + (((((const unsigned char *)p)[2]) >> 5) & 1)] & (1u << ((((const unsigned char *)p)[2]) & 0x1F)));
}



static int
utf8_isNmstrt2(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *p)
{
  return (namingBitmap[((nmstrtPages)[((((const unsigned char *)p)[0]) >> 2) & 7] << 3) + (((((const unsigned char *)p)[0]) & 3) << 1) + (((((const unsigned char *)p)[1]) >> 5) & 1)] & (1u << ((((const unsigned char *)p)[1]) & 0x1F)));
}

static int
utf8_isNmstrt3(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *p)
{
  return (namingBitmap[((nmstrtPages)[(((((const unsigned char *)p)[0]) & 0xF) << 4) + (((((const unsigned char *)p)[1]) >> 2) & 0xF)] << 3) + (((((const unsigned char *)p)[1]) & 3) << 1) + (((((const unsigned char *)p)[2]) >> 5) & 1)] & (1u << ((((const unsigned char *)p)[2]) & 0x1F)));
}



static int
utf8_isInvalid2(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *p)
{
  return ((*(const unsigned char *)p) < 0xC2 || (((const unsigned char *)p)[1] & 0x80) == 0 || (((const unsigned char *)p)[1] & 0xC0) == 0xC0);
}

static int
utf8_isInvalid3(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *p)
{
  return ((((const unsigned char *)p)[2] & 0x80) == 0 || ((*(const unsigned char *)p) == 0xEF && ((const unsigned char *)p)[1] == 0xBF ? ((const unsigned char *)p)[2] > 0xBD : (((const unsigned char *)p)[2] & 0xC0) == 0xC0) || ((*(const unsigned char *)p) == 0xE0 ? ((const unsigned char *)p)[1] < 0xA0 || (((const unsigned char *)p)[1] & 0xC0) == 0xC0 : (((const unsigned char *)p)[1] & 0x80) == 0 || ((*(const unsigned char *)p) == 0xED ? ((const unsigned char *)p)[1] > 0x9F : (((const unsigned char *)p)[1] & 0xC0) == 0xC0)));
}

static int
utf8_isInvalid4(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *p)
{
  return ((((const unsigned char *)p)[3] & 0x80) == 0 || (((const unsigned char *)p)[3] & 0xC0) == 0xC0 || (((const unsigned char *)p)[2] & 0x80) == 0 || (((const unsigned char *)p)[2] & 0xC0) == 0xC0 || ((*(const unsigned char *)p) == 0xF0 ? ((const unsigned char *)p)[1] < 0x90 || (((const unsigned char *)p)[1] & 0xC0) == 0xC0 : (((const unsigned char *)p)[1] & 0x80) == 0 || ((*(const unsigned char *)p) == 0xF4 ? ((const unsigned char *)p)[1] > 0x8F : (((const unsigned char *)p)[1] & 0xC0) == 0xC0)));
}

struct normal_encoding {
  ENCODING enc;
  unsigned char type[256];







  int ( *isName2)(const ENCODING *, const char *);
  int ( *isName3)(const ENCODING *, const char *);
  int ( *isName4)(const ENCODING *, const char *);
  int ( *isNmstrt2)(const ENCODING *, const char *);
  int ( *isNmstrt3)(const ENCODING *, const char *);
  int ( *isNmstrt4)(const ENCODING *, const char *);
  int ( *isInvalid2)(const ENCODING *, const char *);
  int ( *isInvalid3)(const ENCODING *, const char *);
  int ( *isInvalid4)(const ENCODING *, const char *);
};
# 236 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
static int checkCharRefNumber(int);

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/xmltok_impl.h" 1





enum {
  BT_NONXML,
  BT_MALFORM,
  BT_LT,
  BT_AMP,
  BT_RSQB,
  BT_LEAD2,
  BT_LEAD3,
  BT_LEAD4,
  BT_TRAIL,
  BT_CR,
  BT_LF,
  BT_GT,
  BT_QUOT,
  BT_APOS,
  BT_EQUALS,
  BT_QUEST,
  BT_EXCL,
  BT_SOL,
  BT_SEMI,
  BT_NUM,
  BT_LSQB,
  BT_S,
  BT_NMSTRT,
  BT_COLON,
  BT_HEX,
  BT_DIGIT,
  BT_NAME,
  BT_MINUS,
  BT_OTHER,
  BT_NONASCII,
  BT_PERCNT,
  BT_LPAR,
  BT_RPAR,
  BT_AST,
  BT_PLUS,
  BT_COMMA,
  BT_VERBAR
};

# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 46 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/xmltok_impl.h" 2
# 239 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/ascii.h" 1
# 240 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
# 312 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_impl.c" 1
# 112 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_impl.c"
static int
normal_scanComment(const ENCODING *enc, const char *ptr,
                    const char *end, const char **nextTokPtr)
{
  if ((end - ptr >= 1 * 1)) {
    if (!(*(ptr) == 0x2D)) {
      *nextTokPtr = ptr;
      return 0;
    }
    ptr += 1;
    while ((end - ptr >= 1 * 1)) {
      switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
      case BT_LEAD2: if (end - ptr < 2) return -2; if ((((const struct normal_encoding *) (enc))->isInvalid2(enc, ptr))) { *(nextTokPtr) = (ptr); return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if ((((const struct normal_encoding *) (enc))->isInvalid3(enc, ptr))) { *(nextTokPtr) = (ptr); return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if ((((const struct normal_encoding *) (enc))->isInvalid4(enc, ptr))) { *(nextTokPtr) = (ptr); return 0; } ptr += 4; break; case BT_NONXML: case BT_MALFORM: case BT_TRAIL: *(nextTokPtr) = (ptr); return 0;
      case BT_MINUS:
        ptr += 1;
        { if (! (end - ptr >= 1 * 1)) { return -1; } };
        if ((*(ptr) == 0x2D)) {
          ptr += 1;
          { if (! (end - ptr >= 1 * 1)) { return -1; } };
          if (!(*(ptr) == 0x3E)) {
            *nextTokPtr = ptr;
            return 0;
          }
          *nextTokPtr = ptr + 1;
          return 13;
        }
        break;
      default:
        ptr += 1;
        break;
      }
    }
  }
  return -1;
}



static int
normal_scanDecl(const ENCODING *enc, const char *ptr,
                 const char *end, const char **nextTokPtr)
{
  { if (! (end - ptr >= 1 * 1)) { return -1; } };
  switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
  case BT_MINUS:
    return normal_scanComment(enc, ptr + 1, end, nextTokPtr);
  case BT_LSQB:
    *nextTokPtr = ptr + 1;
    return 33;
  case BT_NMSTRT:
  case BT_HEX:
    ptr += 1;
    break;
  default:
    *nextTokPtr = ptr;
    return 0;
  }
  while ((end - ptr >= 1 * 1)) {
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
    case BT_PERCNT:
      { if (! (end - ptr >= 2 * 1)) { return -1; } };

      switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr + 1)])) {
      case BT_S: case BT_CR: case BT_LF: case BT_PERCNT:
        *nextTokPtr = ptr;
        return 0;
      }

    case BT_S: case BT_CR: case BT_LF:
      *nextTokPtr = ptr;
      return 16;
    case BT_NMSTRT:
    case BT_HEX:
      ptr += 1;
      break;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -1;
}

static int
normal_checkPiTarget(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *ptr,
                      const char *end, int *tokPtr)
{
  int upper = 0;
  *tokPtr = 11;
  if (end - ptr != 1*3)
    return 1;
  switch ((*(ptr))) {
  case 0x78:
    break;
  case 0x58:
    upper = 1;
    break;
  default:
    return 1;
  }
  ptr += 1;
  switch ((*(ptr))) {
  case 0x6D:
    break;
  case 0x4D:
    upper = 1;
    break;
  default:
    return 1;
  }
  ptr += 1;
  switch ((*(ptr))) {
  case 0x6C:
    break;
  case 0x4C:
    upper = 1;
    break;
  default:
    return 1;
  }
  if (upper)
    return 0;
  *tokPtr = 12;
  return 1;
}



static int
normal_scanPi(const ENCODING *enc, const char *ptr,
               const char *end, const char **nextTokPtr)
{
  int tok;
  const char *target = ptr;
  { if (! (end - ptr >= 1 * 1)) { return -1; } };
  switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
  case BT_NONASCII: if (!(0)) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 1; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt2(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt3(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt4(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
  default:
    *nextTokPtr = ptr;
    return 0;
  }
  while ((end - ptr >= 1 * 1)) {
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
    case BT_NONASCII: if (!(0)) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 1; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(((const struct normal_encoding *) (enc))->isName2(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(((const struct normal_encoding *) (enc))->isName3(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(((const struct normal_encoding *) (enc))->isName4(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
    case BT_S: case BT_CR: case BT_LF:
      if (!normal_checkPiTarget(enc, target, ptr, &tok)) {
        *nextTokPtr = ptr;
        return 0;
      }
      ptr += 1;
      while ((end - ptr >= 1 * 1)) {
        switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
        case BT_LEAD2: if (end - ptr < 2) return -2; if ((((const struct normal_encoding *) (enc))->isInvalid2(enc, ptr))) { *(nextTokPtr) = (ptr); return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if ((((const struct normal_encoding *) (enc))->isInvalid3(enc, ptr))) { *(nextTokPtr) = (ptr); return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if ((((const struct normal_encoding *) (enc))->isInvalid4(enc, ptr))) { *(nextTokPtr) = (ptr); return 0; } ptr += 4; break; case BT_NONXML: case BT_MALFORM: case BT_TRAIL: *(nextTokPtr) = (ptr); return 0;
        case BT_QUEST:
          ptr += 1;
          { if (! (end - ptr >= 1 * 1)) { return -1; } };
          if ((*(ptr) == 0x3E)) {
            *nextTokPtr = ptr + 1;
            return tok;
          }
          break;
        default:
          ptr += 1;
          break;
        }
      }
      return -1;
    case BT_QUEST:
      if (!normal_checkPiTarget(enc, target, ptr, &tok)) {
        *nextTokPtr = ptr;
        return 0;
      }
      ptr += 1;
      { if (! (end - ptr >= 1 * 1)) { return -1; } };
      if ((*(ptr) == 0x3E)) {
        *nextTokPtr = ptr + 1;
        return tok;
      }

    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -1;
}

static int
normal_scanCdataSection(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *ptr,
                         const char *end, const char **nextTokPtr)
{
  static const char CDATA_LSQB[] = { 0x43, 0x44, 0x41,
                                     0x54, 0x41, 0x5B };
  int i;

  { if (! (end - ptr >= 6 * 1)) { return -1; } };
  for (i = 0; i < 6; i++, ptr += 1) {
    if (!(*(ptr) == CDATA_LSQB[i])) {
      *nextTokPtr = ptr;
      return 0;
    }
  }
  *nextTokPtr = ptr;
  return 8;
}

static int
normal_cdataSectionTok(const ENCODING *enc, const char *ptr,
                        const char *end, const char **nextTokPtr)
{
  if (ptr >= end)
    return -4;
  if (1 > 1) {
    size_t n = end - ptr;
    if (n & (1 - 1)) {
      n &= ~(1 - 1);
      if (n == 0)
        return -1;
      end = ptr + n;
    }
  }
  switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
  case BT_RSQB:
    ptr += 1;
    { if (! (end - ptr >= 1 * 1)) { return -1; } };
    if (!(*(ptr) == 0x5D))
      break;
    ptr += 1;
    { if (! (end - ptr >= 1 * 1)) { return -1; } };
    if (!(*(ptr) == 0x3E)) {
      ptr -= 1;
      break;
    }
    *nextTokPtr = ptr + 1;
    return 40;
  case BT_CR:
    ptr += 1;
    { if (! (end - ptr >= 1 * 1)) { return -1; } };
    if ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)]) == BT_LF)
      ptr += 1;
    *nextTokPtr = ptr;
    return 7;
  case BT_LF:
    *nextTokPtr = ptr + 1;
    return 7;
  case BT_LEAD2: if (end - ptr < 2) return -2; if ((((const struct normal_encoding *) (enc))->isInvalid2(enc, ptr))) { *(nextTokPtr) = (ptr); return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if ((((const struct normal_encoding *) (enc))->isInvalid3(enc, ptr))) { *(nextTokPtr) = (ptr); return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if ((((const struct normal_encoding *) (enc))->isInvalid4(enc, ptr))) { *(nextTokPtr) = (ptr); return 0; } ptr += 4; break; case BT_NONXML: case BT_MALFORM: case BT_TRAIL: *(nextTokPtr) = (ptr); return 0;
  default:
    ptr += 1;
    break;
  }
  while ((end - ptr >= 1 * 1)) {
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
# 372 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_impl.c"
    case BT_LEAD2: if (end - ptr < 2 || (((const struct normal_encoding *) (enc))->isInvalid2(enc, ptr))) { *nextTokPtr = ptr; return 6; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3 || (((const struct normal_encoding *) (enc))->isInvalid3(enc, ptr))) { *nextTokPtr = ptr; return 6; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4 || (((const struct normal_encoding *) (enc))->isInvalid4(enc, ptr))) { *nextTokPtr = ptr; return 6; } ptr += 4; break;

    case BT_NONXML:
    case BT_MALFORM:
    case BT_TRAIL:
    case BT_CR:
    case BT_LF:
    case BT_RSQB:
      *nextTokPtr = ptr;
      return 6;
    default:
      ptr += 1;
      break;
    }
  }
  *nextTokPtr = ptr;
  return 6;
}



static int
normal_scanEndTag(const ENCODING *enc, const char *ptr,
                   const char *end, const char **nextTokPtr)
{
  { if (! (end - ptr >= 1 * 1)) { return -1; } };
  switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
  case BT_NONASCII: if (!(0)) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 1; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt2(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt3(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt4(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
  default:
    *nextTokPtr = ptr;
    return 0;
  }
  while ((end - ptr >= 1 * 1)) {
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
    case BT_NONASCII: if (!(0)) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 1; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(((const struct normal_encoding *) (enc))->isName2(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(((const struct normal_encoding *) (enc))->isName3(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(((const struct normal_encoding *) (enc))->isName4(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
    case BT_S: case BT_CR: case BT_LF:
      for (ptr += 1; (end - ptr >= 1 * 1); ptr += 1) {
        switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
        case BT_S: case BT_CR: case BT_LF:
          break;
        case BT_GT:
          *nextTokPtr = ptr + 1;
          return 5;
        default:
          *nextTokPtr = ptr;
          return 0;
        }
      }
      return -1;

    case BT_COLON:


      ptr += 1;
      break;

    case BT_GT:
      *nextTokPtr = ptr + 1;
      return 5;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -1;
}



static int
normal_scanHexCharRef(const ENCODING *enc, const char *ptr,
                       const char *end, const char **nextTokPtr)
{
  if ((end - ptr >= 1 * 1)) {
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
    case BT_DIGIT:
    case BT_HEX:
      break;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
    for (ptr += 1; (end - ptr >= 1 * 1); ptr += 1) {
      switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
      case BT_DIGIT:
      case BT_HEX:
        break;
      case BT_SEMI:
        *nextTokPtr = ptr + 1;
        return 10;
      default:
        *nextTokPtr = ptr;
        return 0;
      }
    }
  }
  return -1;
}



static int
normal_scanCharRef(const ENCODING *enc, const char *ptr,
                    const char *end, const char **nextTokPtr)
{
  if ((end - ptr >= 1 * 1)) {
    if ((*(ptr) == 0x78))
      return normal_scanHexCharRef(enc, ptr + 1, end, nextTokPtr);
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
    case BT_DIGIT:
      break;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
    for (ptr += 1; (end - ptr >= 1 * 1); ptr += 1) {
      switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
      case BT_DIGIT:
        break;
      case BT_SEMI:
        *nextTokPtr = ptr + 1;
        return 10;
      default:
        *nextTokPtr = ptr;
        return 0;
      }
    }
  }
  return -1;
}



static int
normal_scanRef(const ENCODING *enc, const char *ptr, const char *end,
                const char **nextTokPtr)
{
  { if (! (end - ptr >= 1 * 1)) { return -1; } };
  switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
  case BT_NONASCII: if (!(0)) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 1; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt2(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt3(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt4(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
  case BT_NUM:
    return normal_scanCharRef(enc, ptr + 1, end, nextTokPtr);
  default:
    *nextTokPtr = ptr;
    return 0;
  }
  while ((end - ptr >= 1 * 1)) {
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
    case BT_NONASCII: if (!(0)) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 1; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(((const struct normal_encoding *) (enc))->isName2(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(((const struct normal_encoding *) (enc))->isName3(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(((const struct normal_encoding *) (enc))->isName4(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
    case BT_SEMI:
      *nextTokPtr = ptr + 1;
      return 9;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -1;
}



static int
normal_scanAtts(const ENCODING *enc, const char *ptr, const char *end,
                 const char **nextTokPtr)
{

  int hadColon = 0;

  while ((end - ptr >= 1 * 1)) {
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
    case BT_NONASCII: if (!(0)) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 1; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(((const struct normal_encoding *) (enc))->isName2(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(((const struct normal_encoding *) (enc))->isName3(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(((const struct normal_encoding *) (enc))->isName4(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 4; break;

    case BT_COLON:
      if (hadColon) {
        *nextTokPtr = ptr;
        return 0;
      }
      hadColon = 1;
      ptr += 1;
      { if (! (end - ptr >= 1 * 1)) { return -1; } };
      switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
      case BT_NONASCII: if (!(0)) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 1; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt2(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt3(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt4(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
      default:
        *nextTokPtr = ptr;
        return 0;
      }
      break;

    case BT_S: case BT_CR: case BT_LF:
      for (;;) {
        int t;

        ptr += 1;
        { if (! (end - ptr >= 1 * 1)) { return -1; } };
        t = (((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)]);
        if (t == BT_EQUALS)
          break;
        switch (t) {
        case BT_S:
        case BT_LF:
        case BT_CR:
          break;
        default:
          *nextTokPtr = ptr;
          return 0;
        }
      }

    case BT_EQUALS:
      {
        int open;

        hadColon = 0;

        for (;;) {
          ptr += 1;
          { if (! (end - ptr >= 1 * 1)) { return -1; } };
          open = (((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)]);
          if (open == BT_QUOT || open == BT_APOS)
            break;
          switch (open) {
          case BT_S:
          case BT_LF:
          case BT_CR:
            break;
          default:
            *nextTokPtr = ptr;
            return 0;
          }
        }
        ptr += 1;

        for (;;) {
          int t;
          { if (! (end - ptr >= 1 * 1)) { return -1; } };
          t = (((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)]);
          if (t == open)
            break;
          switch (t) {
          case BT_LEAD2: if (end - ptr < 2) return -2; if ((((const struct normal_encoding *) (enc))->isInvalid2(enc, ptr))) { *(nextTokPtr) = (ptr); return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if ((((const struct normal_encoding *) (enc))->isInvalid3(enc, ptr))) { *(nextTokPtr) = (ptr); return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if ((((const struct normal_encoding *) (enc))->isInvalid4(enc, ptr))) { *(nextTokPtr) = (ptr); return 0; } ptr += 4; break; case BT_NONXML: case BT_MALFORM: case BT_TRAIL: *(nextTokPtr) = (ptr); return 0;
          case BT_AMP:
            {
              int tok = normal_scanRef(enc, ptr + 1, end, &ptr);
              if (tok <= 0) {
                if (tok == 0)
                  *nextTokPtr = ptr;
                return tok;
              }
              break;
            }
          case BT_LT:
            *nextTokPtr = ptr;
            return 0;
          default:
            ptr += 1;
            break;
          }
        }
        ptr += 1;
        { if (! (end - ptr >= 1 * 1)) { return -1; } };
        switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
        case BT_S:
        case BT_CR:
        case BT_LF:
          break;
        case BT_SOL:
          goto sol;
        case BT_GT:
          goto gt;
        default:
          *nextTokPtr = ptr;
          return 0;
        }

        for (;;) {
          ptr += 1;
          { if (! (end - ptr >= 1 * 1)) { return -1; } };
          switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
          case BT_NONASCII: if (!(0)) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 1; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt2(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt3(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt4(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
          case BT_S: case BT_CR: case BT_LF:
            continue;
          case BT_GT:
          gt:
            *nextTokPtr = ptr + 1;
            return 1;
          case BT_SOL:
          sol:
            ptr += 1;
            { if (! (end - ptr >= 1 * 1)) { return -1; } };
            if (!(*(ptr) == 0x3E)) {
              *nextTokPtr = ptr;
              return 0;
            }
            *nextTokPtr = ptr + 1;
            return 3;
          default:
            *nextTokPtr = ptr;
            return 0;
          }
          break;
        }
        break;
      }
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -1;
}



static int
normal_scanLt(const ENCODING *enc, const char *ptr, const char *end,
               const char **nextTokPtr)
{

  int hadColon;

  { if (! (end - ptr >= 1 * 1)) { return -1; } };
  switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
  case BT_NONASCII: if (!(0)) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 1; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt2(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt3(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt4(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
  case BT_EXCL:
    ptr += 1;
    { if (! (end - ptr >= 1 * 1)) { return -1; } };
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
    case BT_MINUS:
      return normal_scanComment(enc, ptr + 1, end, nextTokPtr);
    case BT_LSQB:
      return normal_scanCdataSection(enc, ptr + 1,
                                      end, nextTokPtr);
    }
    *nextTokPtr = ptr;
    return 0;
  case BT_QUEST:
    return normal_scanPi(enc, ptr + 1, end, nextTokPtr);
  case BT_SOL:
    return normal_scanEndTag(enc, ptr + 1, end, nextTokPtr);
  default:
    *nextTokPtr = ptr;
    return 0;
  }

  hadColon = 0;


  while ((end - ptr >= 1 * 1)) {
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
    case BT_NONASCII: if (!(0)) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 1; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(((const struct normal_encoding *) (enc))->isName2(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(((const struct normal_encoding *) (enc))->isName3(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(((const struct normal_encoding *) (enc))->isName4(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 4; break;

    case BT_COLON:
      if (hadColon) {
        *nextTokPtr = ptr;
        return 0;
      }
      hadColon = 1;
      ptr += 1;
      { if (! (end - ptr >= 1 * 1)) { return -1; } };
      switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
      case BT_NONASCII: if (!(0)) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 1; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt2(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt3(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt4(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
      default:
        *nextTokPtr = ptr;
        return 0;
      }
      break;

    case BT_S: case BT_CR: case BT_LF:
      {
        ptr += 1;
        while ((end - ptr >= 1 * 1)) {
          switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
          case BT_NONASCII: if (!(0)) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 1; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt2(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt3(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt4(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
          case BT_GT:
            goto gt;
          case BT_SOL:
            goto sol;
          case BT_S: case BT_CR: case BT_LF:
            ptr += 1;
            continue;
          default:
            *nextTokPtr = ptr;
            return 0;
          }
          return normal_scanAtts(enc, ptr, end, nextTokPtr);
        }
        return -1;
      }
    case BT_GT:
    gt:
      *nextTokPtr = ptr + 1;
      return 2;
    case BT_SOL:
    sol:
      ptr += 1;
      { if (! (end - ptr >= 1 * 1)) { return -1; } };
      if (!(*(ptr) == 0x3E)) {
        *nextTokPtr = ptr;
        return 0;
      }
      *nextTokPtr = ptr + 1;
      return 4;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -1;
}

static int
normal_contentTok(const ENCODING *enc, const char *ptr, const char *end,
                   const char **nextTokPtr)
{
  if (ptr >= end)
    return -4;
  if (1 > 1) {
    size_t n = end - ptr;
    if (n & (1 - 1)) {
      n &= ~(1 - 1);
      if (n == 0)
        return -1;
      end = ptr + n;
    }
  }
  switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
  case BT_LT:
    return normal_scanLt(enc, ptr + 1, end, nextTokPtr);
  case BT_AMP:
    return normal_scanRef(enc, ptr + 1, end, nextTokPtr);
  case BT_CR:
    ptr += 1;
    if (! (end - ptr >= 1 * 1))
      return -3;
    if ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)]) == BT_LF)
      ptr += 1;
    *nextTokPtr = ptr;
    return 7;
  case BT_LF:
    *nextTokPtr = ptr + 1;
    return 7;
  case BT_RSQB:
    ptr += 1;
    if (! (end - ptr >= 1 * 1))
      return -5;
    if (!(*(ptr) == 0x5D))
      break;
    ptr += 1;
    if (! (end - ptr >= 1 * 1))
      return -5;
    if (!(*(ptr) == 0x3E)) {
      ptr -= 1;
      break;
    }
    *nextTokPtr = ptr;
    return 0;
  case BT_LEAD2: if (end - ptr < 2) return -2; if ((((const struct normal_encoding *) (enc))->isInvalid2(enc, ptr))) { *(nextTokPtr) = (ptr); return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if ((((const struct normal_encoding *) (enc))->isInvalid3(enc, ptr))) { *(nextTokPtr) = (ptr); return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if ((((const struct normal_encoding *) (enc))->isInvalid4(enc, ptr))) { *(nextTokPtr) = (ptr); return 0; } ptr += 4; break; case BT_NONXML: case BT_MALFORM: case BT_TRAIL: *(nextTokPtr) = (ptr); return 0;
  default:
    ptr += 1;
    break;
  }
  while ((end - ptr >= 1 * 1)) {
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
# 844 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_impl.c"
    case BT_LEAD2: if (end - ptr < 2 || (((const struct normal_encoding *) (enc))->isInvalid2(enc, ptr))) { *nextTokPtr = ptr; return 6; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3 || (((const struct normal_encoding *) (enc))->isInvalid3(enc, ptr))) { *nextTokPtr = ptr; return 6; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4 || (((const struct normal_encoding *) (enc))->isInvalid4(enc, ptr))) { *nextTokPtr = ptr; return 6; } ptr += 4; break;

    case BT_RSQB:
      if ((end - ptr >= 2 * 1)) {
         if (!(*(ptr + 1) == 0x5D)) {
           ptr += 1;
           break;
         }
         if ((end - ptr >= 3 * 1)) {
           if (!(*(ptr + 2*1) == 0x3E)) {
             ptr += 1;
             break;
           }
           *nextTokPtr = ptr + 2*1;
           return 0;
         }
      }

    case BT_AMP:
    case BT_LT:
    case BT_NONXML:
    case BT_MALFORM:
    case BT_TRAIL:
    case BT_CR:
    case BT_LF:
      *nextTokPtr = ptr;
      return 6;
    default:
      ptr += 1;
      break;
    }
  }
  *nextTokPtr = ptr;
  return 6;
}



static int
normal_scanPercent(const ENCODING *enc, const char *ptr, const char *end,
                    const char **nextTokPtr)
{
  { if (! (end - ptr >= 1 * 1)) { return -1; } };
  switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
  case BT_NONASCII: if (!(0)) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 1; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt2(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt3(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt4(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
  case BT_S: case BT_LF: case BT_CR: case BT_PERCNT:
    *nextTokPtr = ptr;
    return 22;
  default:
    *nextTokPtr = ptr;
    return 0;
  }
  while ((end - ptr >= 1 * 1)) {
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
    case BT_NONASCII: if (!(0)) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 1; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(((const struct normal_encoding *) (enc))->isName2(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(((const struct normal_encoding *) (enc))->isName3(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(((const struct normal_encoding *) (enc))->isName4(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
    case BT_SEMI:
      *nextTokPtr = ptr + 1;
      return 28;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -1;
}

static int
normal_scanPoundName(const ENCODING *enc, const char *ptr, const char *end,
                      const char **nextTokPtr)
{
  { if (! (end - ptr >= 1 * 1)) { return -1; } };
  switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
  case BT_NONASCII: if (!(0)) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 1; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt2(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt3(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(((const struct normal_encoding *) (enc))->isNmstrt4(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
  default:
    *nextTokPtr = ptr;
    return 0;
  }
  while ((end - ptr >= 1 * 1)) {
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
    case BT_NONASCII: if (!(0)) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 1; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(((const struct normal_encoding *) (enc))->isName2(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(((const struct normal_encoding *) (enc))->isName3(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(((const struct normal_encoding *) (enc))->isName4(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
    case BT_CR: case BT_LF: case BT_S:
    case BT_RPAR: case BT_GT: case BT_PERCNT: case BT_VERBAR:
      *nextTokPtr = ptr;
      return 20;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -20;
}

static int
normal_scanLit(int open, const ENCODING *enc,
                const char *ptr, const char *end,
                const char **nextTokPtr)
{
  while ((end - ptr >= 1 * 1)) {
    int t = (((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)]);
    switch (t) {
    case BT_LEAD2: if (end - ptr < 2) return -2; if ((((const struct normal_encoding *) (enc))->isInvalid2(enc, ptr))) { *(nextTokPtr) = (ptr); return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if ((((const struct normal_encoding *) (enc))->isInvalid3(enc, ptr))) { *(nextTokPtr) = (ptr); return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if ((((const struct normal_encoding *) (enc))->isInvalid4(enc, ptr))) { *(nextTokPtr) = (ptr); return 0; } ptr += 4; break; case BT_NONXML: case BT_MALFORM: case BT_TRAIL: *(nextTokPtr) = (ptr); return 0;
    case BT_QUOT:
    case BT_APOS:
      ptr += 1;
      if (t != open)
        break;
      if (! (end - ptr >= 1 * 1))
        return -27;
      *nextTokPtr = ptr;
      switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
      case BT_S: case BT_CR: case BT_LF:
      case BT_GT: case BT_PERCNT: case BT_LSQB:
        return 27;
      default:
        return 0;
      }
    default:
      ptr += 1;
      break;
    }
  }
  return -1;
}

static int
normal_prologTok(const ENCODING *enc, const char *ptr, const char *end,
                  const char **nextTokPtr)
{
  int tok;
  if (ptr >= end)
    return -4;
  if (1 > 1) {
    size_t n = end - ptr;
    if (n & (1 - 1)) {
      n &= ~(1 - 1);
      if (n == 0)
        return -1;
      end = ptr + n;
    }
  }
  switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
  case BT_QUOT:
    return normal_scanLit(BT_QUOT, enc, ptr + 1, end, nextTokPtr);
  case BT_APOS:
    return normal_scanLit(BT_APOS, enc, ptr + 1, end, nextTokPtr);
  case BT_LT:
    {
      ptr += 1;
      { if (! (end - ptr >= 1 * 1)) { return -1; } };
      switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
      case BT_EXCL:
        return normal_scanDecl(enc, ptr + 1, end, nextTokPtr);
      case BT_QUEST:
        return normal_scanPi(enc, ptr + 1, end, nextTokPtr);
      case BT_NMSTRT:
      case BT_HEX:
      case BT_NONASCII:
      case BT_LEAD2:
      case BT_LEAD3:
      case BT_LEAD4:
        *nextTokPtr = ptr - 1;
        return 29;
      }
      *nextTokPtr = ptr;
      return 0;
    }
  case BT_CR:
    if (ptr + 1 == end) {
      *nextTokPtr = end;

      return -15;
    }

  case BT_S: case BT_LF:
    for (;;) {
      ptr += 1;
      if (! (end - ptr >= 1 * 1))
        break;
      switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
      case BT_S: case BT_LF:
        break;
      case BT_CR:

        if (ptr + 1 != end)
          break;

      default:
        *nextTokPtr = ptr;
        return 15;
      }
    }
    *nextTokPtr = ptr;
    return 15;
  case BT_PERCNT:
    return normal_scanPercent(enc, ptr + 1, end, nextTokPtr);
  case BT_COMMA:
    *nextTokPtr = ptr + 1;
    return 38;
  case BT_LSQB:
    *nextTokPtr = ptr + 1;
    return 25;
  case BT_RSQB:
    ptr += 1;
    if (! (end - ptr >= 1 * 1))
      return -26;
    if ((*(ptr) == 0x5D)) {
      { if (! (end - ptr >= 2 * 1)) { return -1; } };
      if ((*(ptr + 1) == 0x3E)) {
        *nextTokPtr = ptr + 2*1;
        return 34;
      }
    }
    *nextTokPtr = ptr;
    return 26;
  case BT_LPAR:
    *nextTokPtr = ptr + 1;
    return 23;
  case BT_RPAR:
    ptr += 1;
    if (! (end - ptr >= 1 * 1))
      return -24;
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
    case BT_AST:
      *nextTokPtr = ptr + 1;
      return 36;
    case BT_QUEST:
      *nextTokPtr = ptr + 1;
      return 35;
    case BT_PLUS:
      *nextTokPtr = ptr + 1;
      return 37;
    case BT_CR: case BT_LF: case BT_S:
    case BT_GT: case BT_COMMA: case BT_VERBAR:
    case BT_RPAR:
      *nextTokPtr = ptr;
      return 24;
    }
    *nextTokPtr = ptr;
    return 0;
  case BT_VERBAR:
    *nextTokPtr = ptr + 1;
    return 21;
  case BT_GT:
    *nextTokPtr = ptr + 1;
    return 17;
  case BT_NUM:
    return normal_scanPoundName(enc, ptr + 1, end, nextTokPtr);
# 1107 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_impl.c"
    case BT_LEAD2: if (end - ptr < 2) return -2; if ((((const struct normal_encoding *) (enc))->isNmstrt2(enc, ptr))) { ptr += 2; tok = 18; break; } if ((((const struct normal_encoding *) (enc))->isName2(enc, ptr))) { ptr += 2; tok = 19; break; } *nextTokPtr = ptr; return 0; case BT_LEAD3: if (end - ptr < 3) return -2; if ((((const struct normal_encoding *) (enc))->isNmstrt3(enc, ptr))) { ptr += 3; tok = 18; break; } if ((((const struct normal_encoding *) (enc))->isName3(enc, ptr))) { ptr += 3; tok = 19; break; } *nextTokPtr = ptr; return 0; case BT_LEAD4: if (end - ptr < 4) return -2; if ((((const struct normal_encoding *) (enc))->isNmstrt4(enc, ptr))) { ptr += 4; tok = 18; break; } if ((((const struct normal_encoding *) (enc))->isName4(enc, ptr))) { ptr += 4; tok = 19; break; } *nextTokPtr = ptr; return 0;

  case BT_NMSTRT:
  case BT_HEX:
    tok = 18;
    ptr += 1;
    break;
  case BT_DIGIT:
  case BT_NAME:
  case BT_MINUS:

  case BT_COLON:

    tok = 19;
    ptr += 1;
    break;
  case BT_NONASCII:
    if ((0)) {
      ptr += 1;
      tok = 18;
      break;
    }
    if ((0)) {
      ptr += 1;
      tok = 19;
      break;
    }

  default:
    *nextTokPtr = ptr;
    return 0;
  }
  while ((end - ptr >= 1 * 1)) {
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
    case BT_NONASCII: if (!(0)) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 1; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(((const struct normal_encoding *) (enc))->isName2(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(((const struct normal_encoding *) (enc))->isName3(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(((const struct normal_encoding *) (enc))->isName4(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
    case BT_GT: case BT_RPAR: case BT_COMMA:
    case BT_VERBAR: case BT_LSQB: case BT_PERCNT:
    case BT_S: case BT_CR: case BT_LF:
      *nextTokPtr = ptr;
      return tok;

    case BT_COLON:
      ptr += 1;
      switch (tok) {
      case 18:
        { if (! (end - ptr >= 1 * 1)) { return -1; } };
        tok = 41;
        switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
        case BT_NONASCII: if (!(0)) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 1; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(((const struct normal_encoding *) (enc))->isName2(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(((const struct normal_encoding *) (enc))->isName3(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(((const struct normal_encoding *) (enc))->isName4(enc, ptr))) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
        default:
          tok = 19;
          break;
        }
        break;
      case 41:
        tok = 19;
        break;
      }
      break;

    case BT_PLUS:
      if (tok == 19) {
        *nextTokPtr = ptr;
        return 0;
      }
      *nextTokPtr = ptr + 1;
      return 32;
    case BT_AST:
      if (tok == 19) {
        *nextTokPtr = ptr;
        return 0;
      }
      *nextTokPtr = ptr + 1;
      return 31;
    case BT_QUEST:
      if (tok == 19) {
        *nextTokPtr = ptr;
        return 0;
      }
      *nextTokPtr = ptr + 1;
      return 30;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -tok;
}

static int
normal_attributeValueTok(const ENCODING *enc, const char *ptr,
                          const char *end, const char **nextTokPtr)
{
  const char *start;
  if (ptr >= end)
    return -4;
  else if (! (end - ptr >= 1 * 1))
    return -1;
  start = ptr;
  while ((end - ptr >= 1 * 1)) {
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {


    case BT_LEAD2: ptr += 2; break; case BT_LEAD3: ptr += 3; break; case BT_LEAD4: ptr += 4; break;

    case BT_AMP:
      if (ptr == start)
        return normal_scanRef(enc, ptr + 1, end, nextTokPtr);
      *nextTokPtr = ptr;
      return 6;
    case BT_LT:

      *nextTokPtr = ptr;
      return 0;
    case BT_LF:
      if (ptr == start) {
        *nextTokPtr = ptr + 1;
        return 7;
      }
      *nextTokPtr = ptr;
      return 6;
    case BT_CR:
      if (ptr == start) {
        ptr += 1;
        if (! (end - ptr >= 1 * 1))
          return -3;
        if ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)]) == BT_LF)
          ptr += 1;
        *nextTokPtr = ptr;
        return 7;
      }
      *nextTokPtr = ptr;
      return 6;
    case BT_S:
      if (ptr == start) {
        *nextTokPtr = ptr + 1;
        return 39;
      }
      *nextTokPtr = ptr;
      return 6;
    default:
      ptr += 1;
      break;
    }
  }
  *nextTokPtr = ptr;
  return 6;
}

static int
normal_entityValueTok(const ENCODING *enc, const char *ptr,
                       const char *end, const char **nextTokPtr)
{
  const char *start;
  if (ptr >= end)
    return -4;
  else if (! (end - ptr >= 1 * 1))
    return -1;
  start = ptr;
  while ((end - ptr >= 1 * 1)) {
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {


    case BT_LEAD2: ptr += 2; break; case BT_LEAD3: ptr += 3; break; case BT_LEAD4: ptr += 4; break;

    case BT_AMP:
      if (ptr == start)
        return normal_scanRef(enc, ptr + 1, end, nextTokPtr);
      *nextTokPtr = ptr;
      return 6;
    case BT_PERCNT:
      if (ptr == start) {
        int tok = normal_scanPercent(enc, ptr + 1,
                                       end, nextTokPtr);
        return (tok == 22) ? 0 : tok;
      }
      *nextTokPtr = ptr;
      return 6;
    case BT_LF:
      if (ptr == start) {
        *nextTokPtr = ptr + 1;
        return 7;
      }
      *nextTokPtr = ptr;
      return 6;
    case BT_CR:
      if (ptr == start) {
        ptr += 1;
        if (! (end - ptr >= 1 * 1))
          return -3;
        if ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)]) == BT_LF)
          ptr += 1;
        *nextTokPtr = ptr;
        return 7;
      }
      *nextTokPtr = ptr;
      return 6;
    default:
      ptr += 1;
      break;
    }
  }
  *nextTokPtr = ptr;
  return 6;
}



static int
normal_ignoreSectionTok(const ENCODING *enc, const char *ptr,
                         const char *end, const char **nextTokPtr)
{
  int level = 0;
  if (1 > 1) {
    size_t n = end - ptr;
    if (n & (1 - 1)) {
      n &= ~(1 - 1);
      end = ptr + n;
    }
  }
  while ((end - ptr >= 1 * 1)) {
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
    case BT_LEAD2: if (end - ptr < 2) return -2; if ((((const struct normal_encoding *) (enc))->isInvalid2(enc, ptr))) { *(nextTokPtr) = (ptr); return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if ((((const struct normal_encoding *) (enc))->isInvalid3(enc, ptr))) { *(nextTokPtr) = (ptr); return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if ((((const struct normal_encoding *) (enc))->isInvalid4(enc, ptr))) { *(nextTokPtr) = (ptr); return 0; } ptr += 4; break; case BT_NONXML: case BT_MALFORM: case BT_TRAIL: *(nextTokPtr) = (ptr); return 0;
    case BT_LT:
      ptr += 1;
      { if (! (end - ptr >= 1 * 1)) { return -1; } };
      if ((*(ptr) == 0x21)) {
        ptr += 1;
        { if (! (end - ptr >= 1 * 1)) { return -1; } };
        if ((*(ptr) == 0x5B)) {
          ++level;
          ptr += 1;
        }
      }
      break;
    case BT_RSQB:
      ptr += 1;
      { if (! (end - ptr >= 1 * 1)) { return -1; } };
      if ((*(ptr) == 0x5D)) {
        ptr += 1;
        { if (! (end - ptr >= 1 * 1)) { return -1; } };
        if ((*(ptr) == 0x3E)) {
          ptr += 1;
          if (level == 0) {
            *nextTokPtr = ptr;
            return 42;
          }
          --level;
        }
      }
      break;
    default:
      ptr += 1;
      break;
    }
  }
  return -1;
}



static int
normal_isPublicId(const ENCODING *enc, const char *ptr, const char *end,
                   const char **badPtr)
{
  ptr += 1;
  end -= 1;
  for (; (end - ptr >= 1 * 1); ptr += 1) {
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
    case BT_DIGIT:
    case BT_HEX:
    case BT_MINUS:
    case BT_APOS:
    case BT_LPAR:
    case BT_RPAR:
    case BT_PLUS:
    case BT_COMMA:
    case BT_SOL:
    case BT_EQUALS:
    case BT_QUEST:
    case BT_CR:
    case BT_LF:
    case BT_SEMI:
    case BT_EXCL:
    case BT_AST:
    case BT_PERCNT:
    case BT_NUM:

    case BT_COLON:

      break;
    case BT_S:
      if ((*(ptr) == 0x09)) {
        *badPtr = ptr;
        return 0;
      }
      break;
    case BT_NAME:
    case BT_NMSTRT:
      if (!((*(ptr)) & ~0x7f))
        break;

    default:
      switch ((*(ptr))) {
      case 0x24:
      case 0x40:
        break;
      default:
        *badPtr = ptr;
        return 0;
      }
      break;
    }
  }
  return 1;
}






static int
normal_getAtts(const ENCODING *enc, const char *ptr,
                int attsMax, ATTRIBUTE *atts)
{
  enum { other, inName, inValue } state = inName;
  int nAtts = 0;
  int open = 0;


  for (ptr += 1;; ptr += 1) {
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
# 1450 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_impl.c"
    case BT_LEAD2: if (state == other) { if (nAtts < attsMax) { atts[nAtts].name = ptr; atts[nAtts].normalized = 1; } state = inName; } ptr += (2 - 1); break; case BT_LEAD3: if (state == other) { if (nAtts < attsMax) { atts[nAtts].name = ptr; atts[nAtts].normalized = 1; } state = inName; } ptr += (3 - 1); break; case BT_LEAD4: if (state == other) { if (nAtts < attsMax) { atts[nAtts].name = ptr; atts[nAtts].normalized = 1; } state = inName; } ptr += (4 - 1); break;

    case BT_NONASCII:
    case BT_NMSTRT:
    case BT_HEX:
      if (state == other) { if (nAtts < attsMax) { atts[nAtts].name = ptr; atts[nAtts].normalized = 1; } state = inName; }
      break;

    case BT_QUOT:
      if (state != inValue) {
        if (nAtts < attsMax)
          atts[nAtts].valuePtr = ptr + 1;
        state = inValue;
        open = BT_QUOT;
      }
      else if (open == BT_QUOT) {
        state = other;
        if (nAtts < attsMax)
          atts[nAtts].valueEnd = ptr;
        nAtts++;
      }
      break;
    case BT_APOS:
      if (state != inValue) {
        if (nAtts < attsMax)
          atts[nAtts].valuePtr = ptr + 1;
        state = inValue;
        open = BT_APOS;
      }
      else if (open == BT_APOS) {
        state = other;
        if (nAtts < attsMax)
          atts[nAtts].valueEnd = ptr;
        nAtts++;
      }
      break;
    case BT_AMP:
      if (nAtts < attsMax)
        atts[nAtts].normalized = 0;
      break;
    case BT_S:
      if (state == inName)
        state = other;
      else if (state == inValue
               && nAtts < attsMax
               && atts[nAtts].normalized
               && (ptr == atts[nAtts].valuePtr
                   || (*(ptr)) != 0x20
                   || (*(ptr + 1)) == 0x20
                   || (((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr + 1)]) == open))
        atts[nAtts].normalized = 0;
      break;
    case BT_CR: case BT_LF:


      if (state == inName)
        state = other;
      else if (state == inValue && nAtts < attsMax)
        atts[nAtts].normalized = 0;
      break;
    case BT_GT:
    case BT_SOL:
      if (state != inValue)
        return nAtts;
      break;
    default:
      break;
    }
  }

}

static int
normal_charRefNumber(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *ptr)
{
  int result = 0;

  ptr += 2*1;
  if ((*(ptr) == 0x78)) {
    for (ptr += 1;
         !(*(ptr) == 0x3B);
         ptr += 1) {
      int c = (*(ptr));
      switch (c) {
      case 0x30: case 0x31: case 0x32: case 0x33: case 0x34:
      case 0x35: case 0x36: case 0x37: case 0x38: case 0x39:
        result <<= 4;
        result |= (c - 0x30);
        break;
      case 0x41: case 0x42: case 0x43:
      case 0x44: case 0x45: case 0x46:
        result <<= 4;
        result += 10 + (c - 0x41);
        break;
      case 0x61: case 0x62: case 0x63:
      case 0x64: case 0x65: case 0x66:
        result <<= 4;
        result += 10 + (c - 0x61);
        break;
      }
      if (result >= 0x110000)
        return -1;
    }
  }
  else {
    for (; !(*(ptr) == 0x3B); ptr += 1) {
      int c = (*(ptr));
      result *= 10;
      result += (c - 0x30);
      if (result >= 0x110000)
        return -1;
    }
  }
  return checkCharRefNumber(result);
}

static int
normal_predefinedEntityName(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *ptr,
                             const char *end)
{
  switch ((end - ptr)/1) {
  case 2:
    if ((*(ptr + 1) == 0x74)) {
      switch ((*(ptr))) {
      case 0x6C:
        return 0x3C;
      case 0x67:
        return 0x3E;
      }
    }
    break;
  case 3:
    if ((*(ptr) == 0x61)) {
      ptr += 1;
      if ((*(ptr) == 0x6D)) {
        ptr += 1;
        if ((*(ptr) == 0x70))
          return 0x26;
      }
    }
    break;
  case 4:
    switch ((*(ptr))) {
    case 0x71:
      ptr += 1;
      if ((*(ptr) == 0x75)) {
        ptr += 1;
        if ((*(ptr) == 0x6F)) {
          ptr += 1;
          if ((*(ptr) == 0x74))
            return 0x22;
        }
      }
      break;
    case 0x61:
      ptr += 1;
      if ((*(ptr) == 0x70)) {
        ptr += 1;
        if ((*(ptr) == 0x6F)) {
          ptr += 1;
          if ((*(ptr) == 0x73))
            return 0x27;
        }
      }
      break;
    }
  }
  return 0;
}

static int
normal_sameName(const ENCODING *enc, const char *ptr1, const char *ptr2)
{
  for (;;) {
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr1)])) {




    case BT_LEAD4: if (*ptr1++ != *ptr2++) return 0; case BT_LEAD3: if (*ptr1++ != *ptr2++) return 0; case BT_LEAD2: if (*ptr1++ != *ptr2++) return 0;


      if (*ptr1++ != *ptr2++)
        return 0;
      break;
    case BT_NONASCII:
    case BT_NMSTRT:

    case BT_COLON:

    case BT_HEX:
    case BT_DIGIT:
    case BT_NAME:
    case BT_MINUS:
      if (*ptr2++ != *ptr1++)
        return 0;
      if (1 > 1) {
        if (*ptr2++ != *ptr1++)
          return 0;
        if (1 > 2) {
          if (*ptr2++ != *ptr1++)
            return 0;
          if (1 > 3) {
            if (*ptr2++ != *ptr1++)
              return 0;
          }
        }
      }
      break;
    default:
      if (1 == 1 && *ptr1 == *ptr2)
        return 1;
      switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr2)])) {
      case BT_LEAD2:
      case BT_LEAD3:
      case BT_LEAD4:
      case BT_NONASCII:
      case BT_NMSTRT:

      case BT_COLON:

      case BT_HEX:
      case BT_DIGIT:
      case BT_NAME:
      case BT_MINUS:
        return 0;
      default:
        return 1;
      }
    }
  }

}

static int
normal_nameMatchesAscii(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *ptr1,
                         const char *end1, const char *ptr2)
{
  for (; *ptr2; ptr1 += 1, ptr2++) {
    if (end1 - ptr1 < 1)
      return 0;
    if (!(*(ptr1) == *ptr2))
      return 0;
  }
  return ptr1 == end1;
}

static int
normal_nameLength(const ENCODING *enc, const char *ptr)
{
  const char *start = ptr;
  for (;;) {
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {


    case BT_LEAD2: ptr += 2; break; case BT_LEAD3: ptr += 3; break; case BT_LEAD4: ptr += 4; break;

    case BT_NONASCII:
    case BT_NMSTRT:

    case BT_COLON:

    case BT_HEX:
    case BT_DIGIT:
    case BT_NAME:
    case BT_MINUS:
      ptr += 1;
      break;
    default:
      return (int)(ptr - start);
    }
  }
}

static const char *
normal_skipS(const ENCODING *enc, const char *ptr)
{
  for (;;) {
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {
    case BT_LF:
    case BT_CR:
    case BT_S:
      ptr += 1;
      break;
    default:
      return ptr;
    }
  }
}

static void
normal_updatePosition(const ENCODING *enc,
                       const char *ptr,
                       const char *end,
                       POSITION *pos)
{
  while ((end - ptr >= 1 * 1)) {
    switch ((((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)])) {




    case BT_LEAD2: ptr += 2; break; case BT_LEAD3: ptr += 3; break; case BT_LEAD4: ptr += 4; break;

    case BT_LF:
      pos->columnNumber = (XML_Size)-1;
      pos->lineNumber++;
      ptr += 1;
      break;
    case BT_CR:
      pos->lineNumber++;
      ptr += 1;
      if ((end - ptr >= 1 * 1) && (((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)]) == BT_LF)
        ptr += 1;
      pos->columnNumber = (XML_Size)-1;
      break;
    default:
      ptr += 1;
      break;
    }
    pos->columnNumber++;
  }
}
# 313 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
# 325 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
enum {
  UTF8_cval1 = 0x00,
  UTF8_cval2 = 0xc0,
  UTF8_cval3 = 0xe0,
  UTF8_cval4 = 0xf0
};

void
align_limit_to_full_utf8_characters(const char * from, const char ** fromLimRef)
{
  const char * fromLim = *fromLimRef;
  size_t walked = 0;
  for (; fromLim > from; fromLim--, walked++) {
    const unsigned char prev = (unsigned char)fromLim[-1];
    if ((prev & 0xf8u) == 0xf0u) {
      if (walked + 1 >= 4) {
        fromLim += 4 - 1;
        break;
      } else {
        walked = 0;
      }
    } else if ((prev & 0xf0u) == 0xe0u) {
      if (walked + 1 >= 3) {
        fromLim += 3 - 1;
        break;
      } else {
        walked = 0;
      }
    } else if ((prev & 0xe0u) == 0xc0u) {
      if (walked + 1 >= 2) {
        fromLim += 2 - 1;
        break;
      } else {
        walked = 0;
      }
    } else if ((prev & 0x80u) == 0x00u) {
      break;
    }
  }
  *fromLimRef = fromLim;
}

static enum XML_Convert_Result
utf8_toUtf8(const ENCODING *UNUSED_enc __attribute__((__unused__)),
            const char **fromP, const char *fromLim,
            char **toP, const char *toLim)
{
  enum XML_Convert_Result res = XML_CONVERT_COMPLETED;
  char *to;
  const char *from;
  if (fromLim - *fromP > toLim - *toP) {

    res = XML_CONVERT_OUTPUT_EXHAUSTED;
    fromLim = *fromP + (toLim - *toP);
    align_limit_to_full_utf8_characters(*fromP, &fromLim);
  }
  for (to = *toP, from = *fromP; (from < fromLim) && (to < toLim); from++, to++)
    *to = *from;
  *fromP = from;
  *toP = to;

  if ((to == toLim) && (from < fromLim))
    return XML_CONVERT_OUTPUT_EXHAUSTED;
  else
    return res;
}

static enum XML_Convert_Result
utf8_toUtf16(const ENCODING *enc,
             const char **fromP, const char *fromLim,
             unsigned short **toP, const unsigned short *toLim)
{
  enum XML_Convert_Result res = XML_CONVERT_COMPLETED;
  unsigned short *to = *toP;
  const char *from = *fromP;
  while (from < fromLim && to < toLim) {
    switch (((struct normal_encoding *)enc)->type[(unsigned char)*from]) {
    case BT_LEAD2:
      if (fromLim - from < 2) {
        res = XML_CONVERT_INPUT_INCOMPLETE;
        goto after;
      }
      *to++ = (unsigned short)(((from[0] & 0x1f) << 6) | (from[1] & 0x3f));
      from += 2;
      break;
    case BT_LEAD3:
      if (fromLim - from < 3) {
        res = XML_CONVERT_INPUT_INCOMPLETE;
        goto after;
      }
      *to++ = (unsigned short)(((from[0] & 0xf) << 12)
                               | ((from[1] & 0x3f) << 6) | (from[2] & 0x3f));
      from += 3;
      break;
    case BT_LEAD4:
      {
        unsigned long n;
        if (toLim - to < 2) {
          res = XML_CONVERT_OUTPUT_EXHAUSTED;
          goto after;
        }
        if (fromLim - from < 4) {
          res = XML_CONVERT_INPUT_INCOMPLETE;
          goto after;
        }
        n = ((from[0] & 0x7) << 18) | ((from[1] & 0x3f) << 12)
            | ((from[2] & 0x3f) << 6) | (from[3] & 0x3f);
        n -= 0x10000;
        to[0] = (unsigned short)((n >> 10) | 0xD800);
        to[1] = (unsigned short)((n & 0x3FF) | 0xDC00);
        to += 2;
        from += 4;
      }
      break;
    default:
      *to++ = *from++;
      break;
    }
  }
  if (from < fromLim)
    res = XML_CONVERT_OUTPUT_EXHAUSTED;
after:
  *fromP = from;
  *toP = to;
  return res;
}


static const struct normal_encoding utf8_encoding_ns = {
  { { normal_prologTok, normal_contentTok, normal_cdataSectionTok , normal_ignoreSectionTok }, { normal_attributeValueTok, normal_entityValueTok }, normal_sameName, normal_nameMatchesAscii, normal_nameLength, normal_skipS, normal_getAtts, normal_charRefNumber, normal_predefinedEntityName, normal_updatePosition, normal_isPublicId, utf8_toUtf8, utf8_toUtf16, 1, 1, 0 },
  {
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/asciitab.h" 1




           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_S, BT_LF, BT_NONXML,
           BT_NONXML, BT_CR, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_S, BT_EXCL, BT_QUOT, BT_NUM,
           BT_OTHER, BT_PERCNT, BT_AMP, BT_APOS,
           BT_LPAR, BT_RPAR, BT_AST, BT_PLUS,
           BT_COMMA, BT_MINUS, BT_NAME, BT_SOL,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_COLON, BT_SEMI,
           BT_LT, BT_EQUALS, BT_GT, BT_QUEST,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_LSQB,
           BT_OTHER, BT_RSQB, BT_OTHER, BT_NMSTRT,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_VERBAR, BT_OTHER, BT_OTHER, BT_OTHER,
# 457 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/utf8tab.h" 1





           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD3, BT_LEAD3, BT_LEAD3, BT_LEAD3,
           BT_LEAD3, BT_LEAD3, BT_LEAD3, BT_LEAD3,
           BT_LEAD3, BT_LEAD3, BT_LEAD3, BT_LEAD3,
           BT_LEAD3, BT_LEAD3, BT_LEAD3, BT_LEAD3,
           BT_LEAD4, BT_LEAD4, BT_LEAD4, BT_LEAD4,
           BT_LEAD4, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_MALFORM, BT_MALFORM,
# 458 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
  },
  utf8_isName2, utf8_isName3, isNever, utf8_isNmstrt2, utf8_isNmstrt3, isNever, utf8_isInvalid2, utf8_isInvalid3, utf8_isInvalid4
};


static const struct normal_encoding utf8_encoding = {
  { { normal_prologTok, normal_contentTok, normal_cdataSectionTok , normal_ignoreSectionTok }, { normal_attributeValueTok, normal_entityValueTok }, normal_sameName, normal_nameMatchesAscii, normal_nameLength, normal_skipS, normal_getAtts, normal_charRefNumber, normal_predefinedEntityName, normal_updatePosition, normal_isPublicId, utf8_toUtf8, utf8_toUtf16, 1, 1, 0 },
  {

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/asciitab.h" 1




           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_S, BT_LF, BT_NONXML,
           BT_NONXML, BT_CR, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_S, BT_EXCL, BT_QUOT, BT_NUM,
           BT_OTHER, BT_PERCNT, BT_AMP, BT_APOS,
           BT_LPAR, BT_RPAR, BT_AST, BT_PLUS,
           BT_COMMA, BT_MINUS, BT_NAME, BT_SOL,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_NMSTRT, BT_SEMI,
           BT_LT, BT_EQUALS, BT_GT, BT_QUEST,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_LSQB,
           BT_OTHER, BT_RSQB, BT_OTHER, BT_NMSTRT,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_VERBAR, BT_OTHER, BT_OTHER, BT_OTHER,
# 468 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/utf8tab.h" 1





           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD3, BT_LEAD3, BT_LEAD3, BT_LEAD3,
           BT_LEAD3, BT_LEAD3, BT_LEAD3, BT_LEAD3,
           BT_LEAD3, BT_LEAD3, BT_LEAD3, BT_LEAD3,
           BT_LEAD3, BT_LEAD3, BT_LEAD3, BT_LEAD3,
           BT_LEAD4, BT_LEAD4, BT_LEAD4, BT_LEAD4,
           BT_LEAD4, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_MALFORM, BT_MALFORM,
# 470 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
  },
  utf8_isName2, utf8_isName3, isNever, utf8_isNmstrt2, utf8_isNmstrt3, isNever, utf8_isInvalid2, utf8_isInvalid3, utf8_isInvalid4
};



static const struct normal_encoding internal_utf8_encoding_ns = {
  { { normal_prologTok, normal_contentTok, normal_cdataSectionTok , normal_ignoreSectionTok }, { normal_attributeValueTok, normal_entityValueTok }, normal_sameName, normal_nameMatchesAscii, normal_nameLength, normal_skipS, normal_getAtts, normal_charRefNumber, normal_predefinedEntityName, normal_updatePosition, normal_isPublicId, utf8_toUtf8, utf8_toUtf16, 1, 1, 0 },
  {
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/iasciitab.h" 1





           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_S, BT_LF, BT_NONXML,
           BT_NONXML, BT_S, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_S, BT_EXCL, BT_QUOT, BT_NUM,
           BT_OTHER, BT_PERCNT, BT_AMP, BT_APOS,
           BT_LPAR, BT_RPAR, BT_AST, BT_PLUS,
           BT_COMMA, BT_MINUS, BT_NAME, BT_SOL,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_COLON, BT_SEMI,
           BT_LT, BT_EQUALS, BT_GT, BT_QUEST,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_LSQB,
           BT_OTHER, BT_RSQB, BT_OTHER, BT_NMSTRT,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_VERBAR, BT_OTHER, BT_OTHER, BT_OTHER,
# 480 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/utf8tab.h" 1





           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD3, BT_LEAD3, BT_LEAD3, BT_LEAD3,
           BT_LEAD3, BT_LEAD3, BT_LEAD3, BT_LEAD3,
           BT_LEAD3, BT_LEAD3, BT_LEAD3, BT_LEAD3,
           BT_LEAD3, BT_LEAD3, BT_LEAD3, BT_LEAD3,
           BT_LEAD4, BT_LEAD4, BT_LEAD4, BT_LEAD4,
           BT_LEAD4, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_MALFORM, BT_MALFORM,
# 481 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
  },
  utf8_isName2, utf8_isName3, isNever, utf8_isNmstrt2, utf8_isNmstrt3, isNever, utf8_isInvalid2, utf8_isInvalid3, utf8_isInvalid4
};



static const struct normal_encoding internal_utf8_encoding = {
  { { normal_prologTok, normal_contentTok, normal_cdataSectionTok , normal_ignoreSectionTok }, { normal_attributeValueTok, normal_entityValueTok }, normal_sameName, normal_nameMatchesAscii, normal_nameLength, normal_skipS, normal_getAtts, normal_charRefNumber, normal_predefinedEntityName, normal_updatePosition, normal_isPublicId, utf8_toUtf8, utf8_toUtf16, 1, 1, 0 },
  {

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/iasciitab.h" 1





           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_S, BT_LF, BT_NONXML,
           BT_NONXML, BT_S, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_S, BT_EXCL, BT_QUOT, BT_NUM,
           BT_OTHER, BT_PERCNT, BT_AMP, BT_APOS,
           BT_LPAR, BT_RPAR, BT_AST, BT_PLUS,
           BT_COMMA, BT_MINUS, BT_NAME, BT_SOL,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_NMSTRT, BT_SEMI,
           BT_LT, BT_EQUALS, BT_GT, BT_QUEST,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_LSQB,
           BT_OTHER, BT_RSQB, BT_OTHER, BT_NMSTRT,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_VERBAR, BT_OTHER, BT_OTHER, BT_OTHER,
# 492 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/utf8tab.h" 1





           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_TRAIL, BT_TRAIL, BT_TRAIL, BT_TRAIL,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD2, BT_LEAD2, BT_LEAD2, BT_LEAD2,
           BT_LEAD3, BT_LEAD3, BT_LEAD3, BT_LEAD3,
           BT_LEAD3, BT_LEAD3, BT_LEAD3, BT_LEAD3,
           BT_LEAD3, BT_LEAD3, BT_LEAD3, BT_LEAD3,
           BT_LEAD3, BT_LEAD3, BT_LEAD3, BT_LEAD3,
           BT_LEAD4, BT_LEAD4, BT_LEAD4, BT_LEAD4,
           BT_LEAD4, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_MALFORM, BT_MALFORM,
# 494 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
  },
  utf8_isName2, utf8_isName3, isNever, utf8_isNmstrt2, utf8_isNmstrt3, isNever, utf8_isInvalid2, utf8_isInvalid3, utf8_isInvalid4
};

static enum XML_Convert_Result
latin1_toUtf8(const ENCODING *UNUSED_enc __attribute__((__unused__)),
              const char **fromP, const char *fromLim,
              char **toP, const char *toLim)
{
  for (;;) {
    unsigned char c;
    if (*fromP == fromLim)
      return XML_CONVERT_COMPLETED;
    c = (unsigned char)**fromP;
    if (c & 0x80) {
      if (toLim - *toP < 2)
        return XML_CONVERT_OUTPUT_EXHAUSTED;
      *(*toP)++ = (char)((c >> 6) | UTF8_cval2);
      *(*toP)++ = (char)((c & 0x3f) | 0x80);
      (*fromP)++;
    }
    else {
      if (*toP == toLim)
        return XML_CONVERT_OUTPUT_EXHAUSTED;
      *(*toP)++ = *(*fromP)++;
    }
  }
}

static enum XML_Convert_Result
latin1_toUtf16(const ENCODING *UNUSED_enc __attribute__((__unused__)),
               const char **fromP, const char *fromLim,
               unsigned short **toP, const unsigned short *toLim)
{
  while (*fromP < fromLim && *toP < toLim)
    *(*toP)++ = (unsigned char)*(*fromP)++;

  if ((*toP == toLim) && (*fromP < fromLim))
    return XML_CONVERT_OUTPUT_EXHAUSTED;
  else
    return XML_CONVERT_COMPLETED;
}



static const struct normal_encoding latin1_encoding_ns = {
  { { normal_prologTok, normal_contentTok, normal_cdataSectionTok , normal_ignoreSectionTok }, { normal_attributeValueTok, normal_entityValueTok }, normal_sameName, normal_nameMatchesAscii, normal_nameLength, normal_skipS, normal_getAtts, normal_charRefNumber, normal_predefinedEntityName, normal_updatePosition, normal_isPublicId, latin1_toUtf8, latin1_toUtf16, 1, 0, 0 },
  {
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/asciitab.h" 1




           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_S, BT_LF, BT_NONXML,
           BT_NONXML, BT_CR, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_S, BT_EXCL, BT_QUOT, BT_NUM,
           BT_OTHER, BT_PERCNT, BT_AMP, BT_APOS,
           BT_LPAR, BT_RPAR, BT_AST, BT_PLUS,
           BT_COMMA, BT_MINUS, BT_NAME, BT_SOL,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_COLON, BT_SEMI,
           BT_LT, BT_EQUALS, BT_GT, BT_QUEST,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_LSQB,
           BT_OTHER, BT_RSQB, BT_OTHER, BT_NMSTRT,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_VERBAR, BT_OTHER, BT_OTHER, BT_OTHER,
# 543 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/latin1tab.h" 1




           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_NMSTRT, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_NMSTRT, BT_OTHER, BT_NAME,
           BT_OTHER, BT_OTHER, BT_NMSTRT, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
# 544 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
  },
  
# 545 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 545 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 545 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 545 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 545 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 545 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 545 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 545 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 545 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 545 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 545 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 545 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 545 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 545 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 545 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 545 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 545 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)

# 546 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
};



static const struct normal_encoding latin1_encoding = {
  { { normal_prologTok, normal_contentTok, normal_cdataSectionTok , normal_ignoreSectionTok }, { normal_attributeValueTok, normal_entityValueTok }, normal_sameName, normal_nameMatchesAscii, normal_nameLength, normal_skipS, normal_getAtts, normal_charRefNumber, normal_predefinedEntityName, normal_updatePosition, normal_isPublicId, latin1_toUtf8, latin1_toUtf16, 1, 0, 0 },
  {

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/asciitab.h" 1




           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_S, BT_LF, BT_NONXML,
           BT_NONXML, BT_CR, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_S, BT_EXCL, BT_QUOT, BT_NUM,
           BT_OTHER, BT_PERCNT, BT_AMP, BT_APOS,
           BT_LPAR, BT_RPAR, BT_AST, BT_PLUS,
           BT_COMMA, BT_MINUS, BT_NAME, BT_SOL,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_NMSTRT, BT_SEMI,
           BT_LT, BT_EQUALS, BT_GT, BT_QUEST,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_LSQB,
           BT_OTHER, BT_RSQB, BT_OTHER, BT_NMSTRT,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_VERBAR, BT_OTHER, BT_OTHER, BT_OTHER,
# 555 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/latin1tab.h" 1




           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_NMSTRT, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_NMSTRT, BT_OTHER, BT_NAME,
           BT_OTHER, BT_OTHER, BT_NMSTRT, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
# 557 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
  },
  
# 558 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 558 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 558 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 558 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 558 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 558 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 558 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 558 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 558 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 558 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 558 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 558 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 558 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 558 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 558 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 558 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 558 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)

# 559 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
};

static enum XML_Convert_Result
ascii_toUtf8(const ENCODING *UNUSED_enc __attribute__((__unused__)),
             const char **fromP, const char *fromLim,
             char **toP, const char *toLim)
{
  while (*fromP < fromLim && *toP < toLim)
    *(*toP)++ = *(*fromP)++;

  if ((*toP == toLim) && (*fromP < fromLim))
    return XML_CONVERT_OUTPUT_EXHAUSTED;
  else
    return XML_CONVERT_COMPLETED;
}



static const struct normal_encoding ascii_encoding_ns = {
  { { normal_prologTok, normal_contentTok, normal_cdataSectionTok , normal_ignoreSectionTok }, { normal_attributeValueTok, normal_entityValueTok }, normal_sameName, normal_nameMatchesAscii, normal_nameLength, normal_skipS, normal_getAtts, normal_charRefNumber, normal_predefinedEntityName, normal_updatePosition, normal_isPublicId, ascii_toUtf8, latin1_toUtf16, 1, 1, 0 },
  {
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/asciitab.h" 1




           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_S, BT_LF, BT_NONXML,
           BT_NONXML, BT_CR, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_S, BT_EXCL, BT_QUOT, BT_NUM,
           BT_OTHER, BT_PERCNT, BT_AMP, BT_APOS,
           BT_LPAR, BT_RPAR, BT_AST, BT_PLUS,
           BT_COMMA, BT_MINUS, BT_NAME, BT_SOL,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_COLON, BT_SEMI,
           BT_LT, BT_EQUALS, BT_GT, BT_QUEST,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_LSQB,
           BT_OTHER, BT_RSQB, BT_OTHER, BT_NMSTRT,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_VERBAR, BT_OTHER, BT_OTHER, BT_OTHER,
# 581 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2

  },
  
# 583 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 583 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 583 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 583 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 583 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 583 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 583 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 583 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 583 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 583 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 583 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 583 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 583 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 583 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 583 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 583 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 583 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)

# 584 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
};



static const struct normal_encoding ascii_encoding = {
  { { normal_prologTok, normal_contentTok, normal_cdataSectionTok , normal_ignoreSectionTok }, { normal_attributeValueTok, normal_entityValueTok }, normal_sameName, normal_nameMatchesAscii, normal_nameLength, normal_skipS, normal_getAtts, normal_charRefNumber, normal_predefinedEntityName, normal_updatePosition, normal_isPublicId, ascii_toUtf8, latin1_toUtf16, 1, 1, 0 },
  {

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/asciitab.h" 1




           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_S, BT_LF, BT_NONXML,
           BT_NONXML, BT_CR, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_S, BT_EXCL, BT_QUOT, BT_NUM,
           BT_OTHER, BT_PERCNT, BT_AMP, BT_APOS,
           BT_LPAR, BT_RPAR, BT_AST, BT_PLUS,
           BT_COMMA, BT_MINUS, BT_NAME, BT_SOL,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_NMSTRT, BT_SEMI,
           BT_LT, BT_EQUALS, BT_GT, BT_QUEST,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_LSQB,
           BT_OTHER, BT_RSQB, BT_OTHER, BT_NMSTRT,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_VERBAR, BT_OTHER, BT_OTHER, BT_OTHER,
# 593 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2


  },
  
# 596 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 596 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 596 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 596 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 596 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 596 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 596 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 596 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 596 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 596 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 596 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 596 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 596 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 596 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 596 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)
# 596 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                      , 
# 596 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                      ((void *)0)

# 597 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
};

static int
unicode_byte_type(char hi, char lo)
{
  switch ((unsigned char)hi) {
  case 0xD8: case 0xD9: case 0xDA: case 0xDB:
    return BT_LEAD4;
  case 0xDC: case 0xDD: case 0xDE: case 0xDF:
    return BT_TRAIL;
  case 0xFF:
    switch ((unsigned char)lo) {
    case 0xFF:
    case 0xFE:
      return BT_NONXML;
    }
    break;
  }
  return BT_NONASCII;
}
# 717 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
static enum XML_Convert_Result little2_toUtf8(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char **fromP, const char *fromLim, char **toP, const char *toLim) { const char *from = *fromP; fromLim = from + (((fromLim - from) >> 1) << 1); for (; from < fromLim; from += 2) { int plane; unsigned char lo2; unsigned char lo = ((unsigned char)(from)[0]); unsigned char hi = ((unsigned char)(from)[1]); switch (hi) { case 0: if (lo < 0x80) { if (*toP == toLim) { *fromP = from; return XML_CONVERT_OUTPUT_EXHAUSTED; } *(*toP)++ = lo; break; } case 0x1: case 0x2: case 0x3: case 0x4: case 0x5: case 0x6: case 0x7: if (toLim - *toP < 2) { *fromP = from; return XML_CONVERT_OUTPUT_EXHAUSTED; } *(*toP)++ = ((lo >> 6) | (hi << 2) | UTF8_cval2); *(*toP)++ = ((lo & 0x3f) | 0x80); break; default: if (toLim - *toP < 3) { *fromP = from; return XML_CONVERT_OUTPUT_EXHAUSTED; } *(*toP)++ = ((hi >> 4) | UTF8_cval3); *(*toP)++ = (((hi & 0xf) << 2) | (lo >> 6) | 0x80); *(*toP)++ = ((lo & 0x3f) | 0x80); break; case 0xD8: case 0xD9: case 0xDA: case 0xDB: if (toLim - *toP < 4) { *fromP = from; return XML_CONVERT_OUTPUT_EXHAUSTED; } if (fromLim - from < 4) { *fromP = from; return XML_CONVERT_INPUT_INCOMPLETE; } plane = (((hi & 0x3) << 2) | ((lo >> 6) & 0x3)) + 1; *(*toP)++ = ((plane >> 2) | UTF8_cval4); *(*toP)++ = (((lo >> 2) & 0xF) | ((plane & 0x3) << 4) | 0x80); from += 2; lo2 = ((unsigned char)(from)[0]); *(*toP)++ = (((lo & 0x3) << 4) | ((((unsigned char)(from)[1]) & 0x3) << 2) | (lo2 >> 6) | 0x80); *(*toP)++ = ((lo2 & 0x3f) | 0x80); break; } } *fromP = from; if (from < fromLim) return XML_CONVERT_INPUT_INCOMPLETE; else return XML_CONVERT_COMPLETED; }
static enum XML_Convert_Result little2_toUtf16(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char **fromP, const char *fromLim, unsigned short **toP, const unsigned short *toLim) { enum XML_Convert_Result res = XML_CONVERT_COMPLETED; fromLim = *fromP + (((fromLim - *fromP) >> 1) << 1); if (fromLim - *fromP > ((toLim - *toP) << 1) && (((unsigned char)(fromLim - 2)[1]) & 0xF8) == 0xD8) { fromLim -= 2; res = XML_CONVERT_INPUT_INCOMPLETE; } for (; *fromP < fromLim && *toP < toLim; *fromP += 2) *(*toP)++ = (((unsigned char)(*fromP)[1]) << 8) | ((unsigned char)(*fromP)[0]); if ((*toP == toLim) && (*fromP < fromLim)) return XML_CONVERT_OUTPUT_EXHAUSTED; else return res; }
# 729 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
static enum XML_Convert_Result big2_toUtf8(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char **fromP, const char *fromLim, char **toP, const char *toLim) { const char *from = *fromP; fromLim = from + (((fromLim - from) >> 1) << 1); for (; from < fromLim; from += 2) { int plane; unsigned char lo2; unsigned char lo = ((unsigned char)(from)[1]); unsigned char hi = ((unsigned char)(from)[0]); switch (hi) { case 0: if (lo < 0x80) { if (*toP == toLim) { *fromP = from; return XML_CONVERT_OUTPUT_EXHAUSTED; } *(*toP)++ = lo; break; } case 0x1: case 0x2: case 0x3: case 0x4: case 0x5: case 0x6: case 0x7: if (toLim - *toP < 2) { *fromP = from; return XML_CONVERT_OUTPUT_EXHAUSTED; } *(*toP)++ = ((lo >> 6) | (hi << 2) | UTF8_cval2); *(*toP)++ = ((lo & 0x3f) | 0x80); break; default: if (toLim - *toP < 3) { *fromP = from; return XML_CONVERT_OUTPUT_EXHAUSTED; } *(*toP)++ = ((hi >> 4) | UTF8_cval3); *(*toP)++ = (((hi & 0xf) << 2) | (lo >> 6) | 0x80); *(*toP)++ = ((lo & 0x3f) | 0x80); break; case 0xD8: case 0xD9: case 0xDA: case 0xDB: if (toLim - *toP < 4) { *fromP = from; return XML_CONVERT_OUTPUT_EXHAUSTED; } if (fromLim - from < 4) { *fromP = from; return XML_CONVERT_INPUT_INCOMPLETE; } plane = (((hi & 0x3) << 2) | ((lo >> 6) & 0x3)) + 1; *(*toP)++ = ((plane >> 2) | UTF8_cval4); *(*toP)++ = (((lo >> 2) & 0xF) | ((plane & 0x3) << 4) | 0x80); from += 2; lo2 = ((unsigned char)(from)[1]); *(*toP)++ = (((lo & 0x3) << 4) | ((((unsigned char)(from)[0]) & 0x3) << 2) | (lo2 >> 6) | 0x80); *(*toP)++ = ((lo2 & 0x3f) | 0x80); break; } } *fromP = from; if (from < fromLim) return XML_CONVERT_INPUT_INCOMPLETE; else return XML_CONVERT_COMPLETED; }
static enum XML_Convert_Result big2_toUtf16(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char **fromP, const char *fromLim, unsigned short **toP, const unsigned short *toLim) { enum XML_Convert_Result res = XML_CONVERT_COMPLETED; fromLim = *fromP + (((fromLim - *fromP) >> 1) << 1); if (fromLim - *fromP > ((toLim - *toP) << 1) && (((unsigned char)(fromLim - 2)[0]) & 0xF8) == 0xD8) { fromLim -= 2; res = XML_CONVERT_INPUT_INCOMPLETE; } for (; *fromP < fromLim && *toP < toLim; *fromP += 2) *(*toP)++ = (((unsigned char)(*fromP)[0]) << 8) | ((unsigned char)(*fromP)[1]); if ((*toP == toLim) && (*fromP < fromLim)) return XML_CONVERT_OUTPUT_EXHAUSTED; else return res; }
# 797 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_impl.c" 1
# 112 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_impl.c"
static int
little2_scanComment(const ENCODING *enc, const char *ptr,
                    const char *end, const char **nextTokPtr)
{
  if ((end - ptr >= 1 * 2)) {
    if (!((ptr)[1] == 0 && (ptr)[0] == 0x2D)) {
      *nextTokPtr = ptr;
      return 0;
    }
    ptr += 2;
    while ((end - ptr >= 1 * 2)) {
      switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
      case BT_LEAD2: if (end - ptr < 2) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 4; break; case BT_NONXML: case BT_MALFORM: case BT_TRAIL: *(nextTokPtr) = (ptr); return 0;
      case BT_MINUS:
        ptr += 2;
        { if (! (end - ptr >= 1 * 2)) { return -1; } };
        if (((ptr)[1] == 0 && (ptr)[0] == 0x2D)) {
          ptr += 2;
          { if (! (end - ptr >= 1 * 2)) { return -1; } };
          if (!((ptr)[1] == 0 && (ptr)[0] == 0x3E)) {
            *nextTokPtr = ptr;
            return 0;
          }
          *nextTokPtr = ptr + 2;
          return 13;
        }
        break;
      default:
        ptr += 2;
        break;
      }
    }
  }
  return -1;
}



static int
little2_scanDecl(const ENCODING *enc, const char *ptr,
                 const char *end, const char **nextTokPtr)
{
  { if (! (end - ptr >= 1 * 2)) { return -1; } };
  switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
  case BT_MINUS:
    return little2_scanComment(enc, ptr + 2, end, nextTokPtr);
  case BT_LSQB:
    *nextTokPtr = ptr + 2;
    return 33;
  case BT_NMSTRT:
  case BT_HEX:
    ptr += 2;
    break;
  default:
    *nextTokPtr = ptr;
    return 0;
  }
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
    case BT_PERCNT:
      { if (! (end - ptr >= 2 * 2)) { return -1; } };

      switch (((ptr + 2)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr + 2)] : unicode_byte_type((ptr + 2)[1], (ptr + 2)[0]))) {
      case BT_S: case BT_CR: case BT_LF: case BT_PERCNT:
        *nextTokPtr = ptr;
        return 0;
      }

    case BT_S: case BT_CR: case BT_LF:
      *nextTokPtr = ptr;
      return 16;
    case BT_NMSTRT:
    case BT_HEX:
      ptr += 2;
      break;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -1;
}

static int
little2_checkPiTarget(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *ptr,
                      const char *end, int *tokPtr)
{
  int upper = 0;
  *tokPtr = 11;
  if (end - ptr != 2*3)
    return 1;
  switch (((ptr)[1] == 0 ? (ptr)[0] : -1)) {
  case 0x78:
    break;
  case 0x58:
    upper = 1;
    break;
  default:
    return 1;
  }
  ptr += 2;
  switch (((ptr)[1] == 0 ? (ptr)[0] : -1)) {
  case 0x6D:
    break;
  case 0x4D:
    upper = 1;
    break;
  default:
    return 1;
  }
  ptr += 2;
  switch (((ptr)[1] == 0 ? (ptr)[0] : -1)) {
  case 0x6C:
    break;
  case 0x4C:
    upper = 1;
    break;
  default:
    return 1;
  }
  if (upper)
    return 0;
  *tokPtr = 12;
  return 1;
}



static int
little2_scanPi(const ENCODING *enc, const char *ptr,
               const char *end, const char **nextTokPtr)
{
  int tok;
  const char *target = ptr;
  { if (! (end - ptr >= 1 * 2)) { return -1; } };
  switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
  case BT_NONASCII: if (!(namingBitmap[(nmstrtPages[(unsigned char)ptr[1]] << 3) + (((unsigned char)ptr[0]) >> 5)] & (1u << (((unsigned char)ptr[0]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
  default:
    *nextTokPtr = ptr;
    return 0;
  }
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
    case BT_NONASCII: if (!(namingBitmap[(namePages[(unsigned char)ptr[1]] << 3) + (((unsigned char)ptr[0]) >> 5)] & (1u << (((unsigned char)ptr[0]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
    case BT_S: case BT_CR: case BT_LF:
      if (!little2_checkPiTarget(enc, target, ptr, &tok)) {
        *nextTokPtr = ptr;
        return 0;
      }
      ptr += 2;
      while ((end - ptr >= 1 * 2)) {
        switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
        case BT_LEAD2: if (end - ptr < 2) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 4; break; case BT_NONXML: case BT_MALFORM: case BT_TRAIL: *(nextTokPtr) = (ptr); return 0;
        case BT_QUEST:
          ptr += 2;
          { if (! (end - ptr >= 1 * 2)) { return -1; } };
          if (((ptr)[1] == 0 && (ptr)[0] == 0x3E)) {
            *nextTokPtr = ptr + 2;
            return tok;
          }
          break;
        default:
          ptr += 2;
          break;
        }
      }
      return -1;
    case BT_QUEST:
      if (!little2_checkPiTarget(enc, target, ptr, &tok)) {
        *nextTokPtr = ptr;
        return 0;
      }
      ptr += 2;
      { if (! (end - ptr >= 1 * 2)) { return -1; } };
      if (((ptr)[1] == 0 && (ptr)[0] == 0x3E)) {
        *nextTokPtr = ptr + 2;
        return tok;
      }

    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -1;
}

static int
little2_scanCdataSection(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *ptr,
                         const char *end, const char **nextTokPtr)
{
  static const char CDATA_LSQB[] = { 0x43, 0x44, 0x41,
                                     0x54, 0x41, 0x5B };
  int i;

  { if (! (end - ptr >= 6 * 2)) { return -1; } };
  for (i = 0; i < 6; i++, ptr += 2) {
    if (!((ptr)[1] == 0 && (ptr)[0] == CDATA_LSQB[i])) {
      *nextTokPtr = ptr;
      return 0;
    }
  }
  *nextTokPtr = ptr;
  return 8;
}

static int
little2_cdataSectionTok(const ENCODING *enc, const char *ptr,
                        const char *end, const char **nextTokPtr)
{
  if (ptr >= end)
    return -4;
  if (2 > 1) {
    size_t n = end - ptr;
    if (n & (2 - 1)) {
      n &= ~(2 - 1);
      if (n == 0)
        return -1;
      end = ptr + n;
    }
  }
  switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
  case BT_RSQB:
    ptr += 2;
    { if (! (end - ptr >= 1 * 2)) { return -1; } };
    if (!((ptr)[1] == 0 && (ptr)[0] == 0x5D))
      break;
    ptr += 2;
    { if (! (end - ptr >= 1 * 2)) { return -1; } };
    if (!((ptr)[1] == 0 && (ptr)[0] == 0x3E)) {
      ptr -= 2;
      break;
    }
    *nextTokPtr = ptr + 2;
    return 40;
  case BT_CR:
    ptr += 2;
    { if (! (end - ptr >= 1 * 2)) { return -1; } };
    if (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0])) == BT_LF)
      ptr += 2;
    *nextTokPtr = ptr;
    return 7;
  case BT_LF:
    *nextTokPtr = ptr + 2;
    return 7;
  case BT_LEAD2: if (end - ptr < 2) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 4; break; case BT_NONXML: case BT_MALFORM: case BT_TRAIL: *(nextTokPtr) = (ptr); return 0;
  default:
    ptr += 2;
    break;
  }
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
# 372 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_impl.c"
    case BT_LEAD2: if (end - ptr < 2 || (0)) { *nextTokPtr = ptr; return 6; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3 || (0)) { *nextTokPtr = ptr; return 6; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4 || (0)) { *nextTokPtr = ptr; return 6; } ptr += 4; break;

    case BT_NONXML:
    case BT_MALFORM:
    case BT_TRAIL:
    case BT_CR:
    case BT_LF:
    case BT_RSQB:
      *nextTokPtr = ptr;
      return 6;
    default:
      ptr += 2;
      break;
    }
  }
  *nextTokPtr = ptr;
  return 6;
}



static int
little2_scanEndTag(const ENCODING *enc, const char *ptr,
                   const char *end, const char **nextTokPtr)
{
  { if (! (end - ptr >= 1 * 2)) { return -1; } };
  switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
  case BT_NONASCII: if (!(namingBitmap[(nmstrtPages[(unsigned char)ptr[1]] << 3) + (((unsigned char)ptr[0]) >> 5)] & (1u << (((unsigned char)ptr[0]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
  default:
    *nextTokPtr = ptr;
    return 0;
  }
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
    case BT_NONASCII: if (!(namingBitmap[(namePages[(unsigned char)ptr[1]] << 3) + (((unsigned char)ptr[0]) >> 5)] & (1u << (((unsigned char)ptr[0]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
    case BT_S: case BT_CR: case BT_LF:
      for (ptr += 2; (end - ptr >= 1 * 2); ptr += 2) {
        switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
        case BT_S: case BT_CR: case BT_LF:
          break;
        case BT_GT:
          *nextTokPtr = ptr + 2;
          return 5;
        default:
          *nextTokPtr = ptr;
          return 0;
        }
      }
      return -1;

    case BT_COLON:


      ptr += 2;
      break;

    case BT_GT:
      *nextTokPtr = ptr + 2;
      return 5;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -1;
}



static int
little2_scanHexCharRef(const ENCODING *enc, const char *ptr,
                       const char *end, const char **nextTokPtr)
{
  if ((end - ptr >= 1 * 2)) {
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
    case BT_DIGIT:
    case BT_HEX:
      break;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
    for (ptr += 2; (end - ptr >= 1 * 2); ptr += 2) {
      switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
      case BT_DIGIT:
      case BT_HEX:
        break;
      case BT_SEMI:
        *nextTokPtr = ptr + 2;
        return 10;
      default:
        *nextTokPtr = ptr;
        return 0;
      }
    }
  }
  return -1;
}



static int
little2_scanCharRef(const ENCODING *enc, const char *ptr,
                    const char *end, const char **nextTokPtr)
{
  if ((end - ptr >= 1 * 2)) {
    if (((ptr)[1] == 0 && (ptr)[0] == 0x78))
      return little2_scanHexCharRef(enc, ptr + 2, end, nextTokPtr);
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
    case BT_DIGIT:
      break;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
    for (ptr += 2; (end - ptr >= 1 * 2); ptr += 2) {
      switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
      case BT_DIGIT:
        break;
      case BT_SEMI:
        *nextTokPtr = ptr + 2;
        return 10;
      default:
        *nextTokPtr = ptr;
        return 0;
      }
    }
  }
  return -1;
}



static int
little2_scanRef(const ENCODING *enc, const char *ptr, const char *end,
                const char **nextTokPtr)
{
  { if (! (end - ptr >= 1 * 2)) { return -1; } };
  switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
  case BT_NONASCII: if (!(namingBitmap[(nmstrtPages[(unsigned char)ptr[1]] << 3) + (((unsigned char)ptr[0]) >> 5)] & (1u << (((unsigned char)ptr[0]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
  case BT_NUM:
    return little2_scanCharRef(enc, ptr + 2, end, nextTokPtr);
  default:
    *nextTokPtr = ptr;
    return 0;
  }
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
    case BT_NONASCII: if (!(namingBitmap[(namePages[(unsigned char)ptr[1]] << 3) + (((unsigned char)ptr[0]) >> 5)] & (1u << (((unsigned char)ptr[0]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
    case BT_SEMI:
      *nextTokPtr = ptr + 2;
      return 9;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -1;
}



static int
little2_scanAtts(const ENCODING *enc, const char *ptr, const char *end,
                 const char **nextTokPtr)
{

  int hadColon = 0;

  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
    case BT_NONASCII: if (!(namingBitmap[(namePages[(unsigned char)ptr[1]] << 3) + (((unsigned char)ptr[0]) >> 5)] & (1u << (((unsigned char)ptr[0]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 4; break;

    case BT_COLON:
      if (hadColon) {
        *nextTokPtr = ptr;
        return 0;
      }
      hadColon = 1;
      ptr += 2;
      { if (! (end - ptr >= 1 * 2)) { return -1; } };
      switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
      case BT_NONASCII: if (!(namingBitmap[(nmstrtPages[(unsigned char)ptr[1]] << 3) + (((unsigned char)ptr[0]) >> 5)] & (1u << (((unsigned char)ptr[0]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
      default:
        *nextTokPtr = ptr;
        return 0;
      }
      break;

    case BT_S: case BT_CR: case BT_LF:
      for (;;) {
        int t;

        ptr += 2;
        { if (! (end - ptr >= 1 * 2)) { return -1; } };
        t = ((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]));
        if (t == BT_EQUALS)
          break;
        switch (t) {
        case BT_S:
        case BT_LF:
        case BT_CR:
          break;
        default:
          *nextTokPtr = ptr;
          return 0;
        }
      }

    case BT_EQUALS:
      {
        int open;

        hadColon = 0;

        for (;;) {
          ptr += 2;
          { if (! (end - ptr >= 1 * 2)) { return -1; } };
          open = ((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]));
          if (open == BT_QUOT || open == BT_APOS)
            break;
          switch (open) {
          case BT_S:
          case BT_LF:
          case BT_CR:
            break;
          default:
            *nextTokPtr = ptr;
            return 0;
          }
        }
        ptr += 2;

        for (;;) {
          int t;
          { if (! (end - ptr >= 1 * 2)) { return -1; } };
          t = ((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]));
          if (t == open)
            break;
          switch (t) {
          case BT_LEAD2: if (end - ptr < 2) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 4; break; case BT_NONXML: case BT_MALFORM: case BT_TRAIL: *(nextTokPtr) = (ptr); return 0;
          case BT_AMP:
            {
              int tok = little2_scanRef(enc, ptr + 2, end, &ptr);
              if (tok <= 0) {
                if (tok == 0)
                  *nextTokPtr = ptr;
                return tok;
              }
              break;
            }
          case BT_LT:
            *nextTokPtr = ptr;
            return 0;
          default:
            ptr += 2;
            break;
          }
        }
        ptr += 2;
        { if (! (end - ptr >= 1 * 2)) { return -1; } };
        switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
        case BT_S:
        case BT_CR:
        case BT_LF:
          break;
        case BT_SOL:
          goto sol;
        case BT_GT:
          goto gt;
        default:
          *nextTokPtr = ptr;
          return 0;
        }

        for (;;) {
          ptr += 2;
          { if (! (end - ptr >= 1 * 2)) { return -1; } };
          switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
          case BT_NONASCII: if (!(namingBitmap[(nmstrtPages[(unsigned char)ptr[1]] << 3) + (((unsigned char)ptr[0]) >> 5)] & (1u << (((unsigned char)ptr[0]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
          case BT_S: case BT_CR: case BT_LF:
            continue;
          case BT_GT:
          gt:
            *nextTokPtr = ptr + 2;
            return 1;
          case BT_SOL:
          sol:
            ptr += 2;
            { if (! (end - ptr >= 1 * 2)) { return -1; } };
            if (!((ptr)[1] == 0 && (ptr)[0] == 0x3E)) {
              *nextTokPtr = ptr;
              return 0;
            }
            *nextTokPtr = ptr + 2;
            return 3;
          default:
            *nextTokPtr = ptr;
            return 0;
          }
          break;
        }
        break;
      }
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -1;
}



static int
little2_scanLt(const ENCODING *enc, const char *ptr, const char *end,
               const char **nextTokPtr)
{

  int hadColon;

  { if (! (end - ptr >= 1 * 2)) { return -1; } };
  switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
  case BT_NONASCII: if (!(namingBitmap[(nmstrtPages[(unsigned char)ptr[1]] << 3) + (((unsigned char)ptr[0]) >> 5)] & (1u << (((unsigned char)ptr[0]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
  case BT_EXCL:
    ptr += 2;
    { if (! (end - ptr >= 1 * 2)) { return -1; } };
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
    case BT_MINUS:
      return little2_scanComment(enc, ptr + 2, end, nextTokPtr);
    case BT_LSQB:
      return little2_scanCdataSection(enc, ptr + 2,
                                      end, nextTokPtr);
    }
    *nextTokPtr = ptr;
    return 0;
  case BT_QUEST:
    return little2_scanPi(enc, ptr + 2, end, nextTokPtr);
  case BT_SOL:
    return little2_scanEndTag(enc, ptr + 2, end, nextTokPtr);
  default:
    *nextTokPtr = ptr;
    return 0;
  }

  hadColon = 0;


  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
    case BT_NONASCII: if (!(namingBitmap[(namePages[(unsigned char)ptr[1]] << 3) + (((unsigned char)ptr[0]) >> 5)] & (1u << (((unsigned char)ptr[0]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 4; break;

    case BT_COLON:
      if (hadColon) {
        *nextTokPtr = ptr;
        return 0;
      }
      hadColon = 1;
      ptr += 2;
      { if (! (end - ptr >= 1 * 2)) { return -1; } };
      switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
      case BT_NONASCII: if (!(namingBitmap[(nmstrtPages[(unsigned char)ptr[1]] << 3) + (((unsigned char)ptr[0]) >> 5)] & (1u << (((unsigned char)ptr[0]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
      default:
        *nextTokPtr = ptr;
        return 0;
      }
      break;

    case BT_S: case BT_CR: case BT_LF:
      {
        ptr += 2;
        while ((end - ptr >= 1 * 2)) {
          switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
          case BT_NONASCII: if (!(namingBitmap[(nmstrtPages[(unsigned char)ptr[1]] << 3) + (((unsigned char)ptr[0]) >> 5)] & (1u << (((unsigned char)ptr[0]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
          case BT_GT:
            goto gt;
          case BT_SOL:
            goto sol;
          case BT_S: case BT_CR: case BT_LF:
            ptr += 2;
            continue;
          default:
            *nextTokPtr = ptr;
            return 0;
          }
          return little2_scanAtts(enc, ptr, end, nextTokPtr);
        }
        return -1;
      }
    case BT_GT:
    gt:
      *nextTokPtr = ptr + 2;
      return 2;
    case BT_SOL:
    sol:
      ptr += 2;
      { if (! (end - ptr >= 1 * 2)) { return -1; } };
      if (!((ptr)[1] == 0 && (ptr)[0] == 0x3E)) {
        *nextTokPtr = ptr;
        return 0;
      }
      *nextTokPtr = ptr + 2;
      return 4;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -1;
}

static int
little2_contentTok(const ENCODING *enc, const char *ptr, const char *end,
                   const char **nextTokPtr)
{
  if (ptr >= end)
    return -4;
  if (2 > 1) {
    size_t n = end - ptr;
    if (n & (2 - 1)) {
      n &= ~(2 - 1);
      if (n == 0)
        return -1;
      end = ptr + n;
    }
  }
  switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
  case BT_LT:
    return little2_scanLt(enc, ptr + 2, end, nextTokPtr);
  case BT_AMP:
    return little2_scanRef(enc, ptr + 2, end, nextTokPtr);
  case BT_CR:
    ptr += 2;
    if (! (end - ptr >= 1 * 2))
      return -3;
    if (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0])) == BT_LF)
      ptr += 2;
    *nextTokPtr = ptr;
    return 7;
  case BT_LF:
    *nextTokPtr = ptr + 2;
    return 7;
  case BT_RSQB:
    ptr += 2;
    if (! (end - ptr >= 1 * 2))
      return -5;
    if (!((ptr)[1] == 0 && (ptr)[0] == 0x5D))
      break;
    ptr += 2;
    if (! (end - ptr >= 1 * 2))
      return -5;
    if (!((ptr)[1] == 0 && (ptr)[0] == 0x3E)) {
      ptr -= 2;
      break;
    }
    *nextTokPtr = ptr;
    return 0;
  case BT_LEAD2: if (end - ptr < 2) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 4; break; case BT_NONXML: case BT_MALFORM: case BT_TRAIL: *(nextTokPtr) = (ptr); return 0;
  default:
    ptr += 2;
    break;
  }
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
# 844 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_impl.c"
    case BT_LEAD2: if (end - ptr < 2 || (0)) { *nextTokPtr = ptr; return 6; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3 || (0)) { *nextTokPtr = ptr; return 6; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4 || (0)) { *nextTokPtr = ptr; return 6; } ptr += 4; break;

    case BT_RSQB:
      if ((end - ptr >= 2 * 2)) {
         if (!((ptr + 2)[1] == 0 && (ptr + 2)[0] == 0x5D)) {
           ptr += 2;
           break;
         }
         if ((end - ptr >= 3 * 2)) {
           if (!((ptr + 2*2)[1] == 0 && (ptr + 2*2)[0] == 0x3E)) {
             ptr += 2;
             break;
           }
           *nextTokPtr = ptr + 2*2;
           return 0;
         }
      }

    case BT_AMP:
    case BT_LT:
    case BT_NONXML:
    case BT_MALFORM:
    case BT_TRAIL:
    case BT_CR:
    case BT_LF:
      *nextTokPtr = ptr;
      return 6;
    default:
      ptr += 2;
      break;
    }
  }
  *nextTokPtr = ptr;
  return 6;
}



static int
little2_scanPercent(const ENCODING *enc, const char *ptr, const char *end,
                    const char **nextTokPtr)
{
  { if (! (end - ptr >= 1 * 2)) { return -1; } };
  switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
  case BT_NONASCII: if (!(namingBitmap[(nmstrtPages[(unsigned char)ptr[1]] << 3) + (((unsigned char)ptr[0]) >> 5)] & (1u << (((unsigned char)ptr[0]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
  case BT_S: case BT_LF: case BT_CR: case BT_PERCNT:
    *nextTokPtr = ptr;
    return 22;
  default:
    *nextTokPtr = ptr;
    return 0;
  }
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
    case BT_NONASCII: if (!(namingBitmap[(namePages[(unsigned char)ptr[1]] << 3) + (((unsigned char)ptr[0]) >> 5)] & (1u << (((unsigned char)ptr[0]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
    case BT_SEMI:
      *nextTokPtr = ptr + 2;
      return 28;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -1;
}

static int
little2_scanPoundName(const ENCODING *enc, const char *ptr, const char *end,
                      const char **nextTokPtr)
{
  { if (! (end - ptr >= 1 * 2)) { return -1; } };
  switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
  case BT_NONASCII: if (!(namingBitmap[(nmstrtPages[(unsigned char)ptr[1]] << 3) + (((unsigned char)ptr[0]) >> 5)] & (1u << (((unsigned char)ptr[0]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
  default:
    *nextTokPtr = ptr;
    return 0;
  }
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
    case BT_NONASCII: if (!(namingBitmap[(namePages[(unsigned char)ptr[1]] << 3) + (((unsigned char)ptr[0]) >> 5)] & (1u << (((unsigned char)ptr[0]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
    case BT_CR: case BT_LF: case BT_S:
    case BT_RPAR: case BT_GT: case BT_PERCNT: case BT_VERBAR:
      *nextTokPtr = ptr;
      return 20;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -20;
}

static int
little2_scanLit(int open, const ENCODING *enc,
                const char *ptr, const char *end,
                const char **nextTokPtr)
{
  while ((end - ptr >= 1 * 2)) {
    int t = ((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]));
    switch (t) {
    case BT_LEAD2: if (end - ptr < 2) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 4; break; case BT_NONXML: case BT_MALFORM: case BT_TRAIL: *(nextTokPtr) = (ptr); return 0;
    case BT_QUOT:
    case BT_APOS:
      ptr += 2;
      if (t != open)
        break;
      if (! (end - ptr >= 1 * 2))
        return -27;
      *nextTokPtr = ptr;
      switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
      case BT_S: case BT_CR: case BT_LF:
      case BT_GT: case BT_PERCNT: case BT_LSQB:
        return 27;
      default:
        return 0;
      }
    default:
      ptr += 2;
      break;
    }
  }
  return -1;
}

static int
little2_prologTok(const ENCODING *enc, const char *ptr, const char *end,
                  const char **nextTokPtr)
{
  int tok;
  if (ptr >= end)
    return -4;
  if (2 > 1) {
    size_t n = end - ptr;
    if (n & (2 - 1)) {
      n &= ~(2 - 1);
      if (n == 0)
        return -1;
      end = ptr + n;
    }
  }
  switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
  case BT_QUOT:
    return little2_scanLit(BT_QUOT, enc, ptr + 2, end, nextTokPtr);
  case BT_APOS:
    return little2_scanLit(BT_APOS, enc, ptr + 2, end, nextTokPtr);
  case BT_LT:
    {
      ptr += 2;
      { if (! (end - ptr >= 1 * 2)) { return -1; } };
      switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
      case BT_EXCL:
        return little2_scanDecl(enc, ptr + 2, end, nextTokPtr);
      case BT_QUEST:
        return little2_scanPi(enc, ptr + 2, end, nextTokPtr);
      case BT_NMSTRT:
      case BT_HEX:
      case BT_NONASCII:
      case BT_LEAD2:
      case BT_LEAD3:
      case BT_LEAD4:
        *nextTokPtr = ptr - 2;
        return 29;
      }
      *nextTokPtr = ptr;
      return 0;
    }
  case BT_CR:
    if (ptr + 2 == end) {
      *nextTokPtr = end;

      return -15;
    }

  case BT_S: case BT_LF:
    for (;;) {
      ptr += 2;
      if (! (end - ptr >= 1 * 2))
        break;
      switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
      case BT_S: case BT_LF:
        break;
      case BT_CR:

        if (ptr + 2 != end)
          break;

      default:
        *nextTokPtr = ptr;
        return 15;
      }
    }
    *nextTokPtr = ptr;
    return 15;
  case BT_PERCNT:
    return little2_scanPercent(enc, ptr + 2, end, nextTokPtr);
  case BT_COMMA:
    *nextTokPtr = ptr + 2;
    return 38;
  case BT_LSQB:
    *nextTokPtr = ptr + 2;
    return 25;
  case BT_RSQB:
    ptr += 2;
    if (! (end - ptr >= 1 * 2))
      return -26;
    if (((ptr)[1] == 0 && (ptr)[0] == 0x5D)) {
      { if (! (end - ptr >= 2 * 2)) { return -1; } };
      if (((ptr + 2)[1] == 0 && (ptr + 2)[0] == 0x3E)) {
        *nextTokPtr = ptr + 2*2;
        return 34;
      }
    }
    *nextTokPtr = ptr;
    return 26;
  case BT_LPAR:
    *nextTokPtr = ptr + 2;
    return 23;
  case BT_RPAR:
    ptr += 2;
    if (! (end - ptr >= 1 * 2))
      return -24;
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
    case BT_AST:
      *nextTokPtr = ptr + 2;
      return 36;
    case BT_QUEST:
      *nextTokPtr = ptr + 2;
      return 35;
    case BT_PLUS:
      *nextTokPtr = ptr + 2;
      return 37;
    case BT_CR: case BT_LF: case BT_S:
    case BT_GT: case BT_COMMA: case BT_VERBAR:
    case BT_RPAR:
      *nextTokPtr = ptr;
      return 24;
    }
    *nextTokPtr = ptr;
    return 0;
  case BT_VERBAR:
    *nextTokPtr = ptr + 2;
    return 21;
  case BT_GT:
    *nextTokPtr = ptr + 2;
    return 17;
  case BT_NUM:
    return little2_scanPoundName(enc, ptr + 2, end, nextTokPtr);
# 1107 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_impl.c"
    case BT_LEAD2: if (end - ptr < 2) return -2; if ((0)) { ptr += 2; tok = 18; break; } if (0) { ptr += 2; tok = 19; break; } *nextTokPtr = ptr; return 0; case BT_LEAD3: if (end - ptr < 3) return -2; if ((0)) { ptr += 3; tok = 18; break; } if (0) { ptr += 3; tok = 19; break; } *nextTokPtr = ptr; return 0; case BT_LEAD4: if (end - ptr < 4) return -2; if ((0)) { ptr += 4; tok = 18; break; } if (0) { ptr += 4; tok = 19; break; } *nextTokPtr = ptr; return 0;

  case BT_NMSTRT:
  case BT_HEX:
    tok = 18;
    ptr += 2;
    break;
  case BT_DIGIT:
  case BT_NAME:
  case BT_MINUS:

  case BT_COLON:

    tok = 19;
    ptr += 2;
    break;
  case BT_NONASCII:
    if ((namingBitmap[(nmstrtPages[(unsigned char)ptr[1]] << 3) + (((unsigned char)ptr[0]) >> 5)] & (1u << (((unsigned char)ptr[0]) & 0x1F)))) {
      ptr += 2;
      tok = 18;
      break;
    }
    if ((namingBitmap[(namePages[(unsigned char)ptr[1]] << 3) + (((unsigned char)ptr[0]) >> 5)] & (1u << (((unsigned char)ptr[0]) & 0x1F)))) {
      ptr += 2;
      tok = 19;
      break;
    }

  default:
    *nextTokPtr = ptr;
    return 0;
  }
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
    case BT_NONASCII: if (!(namingBitmap[(namePages[(unsigned char)ptr[1]] << 3) + (((unsigned char)ptr[0]) >> 5)] & (1u << (((unsigned char)ptr[0]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
    case BT_GT: case BT_RPAR: case BT_COMMA:
    case BT_VERBAR: case BT_LSQB: case BT_PERCNT:
    case BT_S: case BT_CR: case BT_LF:
      *nextTokPtr = ptr;
      return tok;

    case BT_COLON:
      ptr += 2;
      switch (tok) {
      case 18:
        { if (! (end - ptr >= 1 * 2)) { return -1; } };
        tok = 41;
        switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
        case BT_NONASCII: if (!(namingBitmap[(namePages[(unsigned char)ptr[1]] << 3) + (((unsigned char)ptr[0]) >> 5)] & (1u << (((unsigned char)ptr[0]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
        default:
          tok = 19;
          break;
        }
        break;
      case 41:
        tok = 19;
        break;
      }
      break;

    case BT_PLUS:
      if (tok == 19) {
        *nextTokPtr = ptr;
        return 0;
      }
      *nextTokPtr = ptr + 2;
      return 32;
    case BT_AST:
      if (tok == 19) {
        *nextTokPtr = ptr;
        return 0;
      }
      *nextTokPtr = ptr + 2;
      return 31;
    case BT_QUEST:
      if (tok == 19) {
        *nextTokPtr = ptr;
        return 0;
      }
      *nextTokPtr = ptr + 2;
      return 30;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -tok;
}

static int
little2_attributeValueTok(const ENCODING *enc, const char *ptr,
                          const char *end, const char **nextTokPtr)
{
  const char *start;
  if (ptr >= end)
    return -4;
  else if (! (end - ptr >= 1 * 2))
    return -1;
  start = ptr;
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {


    case BT_LEAD2: ptr += 2; break; case BT_LEAD3: ptr += 3; break; case BT_LEAD4: ptr += 4; break;

    case BT_AMP:
      if (ptr == start)
        return little2_scanRef(enc, ptr + 2, end, nextTokPtr);
      *nextTokPtr = ptr;
      return 6;
    case BT_LT:

      *nextTokPtr = ptr;
      return 0;
    case BT_LF:
      if (ptr == start) {
        *nextTokPtr = ptr + 2;
        return 7;
      }
      *nextTokPtr = ptr;
      return 6;
    case BT_CR:
      if (ptr == start) {
        ptr += 2;
        if (! (end - ptr >= 1 * 2))
          return -3;
        if (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0])) == BT_LF)
          ptr += 2;
        *nextTokPtr = ptr;
        return 7;
      }
      *nextTokPtr = ptr;
      return 6;
    case BT_S:
      if (ptr == start) {
        *nextTokPtr = ptr + 2;
        return 39;
      }
      *nextTokPtr = ptr;
      return 6;
    default:
      ptr += 2;
      break;
    }
  }
  *nextTokPtr = ptr;
  return 6;
}

static int
little2_entityValueTok(const ENCODING *enc, const char *ptr,
                       const char *end, const char **nextTokPtr)
{
  const char *start;
  if (ptr >= end)
    return -4;
  else if (! (end - ptr >= 1 * 2))
    return -1;
  start = ptr;
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {


    case BT_LEAD2: ptr += 2; break; case BT_LEAD3: ptr += 3; break; case BT_LEAD4: ptr += 4; break;

    case BT_AMP:
      if (ptr == start)
        return little2_scanRef(enc, ptr + 2, end, nextTokPtr);
      *nextTokPtr = ptr;
      return 6;
    case BT_PERCNT:
      if (ptr == start) {
        int tok = little2_scanPercent(enc, ptr + 2,
                                       end, nextTokPtr);
        return (tok == 22) ? 0 : tok;
      }
      *nextTokPtr = ptr;
      return 6;
    case BT_LF:
      if (ptr == start) {
        *nextTokPtr = ptr + 2;
        return 7;
      }
      *nextTokPtr = ptr;
      return 6;
    case BT_CR:
      if (ptr == start) {
        ptr += 2;
        if (! (end - ptr >= 1 * 2))
          return -3;
        if (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0])) == BT_LF)
          ptr += 2;
        *nextTokPtr = ptr;
        return 7;
      }
      *nextTokPtr = ptr;
      return 6;
    default:
      ptr += 2;
      break;
    }
  }
  *nextTokPtr = ptr;
  return 6;
}



static int
little2_ignoreSectionTok(const ENCODING *enc, const char *ptr,
                         const char *end, const char **nextTokPtr)
{
  int level = 0;
  if (2 > 1) {
    size_t n = end - ptr;
    if (n & (2 - 1)) {
      n &= ~(2 - 1);
      end = ptr + n;
    }
  }
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
    case BT_LEAD2: if (end - ptr < 2) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 4; break; case BT_NONXML: case BT_MALFORM: case BT_TRAIL: *(nextTokPtr) = (ptr); return 0;
    case BT_LT:
      ptr += 2;
      { if (! (end - ptr >= 1 * 2)) { return -1; } };
      if (((ptr)[1] == 0 && (ptr)[0] == 0x21)) {
        ptr += 2;
        { if (! (end - ptr >= 1 * 2)) { return -1; } };
        if (((ptr)[1] == 0 && (ptr)[0] == 0x5B)) {
          ++level;
          ptr += 2;
        }
      }
      break;
    case BT_RSQB:
      ptr += 2;
      { if (! (end - ptr >= 1 * 2)) { return -1; } };
      if (((ptr)[1] == 0 && (ptr)[0] == 0x5D)) {
        ptr += 2;
        { if (! (end - ptr >= 1 * 2)) { return -1; } };
        if (((ptr)[1] == 0 && (ptr)[0] == 0x3E)) {
          ptr += 2;
          if (level == 0) {
            *nextTokPtr = ptr;
            return 42;
          }
          --level;
        }
      }
      break;
    default:
      ptr += 2;
      break;
    }
  }
  return -1;
}



static int
little2_isPublicId(const ENCODING *enc, const char *ptr, const char *end,
                   const char **badPtr)
{
  ptr += 2;
  end -= 2;
  for (; (end - ptr >= 1 * 2); ptr += 2) {
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
    case BT_DIGIT:
    case BT_HEX:
    case BT_MINUS:
    case BT_APOS:
    case BT_LPAR:
    case BT_RPAR:
    case BT_PLUS:
    case BT_COMMA:
    case BT_SOL:
    case BT_EQUALS:
    case BT_QUEST:
    case BT_CR:
    case BT_LF:
    case BT_SEMI:
    case BT_EXCL:
    case BT_AST:
    case BT_PERCNT:
    case BT_NUM:

    case BT_COLON:

      break;
    case BT_S:
      if (((ptr)[1] == 0 && (ptr)[0] == 0x09)) {
        *badPtr = ptr;
        return 0;
      }
      break;
    case BT_NAME:
    case BT_NMSTRT:
      if (!(((ptr)[1] == 0 ? (ptr)[0] : -1) & ~0x7f))
        break;

    default:
      switch (((ptr)[1] == 0 ? (ptr)[0] : -1)) {
      case 0x24:
      case 0x40:
        break;
      default:
        *badPtr = ptr;
        return 0;
      }
      break;
    }
  }
  return 1;
}






static int
little2_getAtts(const ENCODING *enc, const char *ptr,
                int attsMax, ATTRIBUTE *atts)
{
  enum { other, inName, inValue } state = inName;
  int nAtts = 0;
  int open = 0;


  for (ptr += 2;; ptr += 2) {
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
# 1450 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_impl.c"
    case BT_LEAD2: if (state == other) { if (nAtts < attsMax) { atts[nAtts].name = ptr; atts[nAtts].normalized = 1; } state = inName; } ptr += (2 - 2); break; case BT_LEAD3: if (state == other) { if (nAtts < attsMax) { atts[nAtts].name = ptr; atts[nAtts].normalized = 1; } state = inName; } ptr += (3 - 2); break; case BT_LEAD4: if (state == other) { if (nAtts < attsMax) { atts[nAtts].name = ptr; atts[nAtts].normalized = 1; } state = inName; } ptr += (4 - 2); break;

    case BT_NONASCII:
    case BT_NMSTRT:
    case BT_HEX:
      if (state == other) { if (nAtts < attsMax) { atts[nAtts].name = ptr; atts[nAtts].normalized = 1; } state = inName; }
      break;

    case BT_QUOT:
      if (state != inValue) {
        if (nAtts < attsMax)
          atts[nAtts].valuePtr = ptr + 2;
        state = inValue;
        open = BT_QUOT;
      }
      else if (open == BT_QUOT) {
        state = other;
        if (nAtts < attsMax)
          atts[nAtts].valueEnd = ptr;
        nAtts++;
      }
      break;
    case BT_APOS:
      if (state != inValue) {
        if (nAtts < attsMax)
          atts[nAtts].valuePtr = ptr + 2;
        state = inValue;
        open = BT_APOS;
      }
      else if (open == BT_APOS) {
        state = other;
        if (nAtts < attsMax)
          atts[nAtts].valueEnd = ptr;
        nAtts++;
      }
      break;
    case BT_AMP:
      if (nAtts < attsMax)
        atts[nAtts].normalized = 0;
      break;
    case BT_S:
      if (state == inName)
        state = other;
      else if (state == inValue
               && nAtts < attsMax
               && atts[nAtts].normalized
               && (ptr == atts[nAtts].valuePtr
                   || ((ptr)[1] == 0 ? (ptr)[0] : -1) != 0x20
                   || ((ptr + 2)[1] == 0 ? (ptr + 2)[0] : -1) == 0x20
                   || ((ptr + 2)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr + 2)] : unicode_byte_type((ptr + 2)[1], (ptr + 2)[0])) == open))
        atts[nAtts].normalized = 0;
      break;
    case BT_CR: case BT_LF:


      if (state == inName)
        state = other;
      else if (state == inValue && nAtts < attsMax)
        atts[nAtts].normalized = 0;
      break;
    case BT_GT:
    case BT_SOL:
      if (state != inValue)
        return nAtts;
      break;
    default:
      break;
    }
  }

}

static int
little2_charRefNumber(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *ptr)
{
  int result = 0;

  ptr += 2*2;
  if (((ptr)[1] == 0 && (ptr)[0] == 0x78)) {
    for (ptr += 2;
         !((ptr)[1] == 0 && (ptr)[0] == 0x3B);
         ptr += 2) {
      int c = ((ptr)[1] == 0 ? (ptr)[0] : -1);
      switch (c) {
      case 0x30: case 0x31: case 0x32: case 0x33: case 0x34:
      case 0x35: case 0x36: case 0x37: case 0x38: case 0x39:
        result <<= 4;
        result |= (c - 0x30);
        break;
      case 0x41: case 0x42: case 0x43:
      case 0x44: case 0x45: case 0x46:
        result <<= 4;
        result += 10 + (c - 0x41);
        break;
      case 0x61: case 0x62: case 0x63:
      case 0x64: case 0x65: case 0x66:
        result <<= 4;
        result += 10 + (c - 0x61);
        break;
      }
      if (result >= 0x110000)
        return -1;
    }
  }
  else {
    for (; !((ptr)[1] == 0 && (ptr)[0] == 0x3B); ptr += 2) {
      int c = ((ptr)[1] == 0 ? (ptr)[0] : -1);
      result *= 10;
      result += (c - 0x30);
      if (result >= 0x110000)
        return -1;
    }
  }
  return checkCharRefNumber(result);
}

static int
little2_predefinedEntityName(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *ptr,
                             const char *end)
{
  switch ((end - ptr)/2) {
  case 2:
    if (((ptr + 2)[1] == 0 && (ptr + 2)[0] == 0x74)) {
      switch (((ptr)[1] == 0 ? (ptr)[0] : -1)) {
      case 0x6C:
        return 0x3C;
      case 0x67:
        return 0x3E;
      }
    }
    break;
  case 3:
    if (((ptr)[1] == 0 && (ptr)[0] == 0x61)) {
      ptr += 2;
      if (((ptr)[1] == 0 && (ptr)[0] == 0x6D)) {
        ptr += 2;
        if (((ptr)[1] == 0 && (ptr)[0] == 0x70))
          return 0x26;
      }
    }
    break;
  case 4:
    switch (((ptr)[1] == 0 ? (ptr)[0] : -1)) {
    case 0x71:
      ptr += 2;
      if (((ptr)[1] == 0 && (ptr)[0] == 0x75)) {
        ptr += 2;
        if (((ptr)[1] == 0 && (ptr)[0] == 0x6F)) {
          ptr += 2;
          if (((ptr)[1] == 0 && (ptr)[0] == 0x74))
            return 0x22;
        }
      }
      break;
    case 0x61:
      ptr += 2;
      if (((ptr)[1] == 0 && (ptr)[0] == 0x70)) {
        ptr += 2;
        if (((ptr)[1] == 0 && (ptr)[0] == 0x6F)) {
          ptr += 2;
          if (((ptr)[1] == 0 && (ptr)[0] == 0x73))
            return 0x27;
        }
      }
      break;
    }
  }
  return 0;
}

static int
little2_sameName(const ENCODING *enc, const char *ptr1, const char *ptr2)
{
  for (;;) {
    switch (((ptr1)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr1)] : unicode_byte_type((ptr1)[1], (ptr1)[0]))) {




    case BT_LEAD4: if (*ptr1++ != *ptr2++) return 0; case BT_LEAD3: if (*ptr1++ != *ptr2++) return 0; case BT_LEAD2: if (*ptr1++ != *ptr2++) return 0;


      if (*ptr1++ != *ptr2++)
        return 0;
      break;
    case BT_NONASCII:
    case BT_NMSTRT:

    case BT_COLON:

    case BT_HEX:
    case BT_DIGIT:
    case BT_NAME:
    case BT_MINUS:
      if (*ptr2++ != *ptr1++)
        return 0;
      if (2 > 1) {
        if (*ptr2++ != *ptr1++)
          return 0;
        if (2 > 2) {
          if (*ptr2++ != *ptr1++)
            return 0;
          if (2 > 3) {
            if (*ptr2++ != *ptr1++)
              return 0;
          }
        }
      }
      break;
    default:
      if (2 == 1 && *ptr1 == *ptr2)
        return 1;
      switch (((ptr2)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr2)] : unicode_byte_type((ptr2)[1], (ptr2)[0]))) {
      case BT_LEAD2:
      case BT_LEAD3:
      case BT_LEAD4:
      case BT_NONASCII:
      case BT_NMSTRT:

      case BT_COLON:

      case BT_HEX:
      case BT_DIGIT:
      case BT_NAME:
      case BT_MINUS:
        return 0;
      default:
        return 1;
      }
    }
  }

}

static int
little2_nameMatchesAscii(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *ptr1,
                         const char *end1, const char *ptr2)
{
  for (; *ptr2; ptr1 += 2, ptr2++) {
    if (end1 - ptr1 < 2)
      return 0;
    if (!((ptr1)[1] == 0 && (ptr1)[0] == *ptr2))
      return 0;
  }
  return ptr1 == end1;
}

static int
little2_nameLength(const ENCODING *enc, const char *ptr)
{
  const char *start = ptr;
  for (;;) {
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {


    case BT_LEAD2: ptr += 2; break; case BT_LEAD3: ptr += 3; break; case BT_LEAD4: ptr += 4; break;

    case BT_NONASCII:
    case BT_NMSTRT:

    case BT_COLON:

    case BT_HEX:
    case BT_DIGIT:
    case BT_NAME:
    case BT_MINUS:
      ptr += 2;
      break;
    default:
      return (int)(ptr - start);
    }
  }
}

static const char *
little2_skipS(const ENCODING *enc, const char *ptr)
{
  for (;;) {
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {
    case BT_LF:
    case BT_CR:
    case BT_S:
      ptr += 2;
      break;
    default:
      return ptr;
    }
  }
}

static void
little2_updatePosition(const ENCODING *enc,
                       const char *ptr,
                       const char *end,
                       POSITION *pos)
{
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0]))) {




    case BT_LEAD2: ptr += 2; break; case BT_LEAD3: ptr += 3; break; case BT_LEAD4: ptr += 4; break;

    case BT_LF:
      pos->columnNumber = (XML_Size)-1;
      pos->lineNumber++;
      ptr += 2;
      break;
    case BT_CR:
      pos->lineNumber++;
      ptr += 2;
      if ((end - ptr >= 1 * 2) && ((ptr)[1] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)*(ptr)] : unicode_byte_type((ptr)[1], (ptr)[0])) == BT_LF)
        ptr += 2;
      pos->columnNumber = (XML_Size)-1;
      break;
    default:
      ptr += 2;
      break;
    }
    pos->columnNumber++;
  }
}
# 798 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
# 814 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
static const struct normal_encoding little2_encoding_ns = {
  { { little2_prologTok, little2_contentTok, little2_cdataSectionTok , little2_ignoreSectionTok }, { little2_attributeValueTok, little2_entityValueTok }, little2_sameName, little2_nameMatchesAscii, little2_nameLength, little2_skipS, little2_getAtts, little2_charRefNumber, little2_predefinedEntityName, little2_updatePosition, little2_isPublicId, little2_toUtf8, little2_toUtf16, 2, 0,

    1



  },
  {
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/asciitab.h" 1




           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_S, BT_LF, BT_NONXML,
           BT_NONXML, BT_CR, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_S, BT_EXCL, BT_QUOT, BT_NUM,
           BT_OTHER, BT_PERCNT, BT_AMP, BT_APOS,
           BT_LPAR, BT_RPAR, BT_AST, BT_PLUS,
           BT_COMMA, BT_MINUS, BT_NAME, BT_SOL,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_COLON, BT_SEMI,
           BT_LT, BT_EQUALS, BT_GT, BT_QUEST,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_LSQB,
           BT_OTHER, BT_RSQB, BT_OTHER, BT_NMSTRT,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_VERBAR, BT_OTHER, BT_OTHER, BT_OTHER,
# 824 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/latin1tab.h" 1




           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_NMSTRT, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_NMSTRT, BT_OTHER, BT_NAME,
           BT_OTHER, BT_OTHER, BT_NMSTRT, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
# 825 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
  },
  
# 826 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 826 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 826 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 826 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 826 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 826 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 826 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 826 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 826 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 826 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 826 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 826 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 826 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 826 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 826 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 826 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 826 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)

# 827 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
};



static const struct normal_encoding little2_encoding = {
  { { little2_prologTok, little2_contentTok, little2_cdataSectionTok , little2_ignoreSectionTok }, { little2_attributeValueTok, little2_entityValueTok }, little2_sameName, little2_nameMatchesAscii, little2_nameLength, little2_skipS, little2_getAtts, little2_charRefNumber, little2_predefinedEntityName, little2_updatePosition, little2_isPublicId, little2_toUtf8, little2_toUtf16, 2, 0,

    1



  },
  {

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/asciitab.h" 1




           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_S, BT_LF, BT_NONXML,
           BT_NONXML, BT_CR, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_S, BT_EXCL, BT_QUOT, BT_NUM,
           BT_OTHER, BT_PERCNT, BT_AMP, BT_APOS,
           BT_LPAR, BT_RPAR, BT_AST, BT_PLUS,
           BT_COMMA, BT_MINUS, BT_NAME, BT_SOL,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_NMSTRT, BT_SEMI,
           BT_LT, BT_EQUALS, BT_GT, BT_QUEST,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_LSQB,
           BT_OTHER, BT_RSQB, BT_OTHER, BT_NMSTRT,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_VERBAR, BT_OTHER, BT_OTHER, BT_OTHER,
# 842 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/latin1tab.h" 1




           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_NMSTRT, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_NMSTRT, BT_OTHER, BT_NAME,
           BT_OTHER, BT_OTHER, BT_NMSTRT, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
# 844 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
  },
  
# 845 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 845 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 845 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 845 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 845 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 845 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 845 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 845 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 845 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 845 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 845 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 845 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 845 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 845 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 845 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 845 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 845 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)

# 846 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
};





static const struct normal_encoding internal_little2_encoding_ns = {
  { { little2_prologTok, little2_contentTok, little2_cdataSectionTok , little2_ignoreSectionTok }, { little2_attributeValueTok, little2_entityValueTok }, little2_sameName, little2_nameMatchesAscii, little2_nameLength, little2_skipS, little2_getAtts, little2_charRefNumber, little2_predefinedEntityName, little2_updatePosition, little2_isPublicId, little2_toUtf8, little2_toUtf16, 2, 0, 1 },
  {
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/iasciitab.h" 1





           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_S, BT_LF, BT_NONXML,
           BT_NONXML, BT_S, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_S, BT_EXCL, BT_QUOT, BT_NUM,
           BT_OTHER, BT_PERCNT, BT_AMP, BT_APOS,
           BT_LPAR, BT_RPAR, BT_AST, BT_PLUS,
           BT_COMMA, BT_MINUS, BT_NAME, BT_SOL,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_COLON, BT_SEMI,
           BT_LT, BT_EQUALS, BT_GT, BT_QUEST,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_LSQB,
           BT_OTHER, BT_RSQB, BT_OTHER, BT_NMSTRT,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_VERBAR, BT_OTHER, BT_OTHER, BT_OTHER,
# 856 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/latin1tab.h" 1




           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_NMSTRT, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_NMSTRT, BT_OTHER, BT_NAME,
           BT_OTHER, BT_OTHER, BT_NMSTRT, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
# 857 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
  },
  
# 858 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 858 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 858 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 858 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 858 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 858 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 858 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 858 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 858 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 858 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 858 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 858 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 858 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 858 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 858 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 858 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 858 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)

# 859 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
};



static const struct normal_encoding internal_little2_encoding = {
  { { little2_prologTok, little2_contentTok, little2_cdataSectionTok , little2_ignoreSectionTok }, { little2_attributeValueTok, little2_entityValueTok }, little2_sameName, little2_nameMatchesAscii, little2_nameLength, little2_skipS, little2_getAtts, little2_charRefNumber, little2_predefinedEntityName, little2_updatePosition, little2_isPublicId, little2_toUtf8, little2_toUtf16, 2, 0, 1 },
  {

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/iasciitab.h" 1





           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_S, BT_LF, BT_NONXML,
           BT_NONXML, BT_S, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_S, BT_EXCL, BT_QUOT, BT_NUM,
           BT_OTHER, BT_PERCNT, BT_AMP, BT_APOS,
           BT_LPAR, BT_RPAR, BT_AST, BT_PLUS,
           BT_COMMA, BT_MINUS, BT_NAME, BT_SOL,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_NMSTRT, BT_SEMI,
           BT_LT, BT_EQUALS, BT_GT, BT_QUEST,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_LSQB,
           BT_OTHER, BT_RSQB, BT_OTHER, BT_NMSTRT,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_VERBAR, BT_OTHER, BT_OTHER, BT_OTHER,
# 868 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/latin1tab.h" 1




           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_NMSTRT, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_NMSTRT, BT_OTHER, BT_NAME,
           BT_OTHER, BT_OTHER, BT_NMSTRT, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
# 870 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
  },
  
# 871 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 871 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 871 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 871 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 871 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 871 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 871 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 871 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 871 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 871 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 871 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 871 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 871 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 871 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 871 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)
# 871 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           , 
# 871 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                           ((void *)0)

# 872 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
};
# 938 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_impl.c" 1
# 112 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_impl.c"
static int
big2_scanComment(const ENCODING *enc, const char *ptr,
                    const char *end, const char **nextTokPtr)
{
  if ((end - ptr >= 1 * 2)) {
    if (!((ptr)[0] == 0 && (ptr)[1] == 0x2D)) {
      *nextTokPtr = ptr;
      return 0;
    }
    ptr += 2;
    while ((end - ptr >= 1 * 2)) {
      switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
      case BT_LEAD2: if (end - ptr < 2) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 4; break; case BT_NONXML: case BT_MALFORM: case BT_TRAIL: *(nextTokPtr) = (ptr); return 0;
      case BT_MINUS:
        ptr += 2;
        { if (! (end - ptr >= 1 * 2)) { return -1; } };
        if (((ptr)[0] == 0 && (ptr)[1] == 0x2D)) {
          ptr += 2;
          { if (! (end - ptr >= 1 * 2)) { return -1; } };
          if (!((ptr)[0] == 0 && (ptr)[1] == 0x3E)) {
            *nextTokPtr = ptr;
            return 0;
          }
          *nextTokPtr = ptr + 2;
          return 13;
        }
        break;
      default:
        ptr += 2;
        break;
      }
    }
  }
  return -1;
}



static int
big2_scanDecl(const ENCODING *enc, const char *ptr,
                 const char *end, const char **nextTokPtr)
{
  { if (! (end - ptr >= 1 * 2)) { return -1; } };
  switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
  case BT_MINUS:
    return big2_scanComment(enc, ptr + 2, end, nextTokPtr);
  case BT_LSQB:
    *nextTokPtr = ptr + 2;
    return 33;
  case BT_NMSTRT:
  case BT_HEX:
    ptr += 2;
    break;
  default:
    *nextTokPtr = ptr;
    return 0;
  }
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
    case BT_PERCNT:
      { if (! (end - ptr >= 2 * 2)) { return -1; } };

      switch (((ptr + 2)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr + 2)[1]] : unicode_byte_type((ptr + 2)[0], (ptr + 2)[1]))) {
      case BT_S: case BT_CR: case BT_LF: case BT_PERCNT:
        *nextTokPtr = ptr;
        return 0;
      }

    case BT_S: case BT_CR: case BT_LF:
      *nextTokPtr = ptr;
      return 16;
    case BT_NMSTRT:
    case BT_HEX:
      ptr += 2;
      break;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -1;
}

static int
big2_checkPiTarget(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *ptr,
                      const char *end, int *tokPtr)
{
  int upper = 0;
  *tokPtr = 11;
  if (end - ptr != 2*3)
    return 1;
  switch (((ptr)[0] == 0 ? (ptr)[1] : -1)) {
  case 0x78:
    break;
  case 0x58:
    upper = 1;
    break;
  default:
    return 1;
  }
  ptr += 2;
  switch (((ptr)[0] == 0 ? (ptr)[1] : -1)) {
  case 0x6D:
    break;
  case 0x4D:
    upper = 1;
    break;
  default:
    return 1;
  }
  ptr += 2;
  switch (((ptr)[0] == 0 ? (ptr)[1] : -1)) {
  case 0x6C:
    break;
  case 0x4C:
    upper = 1;
    break;
  default:
    return 1;
  }
  if (upper)
    return 0;
  *tokPtr = 12;
  return 1;
}



static int
big2_scanPi(const ENCODING *enc, const char *ptr,
               const char *end, const char **nextTokPtr)
{
  int tok;
  const char *target = ptr;
  { if (! (end - ptr >= 1 * 2)) { return -1; } };
  switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
  case BT_NONASCII: if (!(namingBitmap[(nmstrtPages[(unsigned char)ptr[0]] << 3) + (((unsigned char)ptr[1]) >> 5)] & (1u << (((unsigned char)ptr[1]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
  default:
    *nextTokPtr = ptr;
    return 0;
  }
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
    case BT_NONASCII: if (!(namingBitmap[(namePages[(unsigned char)ptr[0]] << 3) + (((unsigned char)ptr[1]) >> 5)] & (1u << (((unsigned char)ptr[1]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
    case BT_S: case BT_CR: case BT_LF:
      if (!big2_checkPiTarget(enc, target, ptr, &tok)) {
        *nextTokPtr = ptr;
        return 0;
      }
      ptr += 2;
      while ((end - ptr >= 1 * 2)) {
        switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
        case BT_LEAD2: if (end - ptr < 2) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 4; break; case BT_NONXML: case BT_MALFORM: case BT_TRAIL: *(nextTokPtr) = (ptr); return 0;
        case BT_QUEST:
          ptr += 2;
          { if (! (end - ptr >= 1 * 2)) { return -1; } };
          if (((ptr)[0] == 0 && (ptr)[1] == 0x3E)) {
            *nextTokPtr = ptr + 2;
            return tok;
          }
          break;
        default:
          ptr += 2;
          break;
        }
      }
      return -1;
    case BT_QUEST:
      if (!big2_checkPiTarget(enc, target, ptr, &tok)) {
        *nextTokPtr = ptr;
        return 0;
      }
      ptr += 2;
      { if (! (end - ptr >= 1 * 2)) { return -1; } };
      if (((ptr)[0] == 0 && (ptr)[1] == 0x3E)) {
        *nextTokPtr = ptr + 2;
        return tok;
      }

    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -1;
}

static int
big2_scanCdataSection(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *ptr,
                         const char *end, const char **nextTokPtr)
{
  static const char CDATA_LSQB[] = { 0x43, 0x44, 0x41,
                                     0x54, 0x41, 0x5B };
  int i;

  { if (! (end - ptr >= 6 * 2)) { return -1; } };
  for (i = 0; i < 6; i++, ptr += 2) {
    if (!((ptr)[0] == 0 && (ptr)[1] == CDATA_LSQB[i])) {
      *nextTokPtr = ptr;
      return 0;
    }
  }
  *nextTokPtr = ptr;
  return 8;
}

static int
big2_cdataSectionTok(const ENCODING *enc, const char *ptr,
                        const char *end, const char **nextTokPtr)
{
  if (ptr >= end)
    return -4;
  if (2 > 1) {
    size_t n = end - ptr;
    if (n & (2 - 1)) {
      n &= ~(2 - 1);
      if (n == 0)
        return -1;
      end = ptr + n;
    }
  }
  switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
  case BT_RSQB:
    ptr += 2;
    { if (! (end - ptr >= 1 * 2)) { return -1; } };
    if (!((ptr)[0] == 0 && (ptr)[1] == 0x5D))
      break;
    ptr += 2;
    { if (! (end - ptr >= 1 * 2)) { return -1; } };
    if (!((ptr)[0] == 0 && (ptr)[1] == 0x3E)) {
      ptr -= 2;
      break;
    }
    *nextTokPtr = ptr + 2;
    return 40;
  case BT_CR:
    ptr += 2;
    { if (! (end - ptr >= 1 * 2)) { return -1; } };
    if (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1])) == BT_LF)
      ptr += 2;
    *nextTokPtr = ptr;
    return 7;
  case BT_LF:
    *nextTokPtr = ptr + 2;
    return 7;
  case BT_LEAD2: if (end - ptr < 2) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 4; break; case BT_NONXML: case BT_MALFORM: case BT_TRAIL: *(nextTokPtr) = (ptr); return 0;
  default:
    ptr += 2;
    break;
  }
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
# 372 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_impl.c"
    case BT_LEAD2: if (end - ptr < 2 || (0)) { *nextTokPtr = ptr; return 6; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3 || (0)) { *nextTokPtr = ptr; return 6; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4 || (0)) { *nextTokPtr = ptr; return 6; } ptr += 4; break;

    case BT_NONXML:
    case BT_MALFORM:
    case BT_TRAIL:
    case BT_CR:
    case BT_LF:
    case BT_RSQB:
      *nextTokPtr = ptr;
      return 6;
    default:
      ptr += 2;
      break;
    }
  }
  *nextTokPtr = ptr;
  return 6;
}



static int
big2_scanEndTag(const ENCODING *enc, const char *ptr,
                   const char *end, const char **nextTokPtr)
{
  { if (! (end - ptr >= 1 * 2)) { return -1; } };
  switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
  case BT_NONASCII: if (!(namingBitmap[(nmstrtPages[(unsigned char)ptr[0]] << 3) + (((unsigned char)ptr[1]) >> 5)] & (1u << (((unsigned char)ptr[1]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
  default:
    *nextTokPtr = ptr;
    return 0;
  }
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
    case BT_NONASCII: if (!(namingBitmap[(namePages[(unsigned char)ptr[0]] << 3) + (((unsigned char)ptr[1]) >> 5)] & (1u << (((unsigned char)ptr[1]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
    case BT_S: case BT_CR: case BT_LF:
      for (ptr += 2; (end - ptr >= 1 * 2); ptr += 2) {
        switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
        case BT_S: case BT_CR: case BT_LF:
          break;
        case BT_GT:
          *nextTokPtr = ptr + 2;
          return 5;
        default:
          *nextTokPtr = ptr;
          return 0;
        }
      }
      return -1;

    case BT_COLON:


      ptr += 2;
      break;

    case BT_GT:
      *nextTokPtr = ptr + 2;
      return 5;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -1;
}



static int
big2_scanHexCharRef(const ENCODING *enc, const char *ptr,
                       const char *end, const char **nextTokPtr)
{
  if ((end - ptr >= 1 * 2)) {
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
    case BT_DIGIT:
    case BT_HEX:
      break;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
    for (ptr += 2; (end - ptr >= 1 * 2); ptr += 2) {
      switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
      case BT_DIGIT:
      case BT_HEX:
        break;
      case BT_SEMI:
        *nextTokPtr = ptr + 2;
        return 10;
      default:
        *nextTokPtr = ptr;
        return 0;
      }
    }
  }
  return -1;
}



static int
big2_scanCharRef(const ENCODING *enc, const char *ptr,
                    const char *end, const char **nextTokPtr)
{
  if ((end - ptr >= 1 * 2)) {
    if (((ptr)[0] == 0 && (ptr)[1] == 0x78))
      return big2_scanHexCharRef(enc, ptr + 2, end, nextTokPtr);
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
    case BT_DIGIT:
      break;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
    for (ptr += 2; (end - ptr >= 1 * 2); ptr += 2) {
      switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
      case BT_DIGIT:
        break;
      case BT_SEMI:
        *nextTokPtr = ptr + 2;
        return 10;
      default:
        *nextTokPtr = ptr;
        return 0;
      }
    }
  }
  return -1;
}



static int
big2_scanRef(const ENCODING *enc, const char *ptr, const char *end,
                const char **nextTokPtr)
{
  { if (! (end - ptr >= 1 * 2)) { return -1; } };
  switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
  case BT_NONASCII: if (!(namingBitmap[(nmstrtPages[(unsigned char)ptr[0]] << 3) + (((unsigned char)ptr[1]) >> 5)] & (1u << (((unsigned char)ptr[1]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
  case BT_NUM:
    return big2_scanCharRef(enc, ptr + 2, end, nextTokPtr);
  default:
    *nextTokPtr = ptr;
    return 0;
  }
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
    case BT_NONASCII: if (!(namingBitmap[(namePages[(unsigned char)ptr[0]] << 3) + (((unsigned char)ptr[1]) >> 5)] & (1u << (((unsigned char)ptr[1]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
    case BT_SEMI:
      *nextTokPtr = ptr + 2;
      return 9;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -1;
}



static int
big2_scanAtts(const ENCODING *enc, const char *ptr, const char *end,
                 const char **nextTokPtr)
{

  int hadColon = 0;

  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
    case BT_NONASCII: if (!(namingBitmap[(namePages[(unsigned char)ptr[0]] << 3) + (((unsigned char)ptr[1]) >> 5)] & (1u << (((unsigned char)ptr[1]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 4; break;

    case BT_COLON:
      if (hadColon) {
        *nextTokPtr = ptr;
        return 0;
      }
      hadColon = 1;
      ptr += 2;
      { if (! (end - ptr >= 1 * 2)) { return -1; } };
      switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
      case BT_NONASCII: if (!(namingBitmap[(nmstrtPages[(unsigned char)ptr[0]] << 3) + (((unsigned char)ptr[1]) >> 5)] & (1u << (((unsigned char)ptr[1]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
      default:
        *nextTokPtr = ptr;
        return 0;
      }
      break;

    case BT_S: case BT_CR: case BT_LF:
      for (;;) {
        int t;

        ptr += 2;
        { if (! (end - ptr >= 1 * 2)) { return -1; } };
        t = ((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]));
        if (t == BT_EQUALS)
          break;
        switch (t) {
        case BT_S:
        case BT_LF:
        case BT_CR:
          break;
        default:
          *nextTokPtr = ptr;
          return 0;
        }
      }

    case BT_EQUALS:
      {
        int open;

        hadColon = 0;

        for (;;) {
          ptr += 2;
          { if (! (end - ptr >= 1 * 2)) { return -1; } };
          open = ((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]));
          if (open == BT_QUOT || open == BT_APOS)
            break;
          switch (open) {
          case BT_S:
          case BT_LF:
          case BT_CR:
            break;
          default:
            *nextTokPtr = ptr;
            return 0;
          }
        }
        ptr += 2;

        for (;;) {
          int t;
          { if (! (end - ptr >= 1 * 2)) { return -1; } };
          t = ((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]));
          if (t == open)
            break;
          switch (t) {
          case BT_LEAD2: if (end - ptr < 2) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 4; break; case BT_NONXML: case BT_MALFORM: case BT_TRAIL: *(nextTokPtr) = (ptr); return 0;
          case BT_AMP:
            {
              int tok = big2_scanRef(enc, ptr + 2, end, &ptr);
              if (tok <= 0) {
                if (tok == 0)
                  *nextTokPtr = ptr;
                return tok;
              }
              break;
            }
          case BT_LT:
            *nextTokPtr = ptr;
            return 0;
          default:
            ptr += 2;
            break;
          }
        }
        ptr += 2;
        { if (! (end - ptr >= 1 * 2)) { return -1; } };
        switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
        case BT_S:
        case BT_CR:
        case BT_LF:
          break;
        case BT_SOL:
          goto sol;
        case BT_GT:
          goto gt;
        default:
          *nextTokPtr = ptr;
          return 0;
        }

        for (;;) {
          ptr += 2;
          { if (! (end - ptr >= 1 * 2)) { return -1; } };
          switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
          case BT_NONASCII: if (!(namingBitmap[(nmstrtPages[(unsigned char)ptr[0]] << 3) + (((unsigned char)ptr[1]) >> 5)] & (1u << (((unsigned char)ptr[1]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
          case BT_S: case BT_CR: case BT_LF:
            continue;
          case BT_GT:
          gt:
            *nextTokPtr = ptr + 2;
            return 1;
          case BT_SOL:
          sol:
            ptr += 2;
            { if (! (end - ptr >= 1 * 2)) { return -1; } };
            if (!((ptr)[0] == 0 && (ptr)[1] == 0x3E)) {
              *nextTokPtr = ptr;
              return 0;
            }
            *nextTokPtr = ptr + 2;
            return 3;
          default:
            *nextTokPtr = ptr;
            return 0;
          }
          break;
        }
        break;
      }
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -1;
}



static int
big2_scanLt(const ENCODING *enc, const char *ptr, const char *end,
               const char **nextTokPtr)
{

  int hadColon;

  { if (! (end - ptr >= 1 * 2)) { return -1; } };
  switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
  case BT_NONASCII: if (!(namingBitmap[(nmstrtPages[(unsigned char)ptr[0]] << 3) + (((unsigned char)ptr[1]) >> 5)] & (1u << (((unsigned char)ptr[1]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
  case BT_EXCL:
    ptr += 2;
    { if (! (end - ptr >= 1 * 2)) { return -1; } };
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
    case BT_MINUS:
      return big2_scanComment(enc, ptr + 2, end, nextTokPtr);
    case BT_LSQB:
      return big2_scanCdataSection(enc, ptr + 2,
                                      end, nextTokPtr);
    }
    *nextTokPtr = ptr;
    return 0;
  case BT_QUEST:
    return big2_scanPi(enc, ptr + 2, end, nextTokPtr);
  case BT_SOL:
    return big2_scanEndTag(enc, ptr + 2, end, nextTokPtr);
  default:
    *nextTokPtr = ptr;
    return 0;
  }

  hadColon = 0;


  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
    case BT_NONASCII: if (!(namingBitmap[(namePages[(unsigned char)ptr[0]] << 3) + (((unsigned char)ptr[1]) >> 5)] & (1u << (((unsigned char)ptr[1]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 4; break;

    case BT_COLON:
      if (hadColon) {
        *nextTokPtr = ptr;
        return 0;
      }
      hadColon = 1;
      ptr += 2;
      { if (! (end - ptr >= 1 * 2)) { return -1; } };
      switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
      case BT_NONASCII: if (!(namingBitmap[(nmstrtPages[(unsigned char)ptr[0]] << 3) + (((unsigned char)ptr[1]) >> 5)] & (1u << (((unsigned char)ptr[1]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
      default:
        *nextTokPtr = ptr;
        return 0;
      }
      break;

    case BT_S: case BT_CR: case BT_LF:
      {
        ptr += 2;
        while ((end - ptr >= 1 * 2)) {
          switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
          case BT_NONASCII: if (!(namingBitmap[(nmstrtPages[(unsigned char)ptr[0]] << 3) + (((unsigned char)ptr[1]) >> 5)] & (1u << (((unsigned char)ptr[1]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
          case BT_GT:
            goto gt;
          case BT_SOL:
            goto sol;
          case BT_S: case BT_CR: case BT_LF:
            ptr += 2;
            continue;
          default:
            *nextTokPtr = ptr;
            return 0;
          }
          return big2_scanAtts(enc, ptr, end, nextTokPtr);
        }
        return -1;
      }
    case BT_GT:
    gt:
      *nextTokPtr = ptr + 2;
      return 2;
    case BT_SOL:
    sol:
      ptr += 2;
      { if (! (end - ptr >= 1 * 2)) { return -1; } };
      if (!((ptr)[0] == 0 && (ptr)[1] == 0x3E)) {
        *nextTokPtr = ptr;
        return 0;
      }
      *nextTokPtr = ptr + 2;
      return 4;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -1;
}

static int
big2_contentTok(const ENCODING *enc, const char *ptr, const char *end,
                   const char **nextTokPtr)
{
  if (ptr >= end)
    return -4;
  if (2 > 1) {
    size_t n = end - ptr;
    if (n & (2 - 1)) {
      n &= ~(2 - 1);
      if (n == 0)
        return -1;
      end = ptr + n;
    }
  }
  switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
  case BT_LT:
    return big2_scanLt(enc, ptr + 2, end, nextTokPtr);
  case BT_AMP:
    return big2_scanRef(enc, ptr + 2, end, nextTokPtr);
  case BT_CR:
    ptr += 2;
    if (! (end - ptr >= 1 * 2))
      return -3;
    if (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1])) == BT_LF)
      ptr += 2;
    *nextTokPtr = ptr;
    return 7;
  case BT_LF:
    *nextTokPtr = ptr + 2;
    return 7;
  case BT_RSQB:
    ptr += 2;
    if (! (end - ptr >= 1 * 2))
      return -5;
    if (!((ptr)[0] == 0 && (ptr)[1] == 0x5D))
      break;
    ptr += 2;
    if (! (end - ptr >= 1 * 2))
      return -5;
    if (!((ptr)[0] == 0 && (ptr)[1] == 0x3E)) {
      ptr -= 2;
      break;
    }
    *nextTokPtr = ptr;
    return 0;
  case BT_LEAD2: if (end - ptr < 2) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 4; break; case BT_NONXML: case BT_MALFORM: case BT_TRAIL: *(nextTokPtr) = (ptr); return 0;
  default:
    ptr += 2;
    break;
  }
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
# 844 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_impl.c"
    case BT_LEAD2: if (end - ptr < 2 || (0)) { *nextTokPtr = ptr; return 6; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3 || (0)) { *nextTokPtr = ptr; return 6; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4 || (0)) { *nextTokPtr = ptr; return 6; } ptr += 4; break;

    case BT_RSQB:
      if ((end - ptr >= 2 * 2)) {
         if (!((ptr + 2)[0] == 0 && (ptr + 2)[1] == 0x5D)) {
           ptr += 2;
           break;
         }
         if ((end - ptr >= 3 * 2)) {
           if (!((ptr + 2*2)[0] == 0 && (ptr + 2*2)[1] == 0x3E)) {
             ptr += 2;
             break;
           }
           *nextTokPtr = ptr + 2*2;
           return 0;
         }
      }

    case BT_AMP:
    case BT_LT:
    case BT_NONXML:
    case BT_MALFORM:
    case BT_TRAIL:
    case BT_CR:
    case BT_LF:
      *nextTokPtr = ptr;
      return 6;
    default:
      ptr += 2;
      break;
    }
  }
  *nextTokPtr = ptr;
  return 6;
}



static int
big2_scanPercent(const ENCODING *enc, const char *ptr, const char *end,
                    const char **nextTokPtr)
{
  { if (! (end - ptr >= 1 * 2)) { return -1; } };
  switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
  case BT_NONASCII: if (!(namingBitmap[(nmstrtPages[(unsigned char)ptr[0]] << 3) + (((unsigned char)ptr[1]) >> 5)] & (1u << (((unsigned char)ptr[1]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
  case BT_S: case BT_LF: case BT_CR: case BT_PERCNT:
    *nextTokPtr = ptr;
    return 22;
  default:
    *nextTokPtr = ptr;
    return 0;
  }
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
    case BT_NONASCII: if (!(namingBitmap[(namePages[(unsigned char)ptr[0]] << 3) + (((unsigned char)ptr[1]) >> 5)] & (1u << (((unsigned char)ptr[1]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
    case BT_SEMI:
      *nextTokPtr = ptr + 2;
      return 28;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -1;
}

static int
big2_scanPoundName(const ENCODING *enc, const char *ptr, const char *end,
                      const char **nextTokPtr)
{
  { if (! (end - ptr >= 1 * 2)) { return -1; } };
  switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
  case BT_NONASCII: if (!(namingBitmap[(nmstrtPages[(unsigned char)ptr[0]] << 3) + (((unsigned char)ptr[1]) >> 5)] & (1u << (((unsigned char)ptr[1]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!(0)) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
  default:
    *nextTokPtr = ptr;
    return 0;
  }
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
    case BT_NONASCII: if (!(namingBitmap[(namePages[(unsigned char)ptr[0]] << 3) + (((unsigned char)ptr[1]) >> 5)] & (1u << (((unsigned char)ptr[1]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
    case BT_CR: case BT_LF: case BT_S:
    case BT_RPAR: case BT_GT: case BT_PERCNT: case BT_VERBAR:
      *nextTokPtr = ptr;
      return 20;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -20;
}

static int
big2_scanLit(int open, const ENCODING *enc,
                const char *ptr, const char *end,
                const char **nextTokPtr)
{
  while ((end - ptr >= 1 * 2)) {
    int t = ((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]));
    switch (t) {
    case BT_LEAD2: if (end - ptr < 2) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 4; break; case BT_NONXML: case BT_MALFORM: case BT_TRAIL: *(nextTokPtr) = (ptr); return 0;
    case BT_QUOT:
    case BT_APOS:
      ptr += 2;
      if (t != open)
        break;
      if (! (end - ptr >= 1 * 2))
        return -27;
      *nextTokPtr = ptr;
      switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
      case BT_S: case BT_CR: case BT_LF:
      case BT_GT: case BT_PERCNT: case BT_LSQB:
        return 27;
      default:
        return 0;
      }
    default:
      ptr += 2;
      break;
    }
  }
  return -1;
}

static int
big2_prologTok(const ENCODING *enc, const char *ptr, const char *end,
                  const char **nextTokPtr)
{
  int tok;
  if (ptr >= end)
    return -4;
  if (2 > 1) {
    size_t n = end - ptr;
    if (n & (2 - 1)) {
      n &= ~(2 - 1);
      if (n == 0)
        return -1;
      end = ptr + n;
    }
  }
  switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
  case BT_QUOT:
    return big2_scanLit(BT_QUOT, enc, ptr + 2, end, nextTokPtr);
  case BT_APOS:
    return big2_scanLit(BT_APOS, enc, ptr + 2, end, nextTokPtr);
  case BT_LT:
    {
      ptr += 2;
      { if (! (end - ptr >= 1 * 2)) { return -1; } };
      switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
      case BT_EXCL:
        return big2_scanDecl(enc, ptr + 2, end, nextTokPtr);
      case BT_QUEST:
        return big2_scanPi(enc, ptr + 2, end, nextTokPtr);
      case BT_NMSTRT:
      case BT_HEX:
      case BT_NONASCII:
      case BT_LEAD2:
      case BT_LEAD3:
      case BT_LEAD4:
        *nextTokPtr = ptr - 2;
        return 29;
      }
      *nextTokPtr = ptr;
      return 0;
    }
  case BT_CR:
    if (ptr + 2 == end) {
      *nextTokPtr = end;

      return -15;
    }

  case BT_S: case BT_LF:
    for (;;) {
      ptr += 2;
      if (! (end - ptr >= 1 * 2))
        break;
      switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
      case BT_S: case BT_LF:
        break;
      case BT_CR:

        if (ptr + 2 != end)
          break;

      default:
        *nextTokPtr = ptr;
        return 15;
      }
    }
    *nextTokPtr = ptr;
    return 15;
  case BT_PERCNT:
    return big2_scanPercent(enc, ptr + 2, end, nextTokPtr);
  case BT_COMMA:
    *nextTokPtr = ptr + 2;
    return 38;
  case BT_LSQB:
    *nextTokPtr = ptr + 2;
    return 25;
  case BT_RSQB:
    ptr += 2;
    if (! (end - ptr >= 1 * 2))
      return -26;
    if (((ptr)[0] == 0 && (ptr)[1] == 0x5D)) {
      { if (! (end - ptr >= 2 * 2)) { return -1; } };
      if (((ptr + 2)[0] == 0 && (ptr + 2)[1] == 0x3E)) {
        *nextTokPtr = ptr + 2*2;
        return 34;
      }
    }
    *nextTokPtr = ptr;
    return 26;
  case BT_LPAR:
    *nextTokPtr = ptr + 2;
    return 23;
  case BT_RPAR:
    ptr += 2;
    if (! (end - ptr >= 1 * 2))
      return -24;
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
    case BT_AST:
      *nextTokPtr = ptr + 2;
      return 36;
    case BT_QUEST:
      *nextTokPtr = ptr + 2;
      return 35;
    case BT_PLUS:
      *nextTokPtr = ptr + 2;
      return 37;
    case BT_CR: case BT_LF: case BT_S:
    case BT_GT: case BT_COMMA: case BT_VERBAR:
    case BT_RPAR:
      *nextTokPtr = ptr;
      return 24;
    }
    *nextTokPtr = ptr;
    return 0;
  case BT_VERBAR:
    *nextTokPtr = ptr + 2;
    return 21;
  case BT_GT:
    *nextTokPtr = ptr + 2;
    return 17;
  case BT_NUM:
    return big2_scanPoundName(enc, ptr + 2, end, nextTokPtr);
# 1107 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_impl.c"
    case BT_LEAD2: if (end - ptr < 2) return -2; if ((0)) { ptr += 2; tok = 18; break; } if (0) { ptr += 2; tok = 19; break; } *nextTokPtr = ptr; return 0; case BT_LEAD3: if (end - ptr < 3) return -2; if ((0)) { ptr += 3; tok = 18; break; } if (0) { ptr += 3; tok = 19; break; } *nextTokPtr = ptr; return 0; case BT_LEAD4: if (end - ptr < 4) return -2; if ((0)) { ptr += 4; tok = 18; break; } if (0) { ptr += 4; tok = 19; break; } *nextTokPtr = ptr; return 0;

  case BT_NMSTRT:
  case BT_HEX:
    tok = 18;
    ptr += 2;
    break;
  case BT_DIGIT:
  case BT_NAME:
  case BT_MINUS:

  case BT_COLON:

    tok = 19;
    ptr += 2;
    break;
  case BT_NONASCII:
    if ((namingBitmap[(nmstrtPages[(unsigned char)ptr[0]] << 3) + (((unsigned char)ptr[1]) >> 5)] & (1u << (((unsigned char)ptr[1]) & 0x1F)))) {
      ptr += 2;
      tok = 18;
      break;
    }
    if ((namingBitmap[(namePages[(unsigned char)ptr[0]] << 3) + (((unsigned char)ptr[1]) >> 5)] & (1u << (((unsigned char)ptr[1]) & 0x1F)))) {
      ptr += 2;
      tok = 19;
      break;
    }

  default:
    *nextTokPtr = ptr;
    return 0;
  }
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
    case BT_NONASCII: if (!(namingBitmap[(namePages[(unsigned char)ptr[0]] << 3) + (((unsigned char)ptr[1]) >> 5)] & (1u << (((unsigned char)ptr[1]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
    case BT_GT: case BT_RPAR: case BT_COMMA:
    case BT_VERBAR: case BT_LSQB: case BT_PERCNT:
    case BT_S: case BT_CR: case BT_LF:
      *nextTokPtr = ptr;
      return tok;

    case BT_COLON:
      ptr += 2;
      switch (tok) {
      case 18:
        { if (! (end - ptr >= 1 * 2)) { return -1; } };
        tok = 41;
        switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
        case BT_NONASCII: if (!(namingBitmap[(namePages[(unsigned char)ptr[0]] << 3) + (((unsigned char)ptr[1]) >> 5)] & (1u << (((unsigned char)ptr[1]) & 0x1F)))) { *nextTokPtr = ptr; return 0; } case BT_NMSTRT: case BT_HEX: case BT_DIGIT: case BT_NAME: case BT_MINUS: ptr += 2; break; case BT_LEAD2: if (end - ptr < 2) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if (!0) { *nextTokPtr = ptr; return 0; } ptr += 4; break;
        default:
          tok = 19;
          break;
        }
        break;
      case 41:
        tok = 19;
        break;
      }
      break;

    case BT_PLUS:
      if (tok == 19) {
        *nextTokPtr = ptr;
        return 0;
      }
      *nextTokPtr = ptr + 2;
      return 32;
    case BT_AST:
      if (tok == 19) {
        *nextTokPtr = ptr;
        return 0;
      }
      *nextTokPtr = ptr + 2;
      return 31;
    case BT_QUEST:
      if (tok == 19) {
        *nextTokPtr = ptr;
        return 0;
      }
      *nextTokPtr = ptr + 2;
      return 30;
    default:
      *nextTokPtr = ptr;
      return 0;
    }
  }
  return -tok;
}

static int
big2_attributeValueTok(const ENCODING *enc, const char *ptr,
                          const char *end, const char **nextTokPtr)
{
  const char *start;
  if (ptr >= end)
    return -4;
  else if (! (end - ptr >= 1 * 2))
    return -1;
  start = ptr;
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {


    case BT_LEAD2: ptr += 2; break; case BT_LEAD3: ptr += 3; break; case BT_LEAD4: ptr += 4; break;

    case BT_AMP:
      if (ptr == start)
        return big2_scanRef(enc, ptr + 2, end, nextTokPtr);
      *nextTokPtr = ptr;
      return 6;
    case BT_LT:

      *nextTokPtr = ptr;
      return 0;
    case BT_LF:
      if (ptr == start) {
        *nextTokPtr = ptr + 2;
        return 7;
      }
      *nextTokPtr = ptr;
      return 6;
    case BT_CR:
      if (ptr == start) {
        ptr += 2;
        if (! (end - ptr >= 1 * 2))
          return -3;
        if (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1])) == BT_LF)
          ptr += 2;
        *nextTokPtr = ptr;
        return 7;
      }
      *nextTokPtr = ptr;
      return 6;
    case BT_S:
      if (ptr == start) {
        *nextTokPtr = ptr + 2;
        return 39;
      }
      *nextTokPtr = ptr;
      return 6;
    default:
      ptr += 2;
      break;
    }
  }
  *nextTokPtr = ptr;
  return 6;
}

static int
big2_entityValueTok(const ENCODING *enc, const char *ptr,
                       const char *end, const char **nextTokPtr)
{
  const char *start;
  if (ptr >= end)
    return -4;
  else if (! (end - ptr >= 1 * 2))
    return -1;
  start = ptr;
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {


    case BT_LEAD2: ptr += 2; break; case BT_LEAD3: ptr += 3; break; case BT_LEAD4: ptr += 4; break;

    case BT_AMP:
      if (ptr == start)
        return big2_scanRef(enc, ptr + 2, end, nextTokPtr);
      *nextTokPtr = ptr;
      return 6;
    case BT_PERCNT:
      if (ptr == start) {
        int tok = big2_scanPercent(enc, ptr + 2,
                                       end, nextTokPtr);
        return (tok == 22) ? 0 : tok;
      }
      *nextTokPtr = ptr;
      return 6;
    case BT_LF:
      if (ptr == start) {
        *nextTokPtr = ptr + 2;
        return 7;
      }
      *nextTokPtr = ptr;
      return 6;
    case BT_CR:
      if (ptr == start) {
        ptr += 2;
        if (! (end - ptr >= 1 * 2))
          return -3;
        if (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1])) == BT_LF)
          ptr += 2;
        *nextTokPtr = ptr;
        return 7;
      }
      *nextTokPtr = ptr;
      return 6;
    default:
      ptr += 2;
      break;
    }
  }
  *nextTokPtr = ptr;
  return 6;
}



static int
big2_ignoreSectionTok(const ENCODING *enc, const char *ptr,
                         const char *end, const char **nextTokPtr)
{
  int level = 0;
  if (2 > 1) {
    size_t n = end - ptr;
    if (n & (2 - 1)) {
      n &= ~(2 - 1);
      end = ptr + n;
    }
  }
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
    case BT_LEAD2: if (end - ptr < 2) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 2; break; case BT_LEAD3: if (end - ptr < 3) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 3; break; case BT_LEAD4: if (end - ptr < 4) return -2; if ((0)) { *(nextTokPtr) = (ptr); return 0; } ptr += 4; break; case BT_NONXML: case BT_MALFORM: case BT_TRAIL: *(nextTokPtr) = (ptr); return 0;
    case BT_LT:
      ptr += 2;
      { if (! (end - ptr >= 1 * 2)) { return -1; } };
      if (((ptr)[0] == 0 && (ptr)[1] == 0x21)) {
        ptr += 2;
        { if (! (end - ptr >= 1 * 2)) { return -1; } };
        if (((ptr)[0] == 0 && (ptr)[1] == 0x5B)) {
          ++level;
          ptr += 2;
        }
      }
      break;
    case BT_RSQB:
      ptr += 2;
      { if (! (end - ptr >= 1 * 2)) { return -1; } };
      if (((ptr)[0] == 0 && (ptr)[1] == 0x5D)) {
        ptr += 2;
        { if (! (end - ptr >= 1 * 2)) { return -1; } };
        if (((ptr)[0] == 0 && (ptr)[1] == 0x3E)) {
          ptr += 2;
          if (level == 0) {
            *nextTokPtr = ptr;
            return 42;
          }
          --level;
        }
      }
      break;
    default:
      ptr += 2;
      break;
    }
  }
  return -1;
}



static int
big2_isPublicId(const ENCODING *enc, const char *ptr, const char *end,
                   const char **badPtr)
{
  ptr += 2;
  end -= 2;
  for (; (end - ptr >= 1 * 2); ptr += 2) {
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
    case BT_DIGIT:
    case BT_HEX:
    case BT_MINUS:
    case BT_APOS:
    case BT_LPAR:
    case BT_RPAR:
    case BT_PLUS:
    case BT_COMMA:
    case BT_SOL:
    case BT_EQUALS:
    case BT_QUEST:
    case BT_CR:
    case BT_LF:
    case BT_SEMI:
    case BT_EXCL:
    case BT_AST:
    case BT_PERCNT:
    case BT_NUM:

    case BT_COLON:

      break;
    case BT_S:
      if (((ptr)[0] == 0 && (ptr)[1] == 0x09)) {
        *badPtr = ptr;
        return 0;
      }
      break;
    case BT_NAME:
    case BT_NMSTRT:
      if (!(((ptr)[0] == 0 ? (ptr)[1] : -1) & ~0x7f))
        break;

    default:
      switch (((ptr)[0] == 0 ? (ptr)[1] : -1)) {
      case 0x24:
      case 0x40:
        break;
      default:
        *badPtr = ptr;
        return 0;
      }
      break;
    }
  }
  return 1;
}






static int
big2_getAtts(const ENCODING *enc, const char *ptr,
                int attsMax, ATTRIBUTE *atts)
{
  enum { other, inName, inValue } state = inName;
  int nAtts = 0;
  int open = 0;


  for (ptr += 2;; ptr += 2) {
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
# 1450 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_impl.c"
    case BT_LEAD2: if (state == other) { if (nAtts < attsMax) { atts[nAtts].name = ptr; atts[nAtts].normalized = 1; } state = inName; } ptr += (2 - 2); break; case BT_LEAD3: if (state == other) { if (nAtts < attsMax) { atts[nAtts].name = ptr; atts[nAtts].normalized = 1; } state = inName; } ptr += (3 - 2); break; case BT_LEAD4: if (state == other) { if (nAtts < attsMax) { atts[nAtts].name = ptr; atts[nAtts].normalized = 1; } state = inName; } ptr += (4 - 2); break;

    case BT_NONASCII:
    case BT_NMSTRT:
    case BT_HEX:
      if (state == other) { if (nAtts < attsMax) { atts[nAtts].name = ptr; atts[nAtts].normalized = 1; } state = inName; }
      break;

    case BT_QUOT:
      if (state != inValue) {
        if (nAtts < attsMax)
          atts[nAtts].valuePtr = ptr + 2;
        state = inValue;
        open = BT_QUOT;
      }
      else if (open == BT_QUOT) {
        state = other;
        if (nAtts < attsMax)
          atts[nAtts].valueEnd = ptr;
        nAtts++;
      }
      break;
    case BT_APOS:
      if (state != inValue) {
        if (nAtts < attsMax)
          atts[nAtts].valuePtr = ptr + 2;
        state = inValue;
        open = BT_APOS;
      }
      else if (open == BT_APOS) {
        state = other;
        if (nAtts < attsMax)
          atts[nAtts].valueEnd = ptr;
        nAtts++;
      }
      break;
    case BT_AMP:
      if (nAtts < attsMax)
        atts[nAtts].normalized = 0;
      break;
    case BT_S:
      if (state == inName)
        state = other;
      else if (state == inValue
               && nAtts < attsMax
               && atts[nAtts].normalized
               && (ptr == atts[nAtts].valuePtr
                   || ((ptr)[0] == 0 ? (ptr)[1] : -1) != 0x20
                   || ((ptr + 2)[0] == 0 ? (ptr + 2)[1] : -1) == 0x20
                   || ((ptr + 2)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr + 2)[1]] : unicode_byte_type((ptr + 2)[0], (ptr + 2)[1])) == open))
        atts[nAtts].normalized = 0;
      break;
    case BT_CR: case BT_LF:


      if (state == inName)
        state = other;
      else if (state == inValue && nAtts < attsMax)
        atts[nAtts].normalized = 0;
      break;
    case BT_GT:
    case BT_SOL:
      if (state != inValue)
        return nAtts;
      break;
    default:
      break;
    }
  }

}

static int
big2_charRefNumber(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *ptr)
{
  int result = 0;

  ptr += 2*2;
  if (((ptr)[0] == 0 && (ptr)[1] == 0x78)) {
    for (ptr += 2;
         !((ptr)[0] == 0 && (ptr)[1] == 0x3B);
         ptr += 2) {
      int c = ((ptr)[0] == 0 ? (ptr)[1] : -1);
      switch (c) {
      case 0x30: case 0x31: case 0x32: case 0x33: case 0x34:
      case 0x35: case 0x36: case 0x37: case 0x38: case 0x39:
        result <<= 4;
        result |= (c - 0x30);
        break;
      case 0x41: case 0x42: case 0x43:
      case 0x44: case 0x45: case 0x46:
        result <<= 4;
        result += 10 + (c - 0x41);
        break;
      case 0x61: case 0x62: case 0x63:
      case 0x64: case 0x65: case 0x66:
        result <<= 4;
        result += 10 + (c - 0x61);
        break;
      }
      if (result >= 0x110000)
        return -1;
    }
  }
  else {
    for (; !((ptr)[0] == 0 && (ptr)[1] == 0x3B); ptr += 2) {
      int c = ((ptr)[0] == 0 ? (ptr)[1] : -1);
      result *= 10;
      result += (c - 0x30);
      if (result >= 0x110000)
        return -1;
    }
  }
  return checkCharRefNumber(result);
}

static int
big2_predefinedEntityName(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *ptr,
                             const char *end)
{
  switch ((end - ptr)/2) {
  case 2:
    if (((ptr + 2)[0] == 0 && (ptr + 2)[1] == 0x74)) {
      switch (((ptr)[0] == 0 ? (ptr)[1] : -1)) {
      case 0x6C:
        return 0x3C;
      case 0x67:
        return 0x3E;
      }
    }
    break;
  case 3:
    if (((ptr)[0] == 0 && (ptr)[1] == 0x61)) {
      ptr += 2;
      if (((ptr)[0] == 0 && (ptr)[1] == 0x6D)) {
        ptr += 2;
        if (((ptr)[0] == 0 && (ptr)[1] == 0x70))
          return 0x26;
      }
    }
    break;
  case 4:
    switch (((ptr)[0] == 0 ? (ptr)[1] : -1)) {
    case 0x71:
      ptr += 2;
      if (((ptr)[0] == 0 && (ptr)[1] == 0x75)) {
        ptr += 2;
        if (((ptr)[0] == 0 && (ptr)[1] == 0x6F)) {
          ptr += 2;
          if (((ptr)[0] == 0 && (ptr)[1] == 0x74))
            return 0x22;
        }
      }
      break;
    case 0x61:
      ptr += 2;
      if (((ptr)[0] == 0 && (ptr)[1] == 0x70)) {
        ptr += 2;
        if (((ptr)[0] == 0 && (ptr)[1] == 0x6F)) {
          ptr += 2;
          if (((ptr)[0] == 0 && (ptr)[1] == 0x73))
            return 0x27;
        }
      }
      break;
    }
  }
  return 0;
}

static int
big2_sameName(const ENCODING *enc, const char *ptr1, const char *ptr2)
{
  for (;;) {
    switch (((ptr1)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr1)[1]] : unicode_byte_type((ptr1)[0], (ptr1)[1]))) {




    case BT_LEAD4: if (*ptr1++ != *ptr2++) return 0; case BT_LEAD3: if (*ptr1++ != *ptr2++) return 0; case BT_LEAD2: if (*ptr1++ != *ptr2++) return 0;


      if (*ptr1++ != *ptr2++)
        return 0;
      break;
    case BT_NONASCII:
    case BT_NMSTRT:

    case BT_COLON:

    case BT_HEX:
    case BT_DIGIT:
    case BT_NAME:
    case BT_MINUS:
      if (*ptr2++ != *ptr1++)
        return 0;
      if (2 > 1) {
        if (*ptr2++ != *ptr1++)
          return 0;
        if (2 > 2) {
          if (*ptr2++ != *ptr1++)
            return 0;
          if (2 > 3) {
            if (*ptr2++ != *ptr1++)
              return 0;
          }
        }
      }
      break;
    default:
      if (2 == 1 && *ptr1 == *ptr2)
        return 1;
      switch (((ptr2)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr2)[1]] : unicode_byte_type((ptr2)[0], (ptr2)[1]))) {
      case BT_LEAD2:
      case BT_LEAD3:
      case BT_LEAD4:
      case BT_NONASCII:
      case BT_NMSTRT:

      case BT_COLON:

      case BT_HEX:
      case BT_DIGIT:
      case BT_NAME:
      case BT_MINUS:
        return 0;
      default:
        return 1;
      }
    }
  }

}

static int
big2_nameMatchesAscii(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *ptr1,
                         const char *end1, const char *ptr2)
{
  for (; *ptr2; ptr1 += 2, ptr2++) {
    if (end1 - ptr1 < 2)
      return 0;
    if (!((ptr1)[0] == 0 && (ptr1)[1] == *ptr2))
      return 0;
  }
  return ptr1 == end1;
}

static int
big2_nameLength(const ENCODING *enc, const char *ptr)
{
  const char *start = ptr;
  for (;;) {
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {


    case BT_LEAD2: ptr += 2; break; case BT_LEAD3: ptr += 3; break; case BT_LEAD4: ptr += 4; break;

    case BT_NONASCII:
    case BT_NMSTRT:

    case BT_COLON:

    case BT_HEX:
    case BT_DIGIT:
    case BT_NAME:
    case BT_MINUS:
      ptr += 2;
      break;
    default:
      return (int)(ptr - start);
    }
  }
}

static const char *
big2_skipS(const ENCODING *enc, const char *ptr)
{
  for (;;) {
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {
    case BT_LF:
    case BT_CR:
    case BT_S:
      ptr += 2;
      break;
    default:
      return ptr;
    }
  }
}

static void
big2_updatePosition(const ENCODING *enc,
                       const char *ptr,
                       const char *end,
                       POSITION *pos)
{
  while ((end - ptr >= 1 * 2)) {
    switch (((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1]))) {




    case BT_LEAD2: ptr += 2; break; case BT_LEAD3: ptr += 3; break; case BT_LEAD4: ptr += 4; break;

    case BT_LF:
      pos->columnNumber = (XML_Size)-1;
      pos->lineNumber++;
      ptr += 2;
      break;
    case BT_CR:
      pos->lineNumber++;
      ptr += 2;
      if ((end - ptr >= 1 * 2) && ((ptr)[0] == 0 ? ((struct normal_encoding *)(enc))->type[(unsigned char)(ptr)[1]] : unicode_byte_type((ptr)[0], (ptr)[1])) == BT_LF)
        ptr += 2;
      pos->columnNumber = (XML_Size)-1;
      break;
    default:
      ptr += 2;
      break;
    }
    pos->columnNumber++;
  }
}
# 939 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
# 955 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
static const struct normal_encoding big2_encoding_ns = {
  { { big2_prologTok, big2_contentTok, big2_cdataSectionTok , big2_ignoreSectionTok }, { big2_attributeValueTok, big2_entityValueTok }, big2_sameName, big2_nameMatchesAscii, big2_nameLength, big2_skipS, big2_getAtts, big2_charRefNumber, big2_predefinedEntityName, big2_updatePosition, big2_isPublicId, big2_toUtf8, big2_toUtf16, 2, 0,



  0

  },
  {
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/asciitab.h" 1




           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_S, BT_LF, BT_NONXML,
           BT_NONXML, BT_CR, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_S, BT_EXCL, BT_QUOT, BT_NUM,
           BT_OTHER, BT_PERCNT, BT_AMP, BT_APOS,
           BT_LPAR, BT_RPAR, BT_AST, BT_PLUS,
           BT_COMMA, BT_MINUS, BT_NAME, BT_SOL,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_COLON, BT_SEMI,
           BT_LT, BT_EQUALS, BT_GT, BT_QUEST,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_LSQB,
           BT_OTHER, BT_RSQB, BT_OTHER, BT_NMSTRT,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_VERBAR, BT_OTHER, BT_OTHER, BT_OTHER,
# 965 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/latin1tab.h" 1




           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_NMSTRT, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_NMSTRT, BT_OTHER, BT_NAME,
           BT_OTHER, BT_OTHER, BT_NMSTRT, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
# 966 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
  },
  
# 967 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                        ((void *)0)
# 967 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                        , 
# 967 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                        ((void *)0)
# 967 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                        , 
# 967 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                        ((void *)0)
# 967 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                        , 
# 967 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                        ((void *)0)
# 967 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                        , 
# 967 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                        ((void *)0)
# 967 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                        , 
# 967 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                        ((void *)0)
# 967 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                        , 
# 967 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                        ((void *)0)
# 967 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                        , 
# 967 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                        ((void *)0)
# 967 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                        , 
# 967 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                        ((void *)0)

# 968 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
};



static const struct normal_encoding big2_encoding = {
  { { big2_prologTok, big2_contentTok, big2_cdataSectionTok , big2_ignoreSectionTok }, { big2_attributeValueTok, big2_entityValueTok }, big2_sameName, big2_nameMatchesAscii, big2_nameLength, big2_skipS, big2_getAtts, big2_charRefNumber, big2_predefinedEntityName, big2_updatePosition, big2_isPublicId, big2_toUtf8, big2_toUtf16, 2, 0,



  0

  },
  {

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/asciitab.h" 1




           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_S, BT_LF, BT_NONXML,
           BT_NONXML, BT_CR, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_NONXML, BT_NONXML, BT_NONXML, BT_NONXML,
           BT_S, BT_EXCL, BT_QUOT, BT_NUM,
           BT_OTHER, BT_PERCNT, BT_AMP, BT_APOS,
           BT_LPAR, BT_RPAR, BT_AST, BT_PLUS,
           BT_COMMA, BT_MINUS, BT_NAME, BT_SOL,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_DIGIT, BT_DIGIT,
           BT_DIGIT, BT_DIGIT, BT_NMSTRT, BT_SEMI,
           BT_LT, BT_EQUALS, BT_GT, BT_QUEST,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_LSQB,
           BT_OTHER, BT_RSQB, BT_OTHER, BT_NMSTRT,
           BT_OTHER, BT_HEX, BT_HEX, BT_HEX,
           BT_HEX, BT_HEX, BT_HEX, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_VERBAR, BT_OTHER, BT_OTHER, BT_OTHER,
# 983 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2

# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/latin1tab.h" 1




           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_NMSTRT, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_OTHER, BT_NMSTRT, BT_OTHER, BT_NAME,
           BT_OTHER, BT_OTHER, BT_NMSTRT, BT_OTHER,
           BT_OTHER, BT_OTHER, BT_OTHER, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_OTHER,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
           BT_NMSTRT, BT_NMSTRT, BT_NMSTRT, BT_NMSTRT,
# 985 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
  },
  
# 986 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                        ((void *)0)
# 986 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                        , 
# 986 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                        ((void *)0)
# 986 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                        , 
# 986 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                        ((void *)0)
# 986 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                        , 
# 986 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                        ((void *)0)
# 986 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                        , 
# 986 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                        ((void *)0)
# 986 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                        , 
# 986 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                        ((void *)0)
# 986 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                        , 
# 986 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                        ((void *)0)
# 986 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                        , 
# 986 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                        ((void *)0)
# 986 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                        , 
# 986 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                        ((void *)0)

# 987 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
};
# 1019 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
static int
streqci(const char *s1, const char *s2)
{
  for (;;) {
    char c1 = *s1++;
    char c2 = *s2++;
    if (0x61 <= c1 && c1 <= 0x7A)
      c1 += 0x41 - 0x61;
    if (0x61 <= c2 && c2 <= 0x7A)
      c2 += 0x41 - 0x61;
    if (c1 != c2)
      return 0;
    if (!c1)
      break;
  }
  return 1;
}

static void
initUpdatePosition(const ENCODING *UNUSED_enc __attribute__((__unused__)), const char *ptr,
                   const char *end, POSITION *pos)
{
  normal_updatePosition(&utf8_encoding.enc, ptr, end, pos);
}

static int
toAscii(const ENCODING *enc, const char *ptr, const char *end)
{
  char buf[1];
  char *p = buf;
  (((enc)->utf8Convert)(enc, &ptr, end, &p, p + 1));
  if (p == buf)
    return -1;
  else
    return buf[0];
}

static int
isSpace(int c)
{
  switch (c) {
  case 0x20:
  case 0xD:
  case 0xA:
  case 0x9:
    return 1;
  }
  return 0;
}




static int
parsePseudoAttribute(const ENCODING *enc,
                     const char *ptr,
                     const char *end,
                     const char **namePtr,
                     const char **nameEndPtr,
                     const char **valPtr,
                     const char **nextTokPtr)
{
  int c;
  char open;
  if (ptr == end) {
    *namePtr = 
# 1084 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
              ((void *)0)
# 1084 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                  ;
    return 1;
  }
  if (!isSpace(toAscii(enc, ptr, end))) {
    *nextTokPtr = ptr;
    return 0;
  }
  do {
    ptr += enc->minBytesPerChar;
  } while (isSpace(toAscii(enc, ptr, end)));
  if (ptr == end) {
    *namePtr = 
# 1095 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
              ((void *)0)
# 1095 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                  ;
    return 1;
  }
  *namePtr = ptr;
  for (;;) {
    c = toAscii(enc, ptr, end);
    if (c == -1) {
      *nextTokPtr = ptr;
      return 0;
    }
    if (c == 0x3D) {
      *nameEndPtr = ptr;
      break;
    }
    if (isSpace(c)) {
      *nameEndPtr = ptr;
      do {
        ptr += enc->minBytesPerChar;
      } while (isSpace(c = toAscii(enc, ptr, end)));
      if (c != 0x3D) {
        *nextTokPtr = ptr;
        return 0;
      }
      break;
    }
    ptr += enc->minBytesPerChar;
  }
  if (ptr == *namePtr) {
    *nextTokPtr = ptr;
    return 0;
  }
  ptr += enc->minBytesPerChar;
  c = toAscii(enc, ptr, end);
  while (isSpace(c)) {
    ptr += enc->minBytesPerChar;
    c = toAscii(enc, ptr, end);
  }
  if (c != 0x22 && c != 0x27) {
    *nextTokPtr = ptr;
    return 0;
  }
  open = (char)c;
  ptr += enc->minBytesPerChar;
  *valPtr = ptr;
  for (;; ptr += enc->minBytesPerChar) {
    c = toAscii(enc, ptr, end);
    if (c == open)
      break;
    if (!(0x61 <= c && c <= 0x7A)
        && !(0x41 <= c && c <= 0x5A)
        && !(0x30 <= c && c <= 0x39)
        && c != 0x2E
        && c != 0x2D
        && c != 0x5F) {
      *nextTokPtr = ptr;
      return 0;
    }
  }
  *nextTokPtr = ptr + enc->minBytesPerChar;
  return 1;
}

static const char KW_version[] = {
  0x76, 0x65, 0x72, 0x73, 0x69, 0x6F, 0x6E, '\0'
};

static const char KW_encoding[] = {
  0x65, 0x6E, 0x63, 0x6F, 0x64, 0x69, 0x6E, 0x67, '\0'
};

static const char KW_standalone[] = {
  0x73, 0x74, 0x61, 0x6E, 0x64, 0x61, 0x6C, 0x6F,
  0x6E, 0x65, '\0'
};

static const char KW_yes[] = {
  0x79, 0x65, 0x73, '\0'
};

static const char KW_no[] = {
  0x6E, 0x6F, '\0'
};

static int
doParseXmlDecl(const ENCODING *(*encodingFinder)(const ENCODING *,
                                                 const char *,
                                                 const char *),
               int isGeneralTextEntity,
               const ENCODING *enc,
               const char *ptr,
               const char *end,
               const char **badPtr,
               const char **versionPtr,
               const char **versionEndPtr,
               const char **encodingName,
               const ENCODING **encoding,
               int *standalone)
{
  const char *val = 
# 1193 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                   ((void *)0)
# 1193 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                       ;
  const char *name = 
# 1194 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                    ((void *)0)
# 1194 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                        ;
  const char *nameEnd = 
# 1195 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
                       ((void *)0)
# 1195 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                           ;
  ptr += 5 * enc->minBytesPerChar;
  end -= 2 * enc->minBytesPerChar;
  if (!parsePseudoAttribute(enc, ptr, end, &name, &nameEnd, &val, &ptr)
      || !name) {
    *badPtr = ptr;
    return 0;
  }
  if (!(((enc)->nameMatchesAscii)(enc, name, nameEnd, KW_version))) {
    if (!isGeneralTextEntity) {
      *badPtr = name;
      return 0;
    }
  }
  else {
    if (versionPtr)
      *versionPtr = val;
    if (versionEndPtr)
      *versionEndPtr = ptr;
    if (!parsePseudoAttribute(enc, ptr, end, &name, &nameEnd, &val, &ptr)) {
      *badPtr = ptr;
      return 0;
    }
    if (!name) {
      if (isGeneralTextEntity) {

        *badPtr = ptr;
        return 0;
      }
      return 1;
    }
  }
  if ((((enc)->nameMatchesAscii)(enc, name, nameEnd, KW_encoding))) {
    int c = toAscii(enc, val, end);
    if (!(0x61 <= c && c <= 0x7A) && !(0x41 <= c && c <= 0x5A)) {
      *badPtr = val;
      return 0;
    }
    if (encodingName)
      *encodingName = val;
    if (encoding)
      *encoding = encodingFinder(enc, val, ptr - enc->minBytesPerChar);
    if (!parsePseudoAttribute(enc, ptr, end, &name, &nameEnd, &val, &ptr)) {
      *badPtr = ptr;
      return 0;
    }
    if (!name)
      return 1;
  }
  if (!(((enc)->nameMatchesAscii)(enc, name, nameEnd, KW_standalone))
      || isGeneralTextEntity) {
    *badPtr = name;
    return 0;
  }
  if ((((enc)->nameMatchesAscii)(enc, val, ptr - enc->minBytesPerChar, KW_yes))) {
    if (standalone)
      *standalone = 1;
  }
  else if ((((enc)->nameMatchesAscii)(enc, val, ptr - enc->minBytesPerChar, KW_no))) {
    if (standalone)
      *standalone = 0;
  }
  else {
    *badPtr = val;
    return 0;
  }
  while (isSpace(toAscii(enc, ptr, end)))
    ptr += enc->minBytesPerChar;
  if (ptr != end) {
    *badPtr = ptr;
    return 0;
  }
  return 1;
}

static int
checkCharRefNumber(int result)
{
  switch (result >> 8) {
  case 0xD8: case 0xD9: case 0xDA: case 0xDB:
  case 0xDC: case 0xDD: case 0xDE: case 0xDF:
    return -1;
  case 0:
    if (latin1_encoding.type[result] == BT_NONXML)
      return -1;
    break;
  case 0xFF:
    if (result == 0xFFFE || result == 0xFFFF)
      return -1;
    break;
  }
  return result;
}

int
XmlUtf8Encode(int c, char *buf)
{
  enum {

    min2 = 0x80,
    min3 = 0x800,
    min4 = 0x10000
  };

  if (c < 0)
    return 0;
  if (c < min2) {
    buf[0] = (char)(c | UTF8_cval1);
    return 1;
  }
  if (c < min3) {
    buf[0] = (char)((c >> 6) | UTF8_cval2);
    buf[1] = (char)((c & 0x3f) | 0x80);
    return 2;
  }
  if (c < min4) {
    buf[0] = (char)((c >> 12) | UTF8_cval3);
    buf[1] = (char)(((c >> 6) & 0x3f) | 0x80);
    buf[2] = (char)((c & 0x3f) | 0x80);
    return 3;
  }
  if (c < 0x110000) {
    buf[0] = (char)((c >> 18) | UTF8_cval4);
    buf[1] = (char)(((c >> 12) & 0x3f) | 0x80);
    buf[2] = (char)(((c >> 6) & 0x3f) | 0x80);
    buf[3] = (char)((c & 0x3f) | 0x80);
    return 4;
  }
  return 0;
}

int
XmlUtf16Encode(int charNum, unsigned short *buf)
{
  if (charNum < 0)
    return 0;
  if (charNum < 0x10000) {
    buf[0] = (unsigned short)charNum;
    return 1;
  }
  if (charNum < 0x110000) {
    charNum -= 0x10000;
    buf[0] = (unsigned short)((charNum >> 10) + 0xD800);
    buf[1] = (unsigned short)((charNum & 0x3FF) + 0xDC00);
    return 2;
  }
  return 0;
}

struct unknown_encoding {
  struct normal_encoding normal;
  CONVERTER convert;
  void *userData;
  unsigned short utf16[256];
  char utf8[256][4];
};



int
XmlSizeOfUnknownEncoding(void)
{
  return sizeof(struct unknown_encoding);
}

static int
unknown_isName(const ENCODING *enc, const char *p)
{
  const struct unknown_encoding *uenc = ((const struct unknown_encoding *) (enc));
  int c = uenc->convert(uenc->userData, p);
  if (c & ~0xFFFF)
    return 0;
  return (namingBitmap[(namePages[c >> 8] << 3) + ((c & 0xFF) >> 5)] & (1u << ((c & 0xFF) & 0x1F)));
}

static int
unknown_isNmstrt(const ENCODING *enc, const char *p)
{
  const struct unknown_encoding *uenc = ((const struct unknown_encoding *) (enc));
  int c = uenc->convert(uenc->userData, p);
  if (c & ~0xFFFF)
    return 0;
  return (namingBitmap[(nmstrtPages[c >> 8] << 3) + ((c & 0xFF) >> 5)] & (1u << ((c & 0xFF) & 0x1F)));
}

static int
unknown_isInvalid(const ENCODING *enc, const char *p)
{
  const struct unknown_encoding *uenc = ((const struct unknown_encoding *) (enc));
  int c = uenc->convert(uenc->userData, p);
  return (c & ~0xFFFF) || checkCharRefNumber(c) < 0;
}

static enum XML_Convert_Result
unknown_toUtf8(const ENCODING *enc,
               const char **fromP, const char *fromLim,
               char **toP, const char *toLim)
{
  const struct unknown_encoding *uenc = ((const struct unknown_encoding *) (enc));
  char buf[4];
  for (;;) {
    const char *utf8;
    int n;
    if (*fromP == fromLim)
      return XML_CONVERT_COMPLETED;
    utf8 = uenc->utf8[(unsigned char)**fromP];
    n = *utf8++;
    if (n == 0) {
      int c = uenc->convert(uenc->userData, *fromP);
      n = XmlUtf8Encode(c, buf);
      if (n > toLim - *toP)
        return XML_CONVERT_OUTPUT_EXHAUSTED;
      utf8 = buf;
      *fromP += (((const struct normal_encoding *) (enc))->type[(unsigned char)**fromP]
                 - (BT_LEAD2 - 2));
    }
    else {
      if (n > toLim - *toP)
        return XML_CONVERT_OUTPUT_EXHAUSTED;
      (*fromP)++;
    }
    do {
      *(*toP)++ = *utf8++;
    } while (--n != 0);
  }
}

static enum XML_Convert_Result
unknown_toUtf16(const ENCODING *enc,
                const char **fromP, const char *fromLim,
                unsigned short **toP, const unsigned short *toLim)
{
  const struct unknown_encoding *uenc = ((const struct unknown_encoding *) (enc));
  while (*fromP < fromLim && *toP < toLim) {
    unsigned short c = uenc->utf16[(unsigned char)**fromP];
    if (c == 0) {
      c = (unsigned short)
          uenc->convert(uenc->userData, *fromP);
      *fromP += (((const struct normal_encoding *) (enc))->type[(unsigned char)**fromP]
                 - (BT_LEAD2 - 2));
    }
    else
      (*fromP)++;
    *(*toP)++ = c;
  }

  if ((*toP == toLim) && (*fromP < fromLim))
    return XML_CONVERT_OUTPUT_EXHAUSTED;
  else
    return XML_CONVERT_COMPLETED;
}

ENCODING *
XmlInitUnknownEncoding(void *mem,
                       int *table,
                       CONVERTER convert,
                       void *userData)
{
  int i;
  struct unknown_encoding *e = (struct unknown_encoding *)mem;
  for (i = 0; i < (int)sizeof(struct normal_encoding); i++)
    ((char *)mem)[i] = ((char *)&latin1_encoding)[i];
  for (i = 0; i < 128; i++)
    if (latin1_encoding.type[i] != BT_OTHER
        && latin1_encoding.type[i] != BT_NONXML
        && table[i] != i)
      return 0;
  for (i = 0; i < 256; i++) {
    int c = table[i];
    if (c == -1) {
      e->normal.type[i] = BT_MALFORM;

      e->utf16[i] = 0xFFFF;
      e->utf8[i][0] = 1;
      e->utf8[i][1] = 0;
    }
    else if (c < 0) {
      if (c < -4)
        return 0;
      e->normal.type[i] = (unsigned char)(BT_LEAD2 - (c + 2));
      e->utf8[i][0] = 0;
      e->utf16[i] = 0;
    }
    else if (c < 0x80) {
      if (latin1_encoding.type[c] != BT_OTHER
          && latin1_encoding.type[c] != BT_NONXML
          && c != i)
        return 0;
      e->normal.type[i] = latin1_encoding.type[c];
      e->utf8[i][0] = 1;
      e->utf8[i][1] = (char)c;
      e->utf16[i] = (unsigned short)(c == 0 ? 0xFFFF : c);
    }
    else if (checkCharRefNumber(c) < 0) {
      e->normal.type[i] = BT_NONXML;

      e->utf16[i] = 0xFFFF;
      e->utf8[i][0] = 1;
      e->utf8[i][1] = 0;
    }
    else {
      if (c > 0xFFFF)
        return 0;
      if ((namingBitmap[(nmstrtPages[c >> 8] << 3) + ((c & 0xff) >> 5)] & (1u << ((c & 0xff) & 0x1F))))
        e->normal.type[i] = BT_NMSTRT;
      else if ((namingBitmap[(namePages[c >> 8] << 3) + ((c & 0xff) >> 5)] & (1u << ((c & 0xff) & 0x1F))))
        e->normal.type[i] = BT_NAME;
      else
        e->normal.type[i] = BT_OTHER;
      e->utf8[i][0] = (char)XmlUtf8Encode(c, e->utf8[i] + 1);
      e->utf16[i] = (unsigned short)c;
    }
  }
  e->userData = userData;
  e->convert = convert;
  if (convert) {
    e->normal.isName2 = unknown_isName;
    e->normal.isName3 = unknown_isName;
    e->normal.isName4 = unknown_isName;
    e->normal.isNmstrt2 = unknown_isNmstrt;
    e->normal.isNmstrt3 = unknown_isNmstrt;
    e->normal.isNmstrt4 = unknown_isNmstrt;
    e->normal.isInvalid2 = unknown_isInvalid;
    e->normal.isInvalid3 = unknown_isInvalid;
    e->normal.isInvalid4 = unknown_isInvalid;
  }
  e->normal.enc.utf8Convert = unknown_toUtf8;
  e->normal.enc.utf16Convert = unknown_toUtf16;
  return &(e->normal.enc);
}



enum {
  UNKNOWN_ENC = -1,
  ISO_8859_1_ENC = 0,
  US_ASCII_ENC,
  UTF_8_ENC,
  UTF_16_ENC,
  UTF_16BE_ENC,
  UTF_16LE_ENC,

  NO_ENC
};

static const char KW_ISO_8859_1[] = {
  0x49, 0x53, 0x4F, 0x2D, 0x38, 0x38, 0x35, 0x39,
  0x2D, 0x31, '\0'
};
static const char KW_US_ASCII[] = {
  0x55, 0x53, 0x2D, 0x41, 0x53, 0x43, 0x49, 0x49,
  '\0'
};
static const char KW_UTF_8[] = {
  0x55, 0x54, 0x46, 0x2D, 0x38, '\0'
};
static const char KW_UTF_16[] = {
  0x55, 0x54, 0x46, 0x2D, 0x31, 0x36, '\0'
};
static const char KW_UTF_16BE[] = {
  0x55, 0x54, 0x46, 0x2D, 0x31, 0x36, 0x42, 0x45,
  '\0'
};
static const char KW_UTF_16LE[] = {
  0x55, 0x54, 0x46, 0x2D, 0x31, 0x36, 0x4C, 0x45,
  '\0'
};

static int
getEncodingIndex(const char *name)
{
  static const char * const encodingNames[] = {
    KW_ISO_8859_1,
    KW_US_ASCII,
    KW_UTF_8,
    KW_UTF_16,
    KW_UTF_16BE,
    KW_UTF_16LE,
  };
  int i;
  if (name == 
# 1575 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 3 4
             ((void *)0)
# 1575 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
                 )
    return NO_ENC;
  for (i = 0; i < (int)(sizeof(encodingNames)/sizeof(encodingNames[0])); i++)
    if (streqci(name, encodingNames[i]))
      return i;
  return UNKNOWN_ENC;
}
# 1598 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
static int
initScan(const ENCODING * const *encodingTable,
         const INIT_ENCODING *enc,
         int state,
         const char *ptr,
         const char *end,
         const char **nextTokPtr)
{
  const ENCODING **encPtr;

  if (ptr >= end)
    return -4;
  encPtr = enc->encPtr;
  if (ptr + 1 == end) {
# 1620 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
    switch (((int)(enc)->initEnc.isUtf16)) {
    case UTF_16_ENC:
    case UTF_16LE_ENC:
    case UTF_16BE_ENC:
      return -1;
    }
    switch ((unsigned char)*ptr) {
    case 0xFE:
    case 0xFF:
    case 0xEF:
      if (((int)(enc)->initEnc.isUtf16) == ISO_8859_1_ENC
          && state == 1)
        break;

    case 0x00:
    case 0x3C:
      return -1;
    }
  }
  else {
    switch (((unsigned char)ptr[0] << 8) | (unsigned char)ptr[1]) {
    case 0xFEFF:
      if (((int)(enc)->initEnc.isUtf16) == ISO_8859_1_ENC
          && state == 1)
        break;
      *nextTokPtr = ptr + 2;
      *encPtr = encodingTable[UTF_16BE_ENC];
      return 14;

    case 0x3C00:
      if ((((int)(enc)->initEnc.isUtf16) == UTF_16BE_ENC
           || ((int)(enc)->initEnc.isUtf16) == UTF_16_ENC)
          && state == 1)
        break;
      *encPtr = encodingTable[UTF_16LE_ENC];
      return (((*encPtr)->scanners[state])(*encPtr, ptr, end, nextTokPtr));
    case 0xFFFE:
      if (((int)(enc)->initEnc.isUtf16) == ISO_8859_1_ENC
          && state == 1)
        break;
      *nextTokPtr = ptr + 2;
      *encPtr = encodingTable[UTF_16LE_ENC];
      return 14;
    case 0xEFBB:







      if (state == 1) {
        int e = ((int)(enc)->initEnc.isUtf16);
        if (e == ISO_8859_1_ENC || e == UTF_16BE_ENC
            || e == UTF_16LE_ENC || e == UTF_16_ENC)
          break;
      }
      if (ptr + 2 == end)
        return -1;
      if ((unsigned char)ptr[2] == 0xBF) {
        *nextTokPtr = ptr + 3;
        *encPtr = encodingTable[UTF_8_ENC];
        return 14;
      }
      break;
    default:
      if (ptr[0] == '\0') {






        if (state == 1 && ((int)(enc)->initEnc.isUtf16) == UTF_16LE_ENC)
          break;
        *encPtr = encodingTable[UTF_16BE_ENC];
        return (((*encPtr)->scanners[state])(*encPtr, ptr, end, nextTokPtr));
      }
      else if (ptr[1] == '\0') {
# 1708 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
        if (state == 1)
          break;
        *encPtr = encodingTable[UTF_16LE_ENC];
        return (((*encPtr)->scanners[state])(*encPtr, ptr, end, nextTokPtr));
      }
      break;
    }
  }
  *encPtr = encodingTable[((int)(enc)->initEnc.isUtf16)];
  return (((*encPtr)->scanners[state])(*encPtr, ptr, end, nextTokPtr));
}





# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_ns.c" 1







const ENCODING *
XmlGetUtf8InternalEncoding(void)
{
  return &internal_utf8_encoding.enc;
}

const ENCODING *
XmlGetUtf16InternalEncoding(void)
{

  return &internal_little2_encoding.enc;
# 27 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_ns.c"
}

static const ENCODING * const encodings[] = {
  &latin1_encoding.enc,
  &ascii_encoding.enc,
  &utf8_encoding.enc,
  &big2_encoding.enc,
  &big2_encoding.enc,
  &little2_encoding.enc,
  &utf8_encoding.enc
};

static int
initScanProlog(const ENCODING *enc, const char *ptr, const char *end,
                   const char **nextTokPtr)
{
  return initScan(encodings, (const INIT_ENCODING *)enc,
                  0, ptr, end, nextTokPtr);
}

static int
initScanContent(const ENCODING *enc, const char *ptr, const char *end,
                    const char **nextTokPtr)
{
  return initScan(encodings, (const INIT_ENCODING *)enc,
                  1, ptr, end, nextTokPtr);
}

int
XmlInitEncoding(INIT_ENCODING *p, const ENCODING **encPtr,
                    const char *name)
{
  int i = getEncodingIndex(name);
  if (i == UNKNOWN_ENC)
    return 0;
  ((p)->initEnc.isUtf16 = (char)i);
  p->initEnc.scanners[0] = initScanProlog;
  p->initEnc.scanners[1] = initScanContent;
  p->initEnc.updatePosition = initUpdatePosition;
  p->encPtr = encPtr;
  *encPtr = &(p->initEnc);
  return 1;
}

static const ENCODING *
findEncoding(const ENCODING *enc, const char *ptr, const char *end)
{

  char buf[128];
  char *p = buf;
  int i;
  (((enc)->utf8Convert)(enc, &ptr, end, &p, p + 128 - 1));
  if (ptr != end)
    return 0;
  *p = 0;
  if (streqci(buf, KW_UTF_16) && enc->minBytesPerChar == 2)
    return enc;
  i = getEncodingIndex(buf);
  if (i == UNKNOWN_ENC)
    return 0;
  return encodings[i];
}

int
XmlParseXmlDecl(int isGeneralTextEntity,
                    const ENCODING *enc,
                    const char *ptr,
                    const char *end,
                    const char **badPtr,
                    const char **versionPtr,
                    const char **versionEndPtr,
                    const char **encodingName,
                    const ENCODING **encoding,
                    int *standalone)
{
  return doParseXmlDecl(findEncoding,
                        isGeneralTextEntity,
                        enc,
                        ptr,
                        end,
                        badPtr,
                        versionPtr,
                        versionEndPtr,
                        encodingName,
                        encoding,
                        standalone);
}
# 1725 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2
# 1735 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_ns.c" 1







const ENCODING *
XmlGetUtf8InternalEncodingNS(void)
{
  return &internal_utf8_encoding_ns.enc;
}

const ENCODING *
XmlGetUtf16InternalEncodingNS(void)
{

  return &internal_little2_encoding_ns.enc;
# 27 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok_ns.c"
}

static const ENCODING * const encodingsNS[] = {
  &latin1_encoding_ns.enc,
  &ascii_encoding_ns.enc,
  &utf8_encoding_ns.enc,
  &big2_encoding_ns.enc,
  &big2_encoding_ns.enc,
  &little2_encoding_ns.enc,
  &utf8_encoding_ns.enc
};

static int
initScanPrologNS(const ENCODING *enc, const char *ptr, const char *end,
                   const char **nextTokPtr)
{
  return initScan(encodingsNS, (const INIT_ENCODING *)enc,
                  0, ptr, end, nextTokPtr);
}

static int
initScanContentNS(const ENCODING *enc, const char *ptr, const char *end,
                    const char **nextTokPtr)
{
  return initScan(encodingsNS, (const INIT_ENCODING *)enc,
                  1, ptr, end, nextTokPtr);
}

int
XmlInitEncodingNS(INIT_ENCODING *p, const ENCODING **encPtr,
                    const char *name)
{
  int i = getEncodingIndex(name);
  if (i == UNKNOWN_ENC)
    return 0;
  ((p)->initEnc.isUtf16 = (char)i);
  p->initEnc.scanners[0] = initScanPrologNS;
  p->initEnc.scanners[1] = initScanContentNS;
  p->initEnc.updatePosition = initUpdatePosition;
  p->encPtr = encPtr;
  *encPtr = &(p->initEnc);
  return 1;
}

static const ENCODING *
findEncodingNS(const ENCODING *enc, const char *ptr, const char *end)
{

  char buf[128];
  char *p = buf;
  int i;
  (((enc)->utf8Convert)(enc, &ptr, end, &p, p + 128 - 1));
  if (ptr != end)
    return 0;
  *p = 0;
  if (streqci(buf, KW_UTF_16) && enc->minBytesPerChar == 2)
    return enc;
  i = getEncodingIndex(buf);
  if (i == UNKNOWN_ENC)
    return 0;
  return encodingsNS[i];
}

int
XmlParseXmlDeclNS(int isGeneralTextEntity,
                    const ENCODING *enc,
                    const char *ptr,
                    const char *end,
                    const char **badPtr,
                    const char **versionPtr,
                    const char **versionEndPtr,
                    const char **encodingName,
                    const ENCODING **encoding,
                    int *standalone)
{
  return doParseXmlDecl(findEncodingNS,
                        isGeneralTextEntity,
                        enc,
                        ptr,
                        end,
                        badPtr,
                        versionPtr,
                        versionEndPtr,
                        encodingName,
                        encoding,
                        standalone);
}
# 1736 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmltok.c" 2





ENCODING *
XmlInitUnknownEncodingNS(void *mem,
                         int *table,
                         CONVERTER convert,
                         void *userData)
{
  ENCODING *enc = XmlInitUnknownEncoding(mem, table, convert, userData);
  if (enc)
    ((struct normal_encoding *)enc)->type[0x3A] = BT_COLON;
  return enc;
}
