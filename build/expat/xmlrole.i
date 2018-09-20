# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlrole.c"
# 1 "D:\\ESP32\\esp-idf-v3.1-rc1\\ESP32_PIC_A2DP\\build\\expat//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlrole.c"




# 1 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4

# 149 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 6 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlrole.c" 2
# 17 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlrole.c"
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat_config.h" 1
# 18 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlrole.c" 2



# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat_external.h" 1
# 108 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat_external.h"

# 108 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat_external.h"
typedef char XML_Char;
typedef char XML_LChar;
# 121 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/expat_external.h"
typedef long XML_Index;
typedef unsigned long XML_Size;
# 22 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlrole.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/internal.h" 1
# 89 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/internal.h"
void
align_limit_to_full_utf8_characters(const char * from, const char ** fromLimRef);
# 23 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlrole.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/xmlrole.h" 1
# 14 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/xmlrole.h"
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
# 15 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/xmlrole.h" 2





enum {
  XML_ROLE_ERROR = -1,
  XML_ROLE_NONE = 0,
  XML_ROLE_XML_DECL,
  XML_ROLE_INSTANCE_START,
  XML_ROLE_DOCTYPE_NONE,
  XML_ROLE_DOCTYPE_NAME,
  XML_ROLE_DOCTYPE_SYSTEM_ID,
  XML_ROLE_DOCTYPE_PUBLIC_ID,
  XML_ROLE_DOCTYPE_INTERNAL_SUBSET,
  XML_ROLE_DOCTYPE_CLOSE,
  XML_ROLE_GENERAL_ENTITY_NAME,
  XML_ROLE_PARAM_ENTITY_NAME,
  XML_ROLE_ENTITY_NONE,
  XML_ROLE_ENTITY_VALUE,
  XML_ROLE_ENTITY_SYSTEM_ID,
  XML_ROLE_ENTITY_PUBLIC_ID,
  XML_ROLE_ENTITY_COMPLETE,
  XML_ROLE_ENTITY_NOTATION_NAME,
  XML_ROLE_NOTATION_NONE,
  XML_ROLE_NOTATION_NAME,
  XML_ROLE_NOTATION_SYSTEM_ID,
  XML_ROLE_NOTATION_NO_SYSTEM_ID,
  XML_ROLE_NOTATION_PUBLIC_ID,
  XML_ROLE_ATTRIBUTE_NAME,
  XML_ROLE_ATTRIBUTE_TYPE_CDATA,
  XML_ROLE_ATTRIBUTE_TYPE_ID,
  XML_ROLE_ATTRIBUTE_TYPE_IDREF,
  XML_ROLE_ATTRIBUTE_TYPE_IDREFS,
  XML_ROLE_ATTRIBUTE_TYPE_ENTITY,
  XML_ROLE_ATTRIBUTE_TYPE_ENTITIES,
  XML_ROLE_ATTRIBUTE_TYPE_NMTOKEN,
  XML_ROLE_ATTRIBUTE_TYPE_NMTOKENS,
  XML_ROLE_ATTRIBUTE_ENUM_VALUE,
  XML_ROLE_ATTRIBUTE_NOTATION_VALUE,
  XML_ROLE_ATTLIST_NONE,
  XML_ROLE_ATTLIST_ELEMENT_NAME,
  XML_ROLE_IMPLIED_ATTRIBUTE_VALUE,
  XML_ROLE_REQUIRED_ATTRIBUTE_VALUE,
  XML_ROLE_DEFAULT_ATTRIBUTE_VALUE,
  XML_ROLE_FIXED_ATTRIBUTE_VALUE,
  XML_ROLE_ELEMENT_NONE,
  XML_ROLE_ELEMENT_NAME,
  XML_ROLE_CONTENT_ANY,
  XML_ROLE_CONTENT_EMPTY,
  XML_ROLE_CONTENT_PCDATA,
  XML_ROLE_GROUP_OPEN,
  XML_ROLE_GROUP_CLOSE,
  XML_ROLE_GROUP_CLOSE_REP,
  XML_ROLE_GROUP_CLOSE_OPT,
  XML_ROLE_GROUP_CLOSE_PLUS,
  XML_ROLE_GROUP_CHOICE,
  XML_ROLE_GROUP_SEQUENCE,
  XML_ROLE_CONTENT_ELEMENT,
  XML_ROLE_CONTENT_ELEMENT_REP,
  XML_ROLE_CONTENT_ELEMENT_OPT,
  XML_ROLE_CONTENT_ELEMENT_PLUS,
  XML_ROLE_PI,
  XML_ROLE_COMMENT,

  XML_ROLE_TEXT_DECL,
  XML_ROLE_IGNORE_SECT,
  XML_ROLE_INNER_PARAM_ENTITY_REF,

  XML_ROLE_PARAM_ENTITY_REF
};

typedef struct prolog_state {
  int ( *handler) (struct prolog_state *state,
                          int tok,
                          const char *ptr,
                          const char *end,
                          const ENCODING *enc);
  unsigned level;
  int role_none;

  unsigned includeLevel;
  int documentEntity;
  int inEntityValue;

} PROLOG_STATE;

