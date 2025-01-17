.class public Lcom/google/api/client/http/HttpHeaders;
.super Lcom/google/api/client/util/GenericData;
.source "HttpHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;,
        Lcom/google/api/client/http/HttpHeaders$HeaderParsingFakeLevelHttpRequest;
    }
.end annotation


# instance fields
.field private accept:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Accept"
    .end annotation
.end field

.field private acceptEncoding:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Accept-Encoding"
    .end annotation
.end field

.field private authenticate:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "WWW-Authenticate"
    .end annotation
.end field

.field private authorization:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Authorization"
    .end annotation
.end field

.field private cacheControl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Cache-Control"
    .end annotation
.end field

.field private contentEncoding:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Content-Encoding"
    .end annotation
.end field

.field private contentLength:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Content-Length"
    .end annotation
.end field

.field private contentMD5:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Content-MD5"
    .end annotation
.end field

.field private contentRange:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Content-Range"
    .end annotation
.end field

.field private contentType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Content-Type"
    .end annotation
.end field

.field private cookie:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Cookie"
    .end annotation
.end field

.field private date:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Date"
    .end annotation
.end field

.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "ETag"
    .end annotation
.end field

.field private expires:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Expires"
    .end annotation
.end field

.field private ifMatch:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "If-Match"
    .end annotation
.end field

.field private ifModifiedSince:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "If-Modified-Since"
    .end annotation
.end field

.field private ifNoneMatch:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "If-None-Match"
    .end annotation
.end field

.field private ifUnmodifiedSince:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "If-Unmodified-Since"
    .end annotation
.end field

.field private lastModified:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Last-Modified"
    .end annotation
.end field

.field private location:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Location"
    .end annotation
.end field

.field private mimeVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "MIME-Version"
    .end annotation
.end field

.field private range:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Range"
    .end annotation
.end field

.field private retryAfter:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Retry-After"
    .end annotation
.end field

