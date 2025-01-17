.class public Lcom/google/api/client/http/json/JsonHttpClient;
.super Ljava/lang/Object;
.source "JsonHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    }
.end annotation


# static fields
.field static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final applicationName:Ljava/lang/String;

.field private final baseUrl:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final baseUrlUsed:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private jsonHttpParser:Lcom/google/api/client/http/json/JsonHttpParser;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final jsonHttpRequestInitializer:Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

.field private final jsonObjectParser:Lcom/google/api/client/json/JsonObjectParser;

.field private final requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

.field private final rootUrl:Ljava/lang/String;

.field private final servicePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-class v0, Lcom/google/api/client/http/json/JsonHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/json/JsonHttpClient;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonHttpRequestInitializer"    # Lcom/google/api/client/http/json/JsonHttpRequestInitializer;
    .param p3, "httpRequestInitializer"    # Lcom/google/api/client/http/HttpRequestInitializer;
    .param p4, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p5, "jsonObjectParser"    # Lcom/google/api/client/json/JsonObjectParser;
    .param p6, "baseUrl"    # Ljava/lang/String;
    .param p7, "applicationName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput-object p2, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonHttpRequestInitializer:Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    .line 344
    invoke-static {p6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->baseUrl:Ljava/lang/String;

    .line 345
    const-string v0, "/"

    invoke-virtual {p6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 346
    iput-object p7, p0, Lcom/google/api/client/http/json/JsonHttpClient;->applicationName:Ljava/lang/String;

    .line 347
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 348
    iput-object p5, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonObjectParser:Lcom/google/api/client/json/JsonObjectParser;

    .line 349
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    if-nez p3, :cond_36

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    :goto_2c
    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->baseUrlUsed:Z

    .line 353
    iput-object v1, p0, Lcom/google/api/client/http/json/JsonHttpClient;->rootUrl:Ljava/lang/String;

    .line 354
    iput-object v1, p0, Lcom/google/api/client/http/json/JsonHttpClient;->servicePath:Ljava/lang/String;

    .line 355
    return-void

    .line 350
    :cond_36
    invoke-virtual {p1, p3}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    goto :goto_2c
.end method

.method protected constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonHttpRequestInitializer"    # Lcom/google/api/client/http/json/JsonHttpRequestInitializer;
    .param p3, "httpRequestInitializer"    # Lcom/google/api/client/http/HttpRequestInitializer;
    .param p4, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p5, "jsonObjectParser"    # Lcom/google/api/client/json/JsonObjectParser;
    .param p6, "rootUrl"    # Ljava/lang/String;
    .param p7, "servicePath"    # Ljava/lang/String;
    .param p8, "applicationName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p2, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonHttpRequestInitializer:Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    .line 386
    const-string v0, "root URL cannot be null."

    invoke-static {p6, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->rootUrl:Ljava/lang/String;

    .line 387
    const-string v0, "/"

    invoke-virtual {p6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "root URL must end with a \"/\"."

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 388
    const-string v0, "service path cannot be null"

    invoke-static {p7, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_53

    .line 390
    const-string v0, "/"

    invoke-virtual {v0, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "service path must equal \"/\" if it is of length 1."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 392
    const-string p7, ""

    .line 397
    :cond_34
    :goto_34
    iput-object p7, p0, Lcom/google/api/client/http/json/JsonHttpClient;->servicePath:Ljava/lang/String;

    .line 398
    iput-object p8, p0, Lcom/google/api/client/http/json/JsonHttpClient;->applicationName:Ljava/lang/String;

    .line 399
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 400
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iput-object p5, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonObjectParser:Lcom/google/api/client/json/JsonObjectParser;

    .line 402
    if-nez p3, :cond_72

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    :goto_4b
    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->baseUrl:Ljava/lang/String;

    .line 405
    iput-boolean v2, p0, Lcom/google/api/client/http/json/JsonHttpClient;->baseUrlUsed:Z

    .line 406
    return-void

    .line 393
    :cond_53
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_34

    .line 394
    const-string v0, "/"

    invoke-virtual {p7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    const-string v0, "/"

    invoke-virtual {p7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_70

    move v0, v1

    :goto_6a
    const-string v1, "service path must end with a \"/\" and not begin with a \"/\"."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_34

    :cond_70
    move v0, v2

    goto :goto_6a

    .line 402
    :cond_72
    invoke-virtual {p1, p3}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    goto :goto_4b
.end method

.method protected constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonHttpRequestInitializer"    # Lcom/google/api/client/http/json/JsonHttpRequestInitializer;
    .param p3, "httpRequestInitializer"    # Lcom/google/api/client/http/HttpRequestInitializer;
    .param p4, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p5, "baseUrl"    # Ljava/lang/String;
    .param p6, "applicationName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 309
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/json/JsonHttpClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V
    .registers 11
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p3, "baseUrl"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 262
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/http/json/JsonHttpClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .registers 15
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p3, "rootUrl"    # Ljava/lang/String;
    .param p4, "servicePath"    # Ljava/lang/String;
    .param p5, "httpRequestInitializer"    # Lcom/google/api/client/http/HttpRequestInitializer;

    .prologue
    const/4 v2, 0x0

    .line 283
    move-object v0, p0

    move-object v1, p1

    move-object v3, p5

    move-object v4, p2

    move-object v5, v2

    move-object v6, p3

    move-object v7, p4

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/api/client/http/json/JsonHttpClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method


# virtual methods
.method protected buildHttpRequest(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;
    .registers 8
    .param p1, "method"    # Lcom/google/api/client/http/HttpMethod;
    .param p2, "url"    # Lcom/google/api/client/http/GenericUrl;
    .param p3, "body"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    iget-object v2, p0, Lcom/google/api/client/http/json/JsonHttpClient;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 429
    .local v0, "httpRequest":Lcom/google/api/client/http/HttpRequest;
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->getJsonObjectParser()Lcom/google/api/client/json/JsonObjectParser;

    move-result-object v1

    .line 431
    .local v1, "parser":Lcom/google/api/client/json/JsonObjectParser;
    if-eqz v1, :cond_2b

    .line 432
    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->setParser(Lcom/google/api/client/util/ObjectParser;)V

    .line 436
    :goto_10
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 437
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->getApplicationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)V

    .line 439
    :cond_21
    if-eqz p3, :cond_2a

    .line 440
    invoke-virtual {p0, p3}, Lcom/google/api/client/http/json/JsonHttpClient;->createSerializer(Ljava/lang/Object;)Lcom/google/api/client/http/json/JsonHttpContent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 442
    :cond_2a
    return-object v0

    .line 434
    :cond_2b
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->getJsonHttpParser()Lcom/google/api/client/http/json/JsonHttpParser;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/api/client/http/HttpRequest;->addParser(Lcom/google/api/client/http/HttpParser;)V

    goto :goto_10
.end method

.method protected createParser()Lcom/google/api/client/http/json/JsonHttpParser;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 196
    new-instance v0, Lcom/google/api/client/http/json/JsonHttpParser;

    iget-object v1, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-direct {v0, v1}, Lcom/google/api/client/http/json/JsonHttpParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    return-object v0
.end method

.method protected createSerializer(Ljava/lang/Object;)Lcom/google/api/client/http/json/JsonHttpContent;
    .registers 4
    .param p1, "body"    # Ljava/lang/Object;

    .prologue
    .line 215
    new-instance v0, Lcom/google/api/client/http/json/JsonHttpContent;

    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/api/client/http/json/JsonHttpContent;-><init>(Lcom/google/api/client/json/JsonFactory;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected executeAsInputStream(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Ljava/lang/Object;)Ljava/io/InputStream;
    .registers 6
    .param p1, "method"    # Lcom/google/api/client/http/HttpMethod;
    .param p2, "url"    # Lcom/google/api/client/http/GenericUrl;
    .param p3, "body"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/api/client/http/json/JsonHttpClient;->executeUnparsed(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Ljava/lang/Object;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 530
    .local v0, "response":Lcom/google/api/client/http/HttpResponse;
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method protected executeUnparsed(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Ljava/lang/Object;)Lcom/google/api/client/http/HttpResponse;
    .registers 6
    .param p1, "method"    # Lcom/google/api/client/http/HttpMethod;
    .param p2, "url"    # Lcom/google/api/client/http/GenericUrl;
    .param p3, "body"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/api/client/http/json/JsonHttpClient;->buildHttpRequest(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 473
    .local v0, "request":Lcom/google/api/client/http/HttpRequest;
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/json/JsonHttpClient;->executeUnparsed(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method protected executeUnparsed(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;
    .registers 3
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getApplicationName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public final getBaseUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->baseUrlUsed:Z

    if-eqz v0, :cond_7

    .line 121
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->baseUrl:Ljava/lang/String;

    .line 123
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/api/client/http/json/JsonHttpClient;->rootUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/http/json/JsonHttpClient;->servicePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public final getJsonHttpParser()Lcom/google/api/client/http/json/JsonHttpParser;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonHttpParser:Lcom/google/api/client/http/json/JsonHttpParser;

    if-nez v0, :cond_a

    .line 182
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->createParser()Lcom/google/api/client/http/json/JsonHttpParser;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonHttpParser:Lcom/google/api/client/http/json/JsonHttpParser;

    .line 184
    :cond_a
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonHttpParser:Lcom/google/api/client/http/json/JsonHttpParser;

    return-object v0
.end method

.method public final getJsonHttpRequestInitializer()Lcom/google/api/client/http/json/JsonHttpRequestInitializer;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonHttpRequestInitializer:Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    return-object v0
.end method

.method public final getJsonObjectParser()Lcom/google/api/client/json/JsonObjectParser;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->jsonObjectParser:Lcom/google/api/client/json/JsonObjectParser;

    return-object v0
.end method

.method public final getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    return-object v0
.end method

.method public final getRootUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->baseUrlUsed:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_5
    const-string v1, "root URL cannot be used if base URL is used."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->rootUrl:Ljava/lang/String;

    return-object v0

    .line 133
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final getServicePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->baseUrlUsed:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_5
    const-string v1, "service path cannot be used if base URL is used."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->servicePath:Ljava/lang/String;

    return-object v0

    .line 146
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V
    .registers 3
    .param p1, "jsonHttpRequest"    # Lcom/google/api/client/http/json/JsonHttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->getJsonHttpRequestInitializer()Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 243
    invoke-virtual {p0}, Lcom/google/api/client/http/json/JsonHttpClient;->getJsonHttpRequestInitializer()Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/api/client/http/json/JsonHttpRequestInitializer;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    .line 245
    :cond_d
    return-void
.end method

.method protected final isBaseUrlUsed()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/google/api/client/http/json/JsonHttpClient;->baseUrlUsed:Z

    return v0
.end method