void XmlPrologStateInit(PROLOG_STATE *);

void XmlPrologStateInitExternalEntity(PROLOG_STATE *);
# 24 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlrole.c" 2
# 1 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/include/expat/ascii.h" 1
# 25 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlrole.c" 2
# 33 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlrole.c"
static const char KW_ANY[] = {
    0x41, 0x4E, 0x59, '\0' };
static const char KW_ATTLIST[] = {
    0x41, 0x54, 0x54, 0x4C, 0x49, 0x53, 0x54, '\0' };
static const char KW_CDATA[] = {
    0x43, 0x44, 0x41, 0x54, 0x41, '\0' };
static const char KW_DOCTYPE[] = {
    0x44, 0x4F, 0x43, 0x54, 0x59, 0x50, 0x45, '\0' };
static const char KW_ELEMENT[] = {
    0x45, 0x4C, 0x45, 0x4D, 0x45, 0x4E, 0x54, '\0' };
static const char KW_EMPTY[] = {
    0x45, 0x4D, 0x50, 0x54, 0x59, '\0' };
static const char KW_ENTITIES[] = {
    0x45, 0x4E, 0x54, 0x49, 0x54, 0x49, 0x45, 0x53,
    '\0' };
static const char KW_ENTITY[] = {
    0x45, 0x4E, 0x54, 0x49, 0x54, 0x59, '\0' };
static const char KW_FIXED[] = {
    0x46, 0x49, 0x58, 0x45, 0x44, '\0' };
static const char KW_ID[] = {
    0x49, 0x44, '\0' };
static const char KW_IDREF[] = {
    0x49, 0x44, 0x52, 0x45, 0x46, '\0' };
static const char KW_IDREFS[] = {
    0x49, 0x44, 0x52, 0x45, 0x46, 0x53, '\0' };

static const char KW_IGNORE[] = {
    0x49, 0x47, 0x4E, 0x4F, 0x52, 0x45, '\0' };

static const char KW_IMPLIED[] = {
    0x49, 0x4D, 0x50, 0x4C, 0x49, 0x45, 0x44, '\0' };

static const char KW_INCLUDE[] = {
    0x49, 0x4E, 0x43, 0x4C, 0x55, 0x44, 0x45, '\0' };

static const char KW_NDATA[] = {
    0x4E, 0x44, 0x41, 0x54, 0x41, '\0' };
static const char KW_NMTOKEN[] = {
    0x4E, 0x4D, 0x54, 0x4F, 0x4B, 0x45, 0x4E, '\0' };
static const char KW_NMTOKENS[] = {
    0x4E, 0x4D, 0x54, 0x4F, 0x4B, 0x45, 0x4E, 0x53,
    '\0' };
static const char KW_NOTATION[] =
    { 0x4E, 0x4F, 0x54, 0x41, 0x54, 0x49, 0x4F, 0x4E,
      '\0' };
static const char KW_PCDATA[] = {
    0x50, 0x43, 0x44, 0x41, 0x54, 0x41, '\0' };
static const char KW_PUBLIC[] = {
    0x50, 0x55, 0x42, 0x4C, 0x49, 0x43, '\0' };
static const char KW_REQUIRED[] = {
    0x52, 0x45, 0x51, 0x55, 0x49, 0x52, 0x45, 0x44,
    '\0' };
static const char KW_SYSTEM[] = {
    0x53, 0x59, 0x53, 0x54, 0x45, 0x4D, '\0' };
# 101 "D:/ESP32/esp-idf-v3.1-rc1/components/expat/library/xmlrole.c"
typedef int PROLOG_HANDLER(PROLOG_STATE *state,
                                   int tok,
                                   const char *ptr,
                                   const char *end,
                                   const ENCODING *enc);

static PROLOG_HANDLER
  prolog0, prolog1, prolog2,
  doctype0, doctype1, doctype2, doctype3, doctype4, doctype5,
  internalSubset,
  entity0, entity1, entity2, entity3, entity4, entity5, entity6,
  entity7, entity8, entity9, entity10,
  notation0, notation1, notation2, notation3, notation4,
  attlist0, attlist1, attlist2, attlist3, attlist4, attlist5, attlist6,
  attlist7, attlist8, attlist9,
  element0, element1, element2, element3, element4, element5, element6,
  element7,

  externalSubset0, externalSubset1,
  condSect0, condSect1, condSect2,

  declClose,
  error;

static int common(PROLOG_STATE *state, int tok);

static int
prolog0(PROLOG_STATE *state,
        int tok,
        const char *ptr,
        const char *end,
        const ENCODING *enc)
{
  switch (tok) {
  case 15:
    state->handler = prolog1;
    return XML_ROLE_NONE;
  case 12:
    state->handler = prolog1;
    return XML_ROLE_XML_DECL;
  case 11:
    state->handler = prolog1;
    return XML_ROLE_PI;
  case 13:
    state->handler = prolog1;
    return XML_ROLE_COMMENT;
  case 14:
    return XML_ROLE_NONE;
  case 16:
    if (!(((enc)->nameMatchesAscii)(enc, ptr + 2 * ((enc)->minBytesPerChar), end, KW_DOCTYPE))


                                        )
      break;
    state->handler = doctype0;
    return XML_ROLE_DOCTYPE_NONE;
  case 29:
    state->handler = error;
    return XML_ROLE_INSTANCE_START;
  }
  return common(state, tok);
}