.field private userAgent:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "User-Agent"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    sget-object v0, Lcom/google/api/client/util/GenericData$Flags;->IGNORE_CASE:Lcom/google/api/client/util/GenericData$Flags;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/api/client/util/GenericData;-><init>(Ljava/util/EnumSet;)V

    .line 67
    const-string v0, "gzip"

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->acceptEncoding:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private static addHeader(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Writer;)V
    .registers 9
    .param p0, "logger"    # Ljava/util/logging/Logger;
    .param p1, "logbuf"    # Ljava/lang/StringBuilder;
    .param p2, "lowLevelHttpRequest"    # Lcom/google/api/client/http/LowLevelHttpRequest;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;
    .param p5, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 629
    if-eqz p4, :cond_8

    invoke-static {p4}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 656
    .end local p4    # "value":Ljava/lang/Object;
    :cond_8
    :goto_8
    return-void

    .line 633
    .restart local p4    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v1, p4, Ljava/lang/Enum;

    if-eqz v1, :cond_54

    check-cast p4, Ljava/lang/Enum;

    .end local p4    # "value":Ljava/lang/Object;
    invoke-static {p4}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/Enum;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "stringValue":Ljava/lang/String;
    :goto_17
    if-eqz p1, :cond_3c

    .line 637
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string v1, "Authorization"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 639
    const-string v1, "<Not Logged>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    :goto_37
    sget-object v1, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    :cond_3c
    if-eqz p2, :cond_41

    .line 647
    invoke-virtual {p2, p3, v0}, Lcom/google/api/client/http/LowLevelHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_41
    if-eqz p5, :cond_8

    .line 651
    invoke-virtual {p5, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 652
    const-string v1, ": "

    invoke-virtual {p5, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 654
    const-string v1, "\r\n"

    invoke-virtual {p5, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_8

    .line 633
    .end local v0    # "stringValue":Ljava/lang/String;
    .restart local p4    # "value":Ljava/lang/Object;
    :cond_54
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 641
    .end local p4    # "value":Ljava/lang/Object;
    .restart local v0    # "stringValue":Ljava/lang/String;
    :cond_59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37
.end method

.method private static parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p0, "valueType"    # Ljava/lang/reflect/Type;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 867
    .local p1, "context":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Type;>;"
    invoke-static {p1, p0}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 868
    .local v0, "resolved":Ljava/lang/reflect/Type;
    invoke-static {v0, p2}, Lcom/google/api/client/util/Data;->parsePrimitiveValue(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static serializeHeaders(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/api/client/http/LowLevelHttpRequest;)V
    .registers 5
    .param p0, "headers"    # Lcom/google/api/client/http/HttpHeaders;
    .param p1, "logbuf"    # Ljava/lang/StringBuilder;
    .param p2, "logger"    # Ljava/util/logging/Logger;
    .param p3, "lowLevelHttpRequest"    # Lcom/google/api/client/http/LowLevelHttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/api/client/http/HttpHeaders;->serializeHeaders(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/io/Writer;)V

    .line 673
    return-void
.end method

.method private static serializeHeaders(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/io/Writer;)V
    .registers 24
    .param p0, "headers"    # Lcom/google/api/client/http/HttpHeaders;
    .param p1, "logbuf"    # Ljava/lang/StringBuilder;
    .param p2, "logger"    # Ljava/util/logging/Logger;
    .param p3, "lowLevelHttpRequest"    # Lcom/google/api/client/http/LowLevelHttpRequest;
    .param p4, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 693
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 694
    .local v14, "headerNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/http/HttpHeaders;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_d
    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 695
    .local v13, "headerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 696
    .local v17, "name":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "multiple headers of the same name (headers are case insensitive): %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v17, v3, v6

    invoke-static {v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 698
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 699
    .local v10, "value":Ljava/lang/Object;
    if-eqz v10, :cond_d

    .line 701
    move-object/from16 v4, v17

    .line 702
    .local v4, "displayName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/http/HttpHeaders;->getClassInfo()Lcom/google/api/client/util/ClassInfo;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v12

    .line 703
    .local v12, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    if-eqz v12, :cond_48

    .line 704
    invoke-virtual {v12}, Lcom/google/api/client/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 706
    :cond_48
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    .line 707
    .local v18, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    instance-of v1, v10, Ljava/lang/Iterable;

    if-nez v1, :cond_56

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 708
    :cond_56
    invoke-static {v10}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_5e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "repeatedValue":Ljava/lang/Object;
    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    .line 709
    invoke-static/range {v1 .. v6}, Lcom/google/api/client/http/HttpHeaders;->addHeader(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Writer;)V

    goto :goto_5e

    .end local v5    # "repeatedValue":Ljava/lang/Object;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_74
    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object v9, v4

    move-object/from16 v11, p4

    .line 712
    invoke-static/range {v6 .. v11}, Lcom/google/api/client/http/HttpHeaders;->addHeader(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Writer;)V

    goto :goto_d

    .line 716
    .end local v4    # "displayName":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/Object;
    .end local v12    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .end local v13    # "headerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_81
    if-eqz p4, :cond_86

    .line 717
    invoke-virtual/range {p4 .. p4}, Ljava/io/Writer;->flush()V

    .line 719
    :cond_86
    return-void
.end method

.method public static serializeHeadersForMultipartRequests(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Ljava/io/Writer;)V
    .registers 5
    .param p0, "headers"    # Lcom/google/api/client/http/HttpHeaders;
    .param p1, "logbuf"    # Ljava/lang/StringBuilder;
    .param p2, "logger"    # Ljava/util/logging/Logger;
    .param p3, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/api/client/http/HttpHeaders;->serializeHeaders(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/io/Writer;)V

    .line 689
    return-void
.end method


# virtual methods
.method public clone()Lcom/google/api/client/http/HttpHeaders;
    .registers 2

    .prologue
    .line 160
    invoke-super {p0}, Lcom/google/api/client/util/GenericData;->clone()Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpHeaders;->clone()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpHeaders;->clone()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public final fromHttpHeaders(Lcom/google/api/client/http/HttpHeaders;)V
    .registers 7
    .param p1, "headers"    # Lcom/google/api/client/http/HttpHeaders;

    .prologue
    .line 773
    :try_start_0
    new-instance v1, Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;-><init>(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;)V

    .line 774
    .local v1, "state":Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/google/api/client/http/HttpHeaders$HeaderParsingFakeLevelHttpRequest;

    invoke-direct {v4, p0, v1}, Lcom/google/api/client/http/HttpHeaders$HeaderParsingFakeLevelHttpRequest;-><init>(Lcom/google/api/client/http/HttpHeaders;Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;)V

    invoke-static {p1, v2, v3, v4}, Lcom/google/api/client/http/HttpHeaders;->serializeHeaders(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/api/client/http/LowLevelHttpRequest;)V

    .line 775
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;->finish()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    .line 780
    return-void

    .line 776
    .end local v1    # "state":Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;
    :catch_14
    move-exception v0

    .line 778
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final fromHttpResponse(Lcom/google/api/client/http/LowLevelHttpResponse;Ljava/lang/StringBuilder;)V
    .registers 8
    .param p1, "response"    # Lcom/google/api/client/http/LowLevelHttpResponse;
    .param p2, "logger"    # Ljava/lang/StringBuilder;

    .prologue
    .line 730
    new-instance v2, Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;

    invoke-direct {v2, p0, p2}, Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;-><init>(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;)V

    .line 731
    .local v2, "state":Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;
    invoke-virtual {p1}, Lcom/google/api/client/http/LowLevelHttpResponse;->getHeaderCount()I

    move-result v0

    .line 732
    .local v0, "headerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 733
    invoke-virtual {p1, v1}, Lcom/google/api/client/http/LowLevelHttpResponse;->getHeaderName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1}, Lcom/google/api/client/http/LowLevelHttpResponse;->getHeaderValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v2}, Lcom/google/api/client/http/HttpHeaders;->parseHeader(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;)V

    .line 732
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 735
    :cond_1a
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;->finish()V

    .line 736
    return-void
.end method

.method public final getAccept()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->accept:Ljava/lang/String;

    return-object v0
.end method

.method public final getAcceptEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->acceptEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthenticate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->authenticate:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorization()Ljava/lang/String;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->authorization:Ljava/lang/String;

    return-object v0
.end method

.method public final getCacheControl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->cacheControl:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentLength()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->contentLength:Ljava/lang/Long;

    return-object v0
.end method

.method public final getContentMD5()Ljava/lang/String;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->contentMD5:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentRange()Ljava/lang/String;
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->contentRange:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getCookie()Ljava/lang/String;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->cookie:Ljava/lang/String;

    return-object v0
.end method

.method public final getDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final getETag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpires()Ljava/lang/String;
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->expires:Ljava/lang/String;

    return-object v0
.end method

.method public final getIfMatch()Ljava/lang/String;
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->ifMatch:Ljava/lang/String;

    return-object v0
.end method

.method public final getIfModifiedSince()Ljava/lang/String;
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->ifModifiedSince:Ljava/lang/String;

    return-object v0
.end method

.method public final getIfNoneMatch()Ljava/lang/String;
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->ifNoneMatch:Ljava/lang/String;

    return-object v0
.end method

.method public final getIfUnmodifiedSince()Ljava/lang/String;
    .registers 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->ifUnmodifiedSince:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastModified()Ljava/lang/String;
    .registers 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->lastModified:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->location:Ljava/lang/String;

    return-object v0
.end method

.method public final getMimeVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->mimeVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getRange()Ljava/lang/String;
    .registers 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->range:Ljava/lang/String;

    return-object v0
.end method

.method public final getRetryAfter()Ljava/lang/String;
    .registers 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->retryAfter:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method parseHeader(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;)V
    .registers 16
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;

    .prologue
    .line 820
    iget-object v3, p3, Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;->context:Ljava/util/List;

    .line 821
    .local v3, "context":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Type;>;"
    iget-object v1, p3, Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;->classInfo:Lcom/google/api/client/util/ClassInfo;

    .line 822
    .local v1, "classInfo":Lcom/google/api/client/util/ClassInfo;
    iget-object v0, p3, Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;->arrayValueMap:Lcom/google/api/client/util/ArrayValueMap;

    .line 823
    .local v0, "arrayValueMap":Lcom/google/api/client/util/ArrayValueMap;
    iget-object v6, p3, Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;->logger:Ljava/lang/StringBuilder;

    .line 825
    .local v6, "logger":Ljava/lang/StringBuilder;
    if-eqz v6, :cond_2a

    .line 826
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    :cond_2a
    invoke-virtual {v1, p1}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v4

    .line 830
    .local v4, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    if-eqz v4, :cond_87

    .line 831
    invoke-virtual {v4}, Lcom/google/api/client/util/FieldInfo;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 833
    .local v9, "type":Ljava/lang/reflect/Type;
    invoke-static {v9}, Lcom/google/api/client/util/Types;->isArray(Ljava/lang/reflect/Type;)Z

    move-result v10

    if-eqz v10, :cond_52

    .line 835
    invoke-static {v9}, Lcom/google/api/client/util/Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v7

    .line 837
    .local v7, "rawArrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Lcom/google/api/client/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-static {v7, v3, p2}, Lcom/google/api/client/http/HttpHeaders;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v10, v7, v11}, Lcom/google/api/client/util/ArrayValueMap;->put(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 864
    .end local v7    # "rawArrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "type":Ljava/lang/reflect/Type;
    :goto_51
    return-void

    .line 839
    .restart local v9    # "type":Ljava/lang/reflect/Type;
    :cond_52
    invoke-static {v3, v9}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v10

    const-class v11, Ljava/lang/Iterable;

    invoke-static {v10, v11}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_7f

    .line 843
    invoke-virtual {v4, p0}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 844
    .local v2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    if-nez v2, :cond_6d

    .line 845
    invoke-static {v9}, Lcom/google/api/client/util/Data;->newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v2

    .line 846
    invoke-virtual {v4, p0, v2}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 848
    :cond_6d
    const-class v10, Ljava/lang/Object;

    if-ne v9, v10, :cond_7a

    const/4 v8, 0x0

    .line 849
    .local v8, "subFieldType":Ljava/lang/reflect/Type;
    :goto_72
    invoke-static {v8, v3, p2}, Lcom/google/api/client/http/HttpHeaders;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 848
    .end local v8    # "subFieldType":Ljava/lang/reflect/Type;
    :cond_7a
    invoke-static {v9}, Lcom/google/api/client/util/Types;->getIterableParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v8

    goto :goto_72

    .line 852
    .end local v2    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_7f
    invoke-static {v9, v3, p2}, Lcom/google/api/client/http/HttpHeaders;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, p0, v10}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_51

    .line 857
    .end local v9    # "type":Ljava/lang/reflect/Type;
    :cond_87
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 858
    .local v5, "listValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_97

    .line 859
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "listValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .restart local v5    # "listValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v5}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 862
    :cond_97
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51
.end method

.method public final setAccept(Ljava/lang/String;)V
    .registers 2
    .param p1, "accept"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->accept:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public final setAcceptEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "acceptEncoding"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->acceptEncoding:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public final setAuthenticate(Ljava/lang/String;)V
    .registers 2
    .param p1, "authenticate"    # Ljava/lang/String;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->authenticate:Ljava/lang/String;

    .line 607
    return-void
.end method

.method public final setAuthorization(Ljava/lang/String;)V
    .registers 2
    .param p1, "authorization"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->authorization:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public final setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, "userPass":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/api/client/util/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/api/client/util/Base64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "encoded":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/api/client/http/HttpHeaders;->authorization:Ljava/lang/String;

    .line 620
    return-void
.end method

.method public final setCacheControl(Ljava/lang/String;)V
    .registers 2
    .param p1, "cacheControl"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->cacheControl:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public final setContentEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentEncoding"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->contentEncoding:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public final setContentLength(Ljava/lang/Long;)V
    .registers 2
    .param p1, "contentLength"    # Ljava/lang/Long;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->contentLength:Ljava/lang/Long;

    .line 283
    return-void
.end method

.method public final setContentMD5(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentMD5"    # Ljava/lang/String;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->contentMD5:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public final setContentRange(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentRange"    # Ljava/lang/String;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->contentRange:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public final setContentType(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->contentType:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public final setCookie(Ljava/lang/String;)V
    .registers 2
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->cookie:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public final setDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->date:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public final setETag(Ljava/lang/String;)V
    .registers 2
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->etag:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public final setExpires(Ljava/lang/String;)V
    .registers 2
    .param p1, "expires"    # Ljava/lang/String;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->expires:Ljava/lang/String;

    .line 409
    return-void
.end method

.method public final setIfMatch(Ljava/lang/String;)V
    .registers 2
    .param p1, "ifMatch"    # Ljava/lang/String;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->ifMatch:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public final setIfModifiedSince(Ljava/lang/String;)V
    .registers 2
    .param p1, "ifModifiedSince"    # Ljava/lang/String;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->ifModifiedSince:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public final setIfNoneMatch(Ljava/lang/String;)V
    .registers 2
    .param p1, "ifNoneMatch"    # Ljava/lang/String;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->ifNoneMatch:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public final setIfUnmodifiedSince(Ljava/lang/String;)V
    .registers 2
    .param p1, "ifUnmodifiedSince"    # Ljava/lang/String;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->ifUnmodifiedSince:Ljava/lang/String;

    .line 481
    return-void
.end method

.method public final setLastModified(Ljava/lang/String;)V
    .registers 2
    .param p1, "lastModified"    # Ljava/lang/String;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->lastModified:Ljava/lang/String;

    .line 499
    return-void
.end method

.method public final setLocation(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->location:Ljava/lang/String;

    .line 517
    return-void
.end method

.method public final setMimeVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "mimeVersion"    # Ljava/lang/String;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->mimeVersion:Ljava/lang/String;

    .line 535
    return-void
.end method

.method public final setRange(Ljava/lang/String;)V
    .registers 2
    .param p1, "range"    # Ljava/lang/String;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->range:Ljava/lang/String;

    .line 553
    return-void
.end method

.method public final setRetryAfter(Ljava/lang/String;)V
    .registers 2
    .param p1, "retryAfter"    # Ljava/lang/String;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->retryAfter:Ljava/lang/String;

    .line 571
    return-void
.end method

.method public final setUserAgent(Ljava/lang/String;)V
    .registers 2
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->userAgent:Ljava/lang/String;

    .line 589
    return-void
.end method
