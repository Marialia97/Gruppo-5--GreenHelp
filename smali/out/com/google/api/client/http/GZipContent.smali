.class final Lcom/google/api/client/http/GZipContent;
.super Lcom/google/api/client/http/AbstractHttpContent;
.source "GZipContent.java"


# instance fields
.field private final httpContent:Lcom/google/api/client/http/HttpContent;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpContent;Ljava/lang/String;)V
    .registers 3
    .param p1, "httpContent"    # Lcom/google/api/client/http/HttpContent;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p2}, Lcom/google/api/client/http/AbstractHttpContent;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/google/api/client/http/GZipContent;->httpContent:Lcom/google/api/client/http/HttpContent;

    .line 40
    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    const-string v0, "gzip"

    return-object v0
.end method

.method public retrySupported()Z
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/api/client/http/GZipContent;->httpContent:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v0}, Lcom/google/api/client/http/HttpContent;->retrySupported()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;
    .registers 3
    .param p1, "x0"    # Lcom/google/api/client/http/HttpMediaType;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/GZipContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/GZipContent;

    move-result-object v0

    return-object v0
.end method

.method public setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/GZipContent;
    .registers 2
    .param p1, "mediaType"    # Lcom/google/api/client/http/HttpMediaType;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;

    .line 71
    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 54
    .local v0, "zipper":Ljava/util/zip/GZIPOutputStream;
    iget-object v1, p0, Lcom/google/api/client/http/GZipContent;->httpContent:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v1, v0}, Lcom/google/api/client/http/HttpContent;->writeTo(Ljava/io/OutputStream;)V

    .line 55
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 56
    return-void
.end method