static int
prolog1(PROLOG_STATE *state,
        int tok,
        const char *ptr,
        const char *end,
        const ENCODING *enc)
{
  switch (tok) {
  case 15:
    return XML_ROLE_NONE;
  case 11:
    return XML_ROLE_PI;
  case 13:
    return XML_ROLE_COMMENT;
  case 14:
    return XML_ROLE_NONE;
  case 16:
    if (!(((enc)->nameMatchesAscii)(enc, ptr + 2 * ((enc)->minBytesPerChar), end, KW_DOCTYPE))


                                        )
      break;
    state->handler = doctype0;
    return XML_ROLE_DOCTYPE_NONE;
  case 29:
    state->handler = error;
    return XML_ROLE_INSTANCE_START;
  }
  return common(state, tok);
}

static int
prolog2(PROLOG_STATE *state,
        int tok,
        const char *UNUSED_ptr __attribute__((__unused__)),
        const char *UNUSED_end __attribute__((__unused__)),
        const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_NONE;
  case 11:
    return XML_ROLE_PI;
  case 13:
    return XML_ROLE_COMMENT;
  case 29:
    state->handler = error;
    return XML_ROLE_INSTANCE_START;
  }
  return common(state, tok);
}

static int
doctype0(PROLOG_STATE *state,
         int tok,
         const char *UNUSED_ptr __attribute__((__unused__)),
         const char *UNUSED_end __attribute__((__unused__)),
         const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_DOCTYPE_NONE;
  case 18:
  case 41:
    state->handler = doctype1;
    return XML_ROLE_DOCTYPE_NAME;
  }
  return common(state, tok);
}

static int
doctype1(PROLOG_STATE *state,
         int tok,
         const char *ptr,
         const char *end,
         const ENCODING *enc)
{
  switch (tok) {
  case 15:
    return XML_ROLE_DOCTYPE_NONE;
  case 25:
    state->handler = internalSubset;
    return XML_ROLE_DOCTYPE_INTERNAL_SUBSET;
  case 17:
    state->handler = prolog2;
    return XML_ROLE_DOCTYPE_CLOSE;
  case 18:
    if ((((enc)->nameMatchesAscii)(enc, ptr, end, KW_SYSTEM))) {
      state->handler = doctype3;
      return XML_ROLE_DOCTYPE_NONE;
    }
    if ((((enc)->nameMatchesAscii)(enc, ptr, end, KW_PUBLIC))) {
      state->handler = doctype2;
      return XML_ROLE_DOCTYPE_NONE;
    }
    break;
  }
  return common(state, tok);
}

static int
doctype2(PROLOG_STATE *state,
         int tok,
         const char *UNUSED_ptr __attribute__((__unused__)),
         const char *UNUSED_end __attribute__((__unused__)),
         const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_DOCTYPE_NONE;
  case 27:
    state->handler = doctype3;
    return XML_ROLE_DOCTYPE_PUBLIC_ID;
  }
  return common(state, tok);
}

static int
doctype3(PROLOG_STATE *state,
         int tok,
         const char *UNUSED_ptr __attribute__((__unused__)),
         const char *UNUSED_end __attribute__((__unused__)),
         const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_DOCTYPE_NONE;
  case 27:
    state->handler = doctype4;
    return XML_ROLE_DOCTYPE_SYSTEM_ID;
  }
  return common(state, tok);
}

static int
doctype4(PROLOG_STATE *state,
         int tok,
         const char *UNUSED_ptr __attribute__((__unused__)),
         const char *UNUSED_end __attribute__((__unused__)),
         const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_DOCTYPE_NONE;
  case 25:
    state->handler = internalSubset;
    return XML_ROLE_DOCTYPE_INTERNAL_SUBSET;
  case 17:
    state->handler = prolog2;
    return XML_ROLE_DOCTYPE_CLOSE;
  }
  return common(state, tok);
}

static int
doctype5(PROLOG_STATE *state,
         int tok,
         const char *UNUSED_ptr __attribute__((__unused__)),
         const char *UNUSED_end __attribute__((__unused__)),
         const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_DOCTYPE_NONE;
  case 17:
    state->handler = prolog2;
    return XML_ROLE_DOCTYPE_CLOSE;
  }
  return common(state, tok);
}

