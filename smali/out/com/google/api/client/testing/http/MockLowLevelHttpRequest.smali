.class public Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;
.super Lcom/google/api/client/http/LowLevelHttpRequest;
.source "MockLowLevelHttpRequest.java"


# instance fields
.field private content:Lcom/google/api/client/http/HttpContent;

.field private final headersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private response:Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/api/client/http/LowLevelHttpRequest;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;->headersMap:Ljava/util/Map;

    .line 55
    new-instance v0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    invoke-direct {v0}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;->response:Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/api/client/http/LowLevelHttpRequest;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;->headersMap:Ljava/util/Map;

    .line 55
    new-instance v0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    invoke-direct {v0}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;->response:Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    .line 65
    iput-object p1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;->url:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;->headersMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 71
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_14

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .restart local v0    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;->headersMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_14
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public execute()Lcom/google/api/client/http/LowLevelHttpResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;->response:Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    return-object v0
.end method

.method public getContent()Lcom/google/api/client/http/HttpContent;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;->headersMap:Ljava/util/Map;

    return-object v0
.end method

.method public getResponse()Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;->response:Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Lcom/google/api/client/http/HttpContent;)V
    .registers 2
    .param p1, "content"    # Lcom/google/api/client/http/HttpContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 86
    return-void
.end method

.method public setResponse(Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;)Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;
    .registers 2
    .param p1, "response"    # Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;->response:Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    .line 143
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;->url:Ljava/lang/String;

    .line 113
    return-object p0
.end method
