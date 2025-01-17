.class public Lcom/google/api/client/json/gson/GsonFactory;
.super Lcom/google/api/client/json/JsonFactory;
.source "GsonFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/api/client/json/JsonFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createJsonGenerator(Ljava/io/OutputStream;Lcom/google/api/client/json/JsonEncoding;)Lcom/google/api/client/json/JsonGenerator;
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "enc"    # Lcom/google/api/client/json/JsonEncoding;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/gson/GsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/google/api/client/json/JsonGenerator;

    move-result-object v0

    return-object v0
.end method

.method public createJsonGenerator(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonGenerator;
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "enc"    # Ljava/nio/charset/Charset;

    .prologue
    .line 76
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/gson/GsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/google/api/client/json/JsonGenerator;

    move-result-object v0

    return-object v0
.end method

.method public createJsonGenerator(Ljava/io/Writer;)Lcom/google/api/client/json/JsonGenerator;
    .registers 4
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 81
    new-instance v0, Lcom/google/api/client/json/gson/GsonGenerator;

    new-instance v1, Lcom/google/gson/stream/JsonWriter;

    invoke-direct {v1, p1}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/gson/GsonGenerator;-><init>(Lcom/google/api/client/json/gson/GsonFactory;Lcom/google/gson/stream/JsonWriter;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 49
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/gson/GsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonParser;
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 54
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/gson/GsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;
    .registers 4
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 64
    new-instance v0, Lcom/google/api/client/json/gson/GsonParser;

    new-instance v1, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v1, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/gson/GsonParser;-><init>(Lcom/google/api/client/json/gson/GsonFactory;Lcom/google/gson/stream/JsonReader;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/lang/String;)Lcom/google/api/client/json/JsonParser;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/gson/GsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    return-object v0
.end method