static int
internalSubset(PROLOG_STATE *state,
               int tok,
               const char *ptr,
               const char *end,
               const ENCODING *enc)
{
  switch (tok) {
  case 15:
    return XML_ROLE_NONE;
  case 16:
    if ((((enc)->nameMatchesAscii)(enc, ptr + 2 * ((enc)->minBytesPerChar), end, KW_ENTITY))


                                      ) {
      state->handler = entity0;
      return XML_ROLE_ENTITY_NONE;
    }
    if ((((enc)->nameMatchesAscii)(enc, ptr + 2 * ((enc)->minBytesPerChar), end, KW_ATTLIST))


                                       ) {
      state->handler = attlist0;
      return XML_ROLE_ATTLIST_NONE;
    }
    if ((((enc)->nameMatchesAscii)(enc, ptr + 2 * ((enc)->minBytesPerChar), end, KW_ELEMENT))


                                       ) {
      state->handler = element0;
      return XML_ROLE_ELEMENT_NONE;
    }
    if ((((enc)->nameMatchesAscii)(enc, ptr + 2 * ((enc)->minBytesPerChar), end, KW_NOTATION))


                                        ) {
      state->handler = notation0;
      return XML_ROLE_NOTATION_NONE;
    }
    break;
  case 11:
    return XML_ROLE_PI;
  case 13:
    return XML_ROLE_COMMENT;
  case 28:
    return XML_ROLE_PARAM_ENTITY_REF;
  case 26:
    state->handler = doctype5;
    return XML_ROLE_DOCTYPE_NONE;
  case -4:
    return XML_ROLE_NONE;
  }
  return common(state, tok);
}



static int
externalSubset0(PROLOG_STATE *state,
                int tok,
                const char *ptr,
                const char *end,
                const ENCODING *enc)
{
  state->handler = externalSubset1;
  if (tok == 12)
    return XML_ROLE_TEXT_DECL;
  return externalSubset1(state, tok, ptr, end, enc);
}

static int
externalSubset1(PROLOG_STATE *state,
                int tok,
                const char *ptr,
                const char *end,
                const ENCODING *enc)
{
  switch (tok) {
  case 33:
    state->handler = condSect0;
    return XML_ROLE_NONE;
  case 34:
    if (state->includeLevel == 0)
      break;
    state->includeLevel -= 1;
    return XML_ROLE_NONE;
  case 15:
    return XML_ROLE_NONE;
  case 26:
    break;
  case -4:
    if (state->includeLevel)
      break;
    return XML_ROLE_NONE;
  default:
    return internalSubset(state, tok, ptr, end, enc);
  }
  return common(state, tok);
}



static int
entity0(PROLOG_STATE *state,
        int tok,
        const char *UNUSED_ptr __attribute__((__unused__)),
        const char *UNUSED_end __attribute__((__unused__)),
        const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ENTITY_NONE;
  case 22:
    state->handler = entity1;
    return XML_ROLE_ENTITY_NONE;
  case 18:
    state->handler = entity2;
    return XML_ROLE_GENERAL_ENTITY_NAME;
  }
  return common(state, tok);
}

static int
entity1(PROLOG_STATE *state,
        int tok,
        const char *UNUSED_ptr __attribute__((__unused__)),
        const char *UNUSED_end __attribute__((__unused__)),
        const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ENTITY_NONE;
  case 18:
    state->handler = entity7;
    return XML_ROLE_PARAM_ENTITY_NAME;
  }
  return common(state, tok);
}

static int
entity2(PROLOG_STATE *state,
        int tok,
        const char *ptr,
        const char *end,
        const ENCODING *enc)
{
  switch (tok) {
  case 15:
    return XML_ROLE_ENTITY_NONE;
  case 18:
    if ((((enc)->nameMatchesAscii)(enc, ptr, end, KW_SYSTEM))) {
      state->handler = entity4;
      return XML_ROLE_ENTITY_NONE;
    }
    if ((((enc)->nameMatchesAscii)(enc, ptr, end, KW_PUBLIC))) {
      state->handler = entity3;
      return XML_ROLE_ENTITY_NONE;
    }
    break;
  case 27:
    state->handler = declClose;
    state->role_none = XML_ROLE_ENTITY_NONE;
    return XML_ROLE_ENTITY_VALUE;
  }
  return common(state, tok);
}

static int
entity3(PROLOG_STATE *state,
        int tok,
        const char *UNUSED_ptr __attribute__((__unused__)),
        const char *UNUSED_end __attribute__((__unused__)),
        const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ENTITY_NONE;
  case 27:
    state->handler = entity4;
    return XML_ROLE_ENTITY_PUBLIC_ID;
  }
  return common(state, tok);
}

static int
entity4(PROLOG_STATE *state,
        int tok,
        const char *UNUSED_ptr __attribute__((__unused__)),
        const char *UNUSED_end __attribute__((__unused__)),
        const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ENTITY_NONE;
  case 27:
    state->handler = entity5;
    return XML_ROLE_ENTITY_SYSTEM_ID;
  }
  return common(state, tok);
}

static int
entity5(PROLOG_STATE *state,
        int tok,
        const char *ptr,
        const char *end,
        const ENCODING *enc)
{
  switch (tok) {
  case 15:
    return XML_ROLE_ENTITY_NONE;
  case 17:
    ((state)->handler = ((state)->documentEntity ? internalSubset : externalSubset1));
    return XML_ROLE_ENTITY_COMPLETE;
  case 18:
    if ((((enc)->nameMatchesAscii)(enc, ptr, end, KW_NDATA))) {
      state->handler = entity6;
      return XML_ROLE_ENTITY_NONE;
    }
    break;
  }
  return common(state, tok);
}

