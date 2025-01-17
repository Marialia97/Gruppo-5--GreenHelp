.class final Lcom/google/api/client/http/javanet/NetHttpRequest;
.super Lcom/google/api/client/http/LowLevelHttpRequest;
.source "NetHttpRequest.java"


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private content:Lcom/google/api/client/http/HttpContent;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "requestMethod"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Lcom/google/api/client/http/LowLevelHttpRequest;-><init>()V

    .line 35
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 37
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 39
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 40
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public execute()Lcom/google/api/client/http/LowLevelHttpResponse;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    .line 55
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 57
    .local v0, "connection":Ljava/net/HttpURLConnection;
    iget-object v8, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    if-eqz v8, :cond_58

    .line 58
    iget-object v8, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v8}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "contentType":Ljava/lang/String;
    if-eqz v4, :cond_15

    .line 60
    const-string v8, "Content-Type"

    invoke-virtual {p0, v8, v4}, Lcom/google/api/client/http/javanet/NetHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_15
    iget-object v8, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v8}, Lcom/google/api/client/http/HttpContent;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "contentEncoding":Ljava/lang/String;
    if-eqz v1, :cond_22

    .line 64
    const-string v8, "Content-Encoding"

    invoke-virtual {p0, v8, v1}, Lcom/google/api/client/http/javanet/NetHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_22
    iget-object v8, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v8}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v2

    .line 67
    .local v2, "contentLength":J
    cmp-long v8, v2, v10

    if-ltz v8, :cond_35

    .line 68
    const-string v8, "Content-Length"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/google/api/client/http/javanet/NetHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_35
    cmp-long v8, v2, v10

    if-eqz v8, :cond_58

    .line 72
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 74
    cmp-long v8, v2, v10

    if-ltz v8, :cond_68

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v2, v8

    if-gtz v8, :cond_68

    .line 75
    long-to-int v8, v2

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 79
    :goto_4c
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 81
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_50
    iget-object v8, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v8, v5}, Lcom/google/api/client/http/HttpContent;->writeTo(Ljava/io/OutputStream;)V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_6d

    .line 83
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 88
    .end local v1    # "contentEncoding":Ljava/lang/String;
    .end local v2    # "contentLength":J
    .end local v4    # "contentType":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/OutputStream;
    :cond_58
    const/4 v7, 0x0

    .line 90
    .local v7, "successfulConnection":Z
    :try_start_59
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 91
    new-instance v6, Lcom/google/api/client/http/javanet/NetHttpResponse;

    invoke-direct {v6, v0}, Lcom/google/api/client/http/javanet/NetHttpResponse;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_72

    .line 92
    .local v6, "response":Lcom/google/api/client/http/javanet/NetHttpResponse;
    const/4 v7, 0x1

    .line 95
    if-nez v7, :cond_67

    .line 96
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_67
    return-object v6

    .line 77
    .end local v6    # "response":Lcom/google/api/client/http/javanet/NetHttpResponse;
    .end local v7    # "successfulConnection":Z
    .restart local v1    # "contentEncoding":Ljava/lang/String;
    .restart local v2    # "contentLength":J
    .restart local v4    # "contentType":Ljava/lang/String;
    :cond_68
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_4c

    .line 83
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catchall_6d
    move-exception v8

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    throw v8

    .line 95
    .end local v1    # "contentEncoding":Ljava/lang/String;
    .end local v2    # "contentLength":J
    .end local v4    # "contentType":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v7    # "successfulConnection":Z
    :catchall_72
    move-exception v8

    if-nez v7, :cond_78

    .line 96
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_78
    throw v8
.end method

.method public setContent(Lcom/google/api/client/http/HttpContent;)V
    .registers 2
    .param p1, "content"    # Lcom/google/api/client/http/HttpContent;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 104
    return-void
.end method

.method public setTimeout(II)V
    .registers 4
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 50
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 51
    return-void
.end method
