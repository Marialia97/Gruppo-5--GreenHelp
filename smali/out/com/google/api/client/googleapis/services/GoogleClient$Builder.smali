.class public Lcom/google/api/client/googleapis/services/GoogleClient$Builder;
.super Lcom/google/api/client/http/json/JsonHttpClient$Builder;
.source "GoogleClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/services/GoogleClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;)V
    .registers 4
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p3, "baseUrl"    # Lcom/google/api/client/http/GenericUrl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 262
    invoke-direct {p0, p1, p2, p3}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;)V

    .line 263
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .registers 6
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p3, "rootUrl"    # Ljava/lang/String;
    .param p4, "servicePath"    # Ljava/lang/String;
    .param p5, "httpRequestInitializer"    # Lcom/google/api/client/http/HttpRequestInitializer;

    .prologue
    .line 278
    invoke-direct/range {p0 .. p5}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpRequestInitializer;)V

    .line 279
    return-void
.end method


# virtual methods
.method public build()Lcom/google/api/client/googleapis/services/GoogleClient;
    .registers 10

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->isBaseUrlUsed()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 286
    new-instance v0, Lcom/google/api/client/googleapis/services/GoogleClient;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->getJsonHttpRequestInitializer()Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->getHttpRequestInitializer()Lcom/google/api/client/http/HttpRequestInitializer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->getObjectParser()Lcom/google/api/client/json/JsonObjectParser;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->getBaseUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->getApplicationName()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/googleapis/services/GoogleClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_2b
    return-object v0

    :cond_2c
    new-instance v0, Lcom/google/api/client/googleapis/services/GoogleClient;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->getJsonHttpRequestInitializer()Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->getHttpRequestInitializer()Lcom/google/api/client/http/HttpRequestInitializer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->getObjectParser()Lcom/google/api/client/json/JsonObjectParser;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->getRootUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->getServicePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->getApplicationName()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/google/api/client/googleapis/services/GoogleClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public bridge synthetic build()Lcom/google/api/client/http/json/JsonHttpClient;
    .registers 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->build()Lcom/google/api/client/googleapis/services/GoogleClient;

    move-result-object v0

    return-object v0
.end method