static int
entity6(PROLOG_STATE *state,
        int tok,
        const char *UNUSED_ptr __attribute__((__unused__)),
        const char *UNUSED_end __attribute__((__unused__)),
        const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ENTITY_NONE;
  case 18:
    state->handler = declClose;
    state->role_none = XML_ROLE_ENTITY_NONE;
    return XML_ROLE_ENTITY_NOTATION_NAME;
  }
  return common(state, tok);
}

static int
entity7(PROLOG_STATE *state,
        int tok,
        const char *ptr,
        const char *end,
        const ENCODING *enc)
{
  switch (tok) {
  case 15:
    return XML_ROLE_ENTITY_NONE;
  case 18:
    if ((((enc)->nameMatchesAscii)(enc, ptr, end, KW_SYSTEM))) {
      state->handler = entity9;
      return XML_ROLE_ENTITY_NONE;
    }
    if ((((enc)->nameMatchesAscii)(enc, ptr, end, KW_PUBLIC))) {
      state->handler = entity8;
      return XML_ROLE_ENTITY_NONE;
    }
    break;
  case 27:
    state->handler = declClose;
    state->role_none = XML_ROLE_ENTITY_NONE;
    return XML_ROLE_ENTITY_VALUE;
  }
  return common(state, tok);
}

static int
entity8(PROLOG_STATE *state,
        int tok,
        const char *UNUSED_ptr __attribute__((__unused__)),
        const char *UNUSED_end __attribute__((__unused__)),
        const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ENTITY_NONE;
  case 27:
    state->handler = entity9;
    return XML_ROLE_ENTITY_PUBLIC_ID;
  }
  return common(state, tok);
}

static int
entity9(PROLOG_STATE *state,
        int tok,
        const char *UNUSED_ptr __attribute__((__unused__)),
        const char *UNUSED_end __attribute__((__unused__)),
        const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ENTITY_NONE;
  case 27:
    state->handler = entity10;
    return XML_ROLE_ENTITY_SYSTEM_ID;
  }
  return common(state, tok);
}

static int
entity10(PROLOG_STATE *state,
         int tok,
         const char *UNUSED_ptr __attribute__((__unused__)),
         const char *UNUSED_end __attribute__((__unused__)),
         const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ENTITY_NONE;
  case 17:
    ((state)->handler = ((state)->documentEntity ? internalSubset : externalSubset1));
    return XML_ROLE_ENTITY_COMPLETE;
  }
  return common(state, tok);
}

static int
notation0(PROLOG_STATE *state,
          int tok,
          const char *UNUSED_ptr __attribute__((__unused__)),
          const char *UNUSED_end __attribute__((__unused__)),
          const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_NOTATION_NONE;
  case 18:
    state->handler = notation1;
    return XML_ROLE_NOTATION_NAME;
  }
  return common(state, tok);
}

static int
notation1(PROLOG_STATE *state,
          int tok,
          const char *ptr,
          const char *end,
          const ENCODING *enc)
{
  switch (tok) {
  case 15:
    return XML_ROLE_NOTATION_NONE;
  case 18:
    if ((((enc)->nameMatchesAscii)(enc, ptr, end, KW_SYSTEM))) {
      state->handler = notation3;
      return XML_ROLE_NOTATION_NONE;
    }
    if ((((enc)->nameMatchesAscii)(enc, ptr, end, KW_PUBLIC))) {
      state->handler = notation2;
      return XML_ROLE_NOTATION_NONE;
    }
    break;
  }
  return common(state, tok);
}

static int
notation2(PROLOG_STATE *state,
          int tok,
          const char *UNUSED_ptr __attribute__((__unused__)),
          const char *UNUSED_end __attribute__((__unused__)),
          const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_NOTATION_NONE;
  case 27:
    state->handler = notation4;
    return XML_ROLE_NOTATION_PUBLIC_ID;
  }
  return common(state, tok);
}

static int
notation3(PROLOG_STATE *state,
          int tok,
          const char *UNUSED_ptr __attribute__((__unused__)),
          const char *UNUSED_end __attribute__((__unused__)),
          const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_NOTATION_NONE;
  case 27:
    state->handler = declClose;
    state->role_none = XML_ROLE_NOTATION_NONE;
    return XML_ROLE_NOTATION_SYSTEM_ID;
  }
  return common(state, tok);
}

static int
notation4(PROLOG_STATE *state,
          int tok,
          const char *UNUSED_ptr __attribute__((__unused__)),
          const char *UNUSED_end __attribute__((__unused__)),
          const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_NOTATION_NONE;
  case 27:
    state->handler = declClose;
    state->role_none = XML_ROLE_NOTATION_NONE;
    return XML_ROLE_NOTATION_SYSTEM_ID;
  case 17:
    ((state)->handler = ((state)->documentEntity ? internalSubset : externalSubset1));
    return XML_ROLE_NOTATION_NO_SYSTEM_ID;
  }
  return common(state, tok);
}

static int
attlist0(PROLOG_STATE *state,
         int tok,
         const char *UNUSED_ptr __attribute__((__unused__)),
         const char *UNUSED_end __attribute__((__unused__)),
         const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ATTLIST_NONE;
  case 18:
  case 41:
    state->handler = attlist1;
    return XML_ROLE_ATTLIST_ELEMENT_NAME;
  }
  return common(state, tok);
}

static int
attlist1(PROLOG_STATE *state,
         int tok,
         const char *UNUSED_ptr __attribute__((__unused__)),
         const char *UNUSED_end __attribute__((__unused__)),
         const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ATTLIST_NONE;
  case 17:
    ((state)->handler = ((state)->documentEntity ? internalSubset : externalSubset1));
    return XML_ROLE_ATTLIST_NONE;
  case 18:
  case 41:
    state->handler = attlist2;
    return XML_ROLE_ATTRIBUTE_NAME;
  }
  return common(state, tok);
}

static int
attlist2(PROLOG_STATE *state,
         int tok,
         const char *ptr,
         const char *end,
         const ENCODING *enc)
{
  switch (tok) {
  case 15:
    return XML_ROLE_ATTLIST_NONE;
  case 18:
    {
      static const char * const types[] = {
        KW_CDATA,
        KW_ID,
        KW_IDREF,
        KW_IDREFS,
        KW_ENTITY,
        KW_ENTITIES,
        KW_NMTOKEN,
        KW_NMTOKENS,
      };
      int i;
      for (i = 0; i < (int)(sizeof(types)/sizeof(types[0])); i++)
        if ((((enc)->nameMatchesAscii)(enc, ptr, end, types[i]))) {
          state->handler = attlist8;
          return XML_ROLE_ATTRIBUTE_TYPE_CDATA + i;
        }
    }
    if ((((enc)->nameMatchesAscii)(enc, ptr, end, KW_NOTATION))) {
      state->handler = attlist5;
      return XML_ROLE_ATTLIST_NONE;
    }
    break;
  case 23:
    state->handler = attlist3;
    return XML_ROLE_ATTLIST_NONE;
  }
  return common(state, tok);
}

static int
attlist3(PROLOG_STATE *state,
         int tok,
         const char *UNUSED_ptr __attribute__((__unused__)),
         const char *UNUSED_end __attribute__((__unused__)),
         const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ATTLIST_NONE;
  case 19:
  case 18:
  case 41:
    state->handler = attlist4;
    return XML_ROLE_ATTRIBUTE_ENUM_VALUE;
  }
  return common(state, tok);
}

static int
attlist4(PROLOG_STATE *state,
         int tok,
         const char *UNUSED_ptr __attribute__((__unused__)),
         const char *UNUSED_end __attribute__((__unused__)),
         const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ATTLIST_NONE;
  case 24:
    state->handler = attlist8;
    return XML_ROLE_ATTLIST_NONE;
  case 21:
    state->handler = attlist3;
    return XML_ROLE_ATTLIST_NONE;
  }
  return common(state, tok);
}

static int
attlist5(PROLOG_STATE *state,
         int tok,
         const char *UNUSED_ptr __attribute__((__unused__)),
         const char *UNUSED_end __attribute__((__unused__)),
         const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ATTLIST_NONE;
  case 23:
    state->handler = attlist6;
    return XML_ROLE_ATTLIST_NONE;
  }
  return common(state, tok);
}

static int
attlist6(PROLOG_STATE *state,
         int tok,
         const char *UNUSED_ptr __attribute__((__unused__)),
         const char *UNUSED_end __attribute__((__unused__)),
         const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ATTLIST_NONE;
  case 18:
    state->handler = attlist7;
    return XML_ROLE_ATTRIBUTE_NOTATION_VALUE;
  }
  return common(state, tok);
}

static int
attlist7(PROLOG_STATE *state,
         int tok,
         const char *UNUSED_ptr __attribute__((__unused__)),
         const char *UNUSED_end __attribute__((__unused__)),
         const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ATTLIST_NONE;
  case 24:
    state->handler = attlist8;
    return XML_ROLE_ATTLIST_NONE;
  case 21:
    state->handler = attlist6;
    return XML_ROLE_ATTLIST_NONE;
  }
  return common(state, tok);
}


static int
attlist8(PROLOG_STATE *state,
         int tok,
         const char *ptr,
         const char *end,
         const ENCODING *enc)
{
  switch (tok) {
  case 15:
    return XML_ROLE_ATTLIST_NONE;
  case 20:
    if ((((enc)->nameMatchesAscii)(enc, ptr + ((enc)->minBytesPerChar), end, KW_IMPLIED))


                                       ) {
      state->handler = attlist1;
      return XML_ROLE_IMPLIED_ATTRIBUTE_VALUE;
    }
    if ((((enc)->nameMatchesAscii)(enc, ptr + ((enc)->minBytesPerChar), end, KW_REQUIRED))


                                        ) {
      state->handler = attlist1;
      return XML_ROLE_REQUIRED_ATTRIBUTE_VALUE;
    }
    if ((((enc)->nameMatchesAscii)(enc, ptr + ((enc)->minBytesPerChar), end, KW_FIXED))


                                     ) {
      state->handler = attlist9;
      return XML_ROLE_ATTLIST_NONE;
    }
    break;
  case 27:
    state->handler = attlist1;
    return XML_ROLE_DEFAULT_ATTRIBUTE_VALUE;
  }
  return common(state, tok);
}

static int
attlist9(PROLOG_STATE *state,
         int tok,
         const char *UNUSED_ptr __attribute__((__unused__)),
         const char *UNUSED_end __attribute__((__unused__)),
         const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ATTLIST_NONE;
  case 27:
    state->handler = attlist1;
    return XML_ROLE_FIXED_ATTRIBUTE_VALUE;
  }
  return common(state, tok);
}

static int
element0(PROLOG_STATE *state,
         int tok,
         const char *UNUSED_ptr __attribute__((__unused__)),
         const char *UNUSED_end __attribute__((__unused__)),
         const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ELEMENT_NONE;
  case 18:
  case 41:
    state->handler = element1;
    return XML_ROLE_ELEMENT_NAME;
  }
  return common(state, tok);
}

static int
element1(PROLOG_STATE *state,
         int tok,
         const char *ptr,
         const char *end,
         const ENCODING *enc)
{
  switch (tok) {
  case 15:
    return XML_ROLE_ELEMENT_NONE;
  case 18:
    if ((((enc)->nameMatchesAscii)(enc, ptr, end, KW_EMPTY))) {
      state->handler = declClose;
      state->role_none = XML_ROLE_ELEMENT_NONE;
      return XML_ROLE_CONTENT_EMPTY;
    }
    if ((((enc)->nameMatchesAscii)(enc, ptr, end, KW_ANY))) {
      state->handler = declClose;
      state->role_none = XML_ROLE_ELEMENT_NONE;
      return XML_ROLE_CONTENT_ANY;
    }
    break;
  case 23:
    state->handler = element2;
    state->level = 1;
    return XML_ROLE_GROUP_OPEN;
  }
  return common(state, tok);
}

static int
element2(PROLOG_STATE *state,
         int tok,
         const char *ptr,
         const char *end,
         const ENCODING *enc)
{
  switch (tok) {
  case 15:
    return XML_ROLE_ELEMENT_NONE;
  case 20:
    if ((((enc)->nameMatchesAscii)(enc, ptr + ((enc)->minBytesPerChar), end, KW_PCDATA))


                                      ) {
      state->handler = element3;
      return XML_ROLE_CONTENT_PCDATA;
    }
    break;
  case 23:
    state->level = 2;
    state->handler = element6;
    return XML_ROLE_GROUP_OPEN;
  case 18:
  case 41:
    state->handler = element7;
    return XML_ROLE_CONTENT_ELEMENT;
  case 30:
    state->handler = element7;
    return XML_ROLE_CONTENT_ELEMENT_OPT;
  case 31:
    state->handler = element7;
    return XML_ROLE_CONTENT_ELEMENT_REP;
  case 32:
    state->handler = element7;
    return XML_ROLE_CONTENT_ELEMENT_PLUS;
  }
  return common(state, tok);
}

static int
element3(PROLOG_STATE *state,
         int tok,
         const char *UNUSED_ptr __attribute__((__unused__)),
         const char *UNUSED_end __attribute__((__unused__)),
         const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ELEMENT_NONE;
  case 24:
    state->handler = declClose;
    state->role_none = XML_ROLE_ELEMENT_NONE;
    return XML_ROLE_GROUP_CLOSE;
  case 36:
    state->handler = declClose;
    state->role_none = XML_ROLE_ELEMENT_NONE;
    return XML_ROLE_GROUP_CLOSE_REP;
  case 21:
    state->handler = element4;
    return XML_ROLE_ELEMENT_NONE;
  }
  return common(state, tok);
}

static int
element4(PROLOG_STATE *state,
         int tok,
         const char *UNUSED_ptr __attribute__((__unused__)),
         const char *UNUSED_end __attribute__((__unused__)),
         const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ELEMENT_NONE;
  case 18:
  case 41:
    state->handler = element5;
    return XML_ROLE_CONTENT_ELEMENT;
  }
  return common(state, tok);
}

static int
element5(PROLOG_STATE *state,
         int tok,
         const char *UNUSED_ptr __attribute__((__unused__)),
         const char *UNUSED_end __attribute__((__unused__)),
         const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ELEMENT_NONE;
  case 36:
    state->handler = declClose;
    state->role_none = XML_ROLE_ELEMENT_NONE;
    return XML_ROLE_GROUP_CLOSE_REP;
  case 21:
    state->handler = element4;
    return XML_ROLE_ELEMENT_NONE;
  }
  return common(state, tok);
}

static int
element6(PROLOG_STATE *state,
         int tok,
         const char *UNUSED_ptr __attribute__((__unused__)),
         const char *UNUSED_end __attribute__((__unused__)),
         const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ELEMENT_NONE;
  case 23:
    state->level += 1;
    return XML_ROLE_GROUP_OPEN;
  case 18:
  case 41:
    state->handler = element7;
    return XML_ROLE_CONTENT_ELEMENT;
  case 30:
    state->handler = element7;
    return XML_ROLE_CONTENT_ELEMENT_OPT;
  case 31:
    state->handler = element7;
    return XML_ROLE_CONTENT_ELEMENT_REP;
  case 32:
    state->handler = element7;
    return XML_ROLE_CONTENT_ELEMENT_PLUS;
  }
  return common(state, tok);
}

static int
element7(PROLOG_STATE *state,
         int tok,
         const char *UNUSED_ptr __attribute__((__unused__)),
         const char *UNUSED_end __attribute__((__unused__)),
         const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_ELEMENT_NONE;
  case 24:
    state->level -= 1;
    if (state->level == 0) {
      state->handler = declClose;
      state->role_none = XML_ROLE_ELEMENT_NONE;
    }
    return XML_ROLE_GROUP_CLOSE;
  case 36:
    state->level -= 1;
    if (state->level == 0) {
      state->handler = declClose;
      state->role_none = XML_ROLE_ELEMENT_NONE;
    }
    return XML_ROLE_GROUP_CLOSE_REP;
  case 35:
    state->level -= 1;
    if (state->level == 0) {
      state->handler = declClose;
      state->role_none = XML_ROLE_ELEMENT_NONE;
    }
    return XML_ROLE_GROUP_CLOSE_OPT;
  case 37:
    state->level -= 1;
    if (state->level == 0) {
      state->handler = declClose;
      state->role_none = XML_ROLE_ELEMENT_NONE;
    }
    return XML_ROLE_GROUP_CLOSE_PLUS;
  case 38:
    state->handler = element6;
    return XML_ROLE_GROUP_SEQUENCE;
  case 21:
    state->handler = element6;
    return XML_ROLE_GROUP_CHOICE;
  }
  return common(state, tok);
}



static int
condSect0(PROLOG_STATE *state,
          int tok,
          const char *ptr,
          const char *end,
          const ENCODING *enc)
{
  switch (tok) {
  case 15:
    return XML_ROLE_NONE;
  case 18:
    if ((((enc)->nameMatchesAscii)(enc, ptr, end, KW_INCLUDE))) {
      state->handler = condSect1;
      return XML_ROLE_NONE;
    }
    if ((((enc)->nameMatchesAscii)(enc, ptr, end, KW_IGNORE))) {
      state->handler = condSect2;
      return XML_ROLE_NONE;
    }
    break;
  }
  return common(state, tok);
}

static int
condSect1(PROLOG_STATE *state,
          int tok,
          const char *UNUSED_ptr __attribute__((__unused__)),
          const char *UNUSED_end __attribute__((__unused__)),
          const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_NONE;
  case 25:
    state->handler = externalSubset1;
    state->includeLevel += 1;
    return XML_ROLE_NONE;
  }
  return common(state, tok);
}

static int
condSect2(PROLOG_STATE *state,
          int tok,
          const char *UNUSED_ptr __attribute__((__unused__)),
          const char *UNUSED_end __attribute__((__unused__)),
          const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return XML_ROLE_NONE;
  case 25:
    state->handler = externalSubset1;
    return XML_ROLE_IGNORE_SECT;
  }
  return common(state, tok);
}



static int
declClose(PROLOG_STATE *state,
          int tok,
          const char *UNUSED_ptr __attribute__((__unused__)),
          const char *UNUSED_end __attribute__((__unused__)),
          const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  switch (tok) {
  case 15:
    return state->role_none;
  case 17:
    ((state)->handler = ((state)->documentEntity ? internalSubset : externalSubset1));
    return state->role_none;
  }
  return common(state, tok);
}

static int
error(PROLOG_STATE *UNUSED_state __attribute__((__unused__)),
      int UNUSED_tok __attribute__((__unused__)),
      const char *UNUSED_ptr __attribute__((__unused__)),
      const char *UNUSED_end __attribute__((__unused__)),
      const ENCODING *UNUSED_enc __attribute__((__unused__)))
{
  return XML_ROLE_NONE;
}

static int
common(PROLOG_STATE *state, int tok)
{

  if (!state->documentEntity && tok == 28)
    return XML_ROLE_INNER_PARAM_ENTITY_REF;

  state->handler = error;
  return XML_ROLE_ERROR;
}

void
XmlPrologStateInit(PROLOG_STATE *state)
{
  state->handler = prolog0;

  state->documentEntity = 1;
  state->includeLevel = 0;
  state->inEntityValue = 0;

}



void
XmlPrologStateInitExternalEntity(PROLOG_STATE *state)
{
  state->handler = externalSubset0;
  state->documentEntity = 0;
  state->includeLevel = 0;
}
