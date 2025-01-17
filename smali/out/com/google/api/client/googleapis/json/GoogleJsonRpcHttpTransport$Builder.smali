.class public Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;
.super Ljava/lang/Object;
.source "GoogleJsonRpcHttpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final DEFAULT_SERVER_URL:Lcom/google/api/client/http/GenericUrl;


# instance fields
.field private accept:Ljava/lang/String;

.field private final httpTransport:Lcom/google/api/client/http/HttpTransport;

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private mimeType:Ljava/lang/String;

.field private rpcServerUrl:Lcom/google/api/client/http/GenericUrl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 198
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    const-string v1, "https://www.googleapis.com"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->DEFAULT_SERVER_URL:Lcom/google/api/client/http/GenericUrl;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V
    .registers 4
    .param p1, "httpTransport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    sget-object v0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->DEFAULT_SERVER_URL:Lcom/google/api/client/http/GenericUrl;

    iput-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->rpcServerUrl:Lcom/google/api/client/http/GenericUrl;

    .line 210
    const-string v0, "application/json-rpc"

    iput-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->mimeType:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->accept:Ljava/lang/String;

    .line 220
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpTransport;

    iput-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->httpTransport:Lcom/google/api/client/http/HttpTransport;

    .line 221
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 222
    return-void
.end method


# virtual methods
.method protected build()Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;
    .registers 7

    .prologue
    .line 299
    new-instance v0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;

    iget-object v1, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->httpTransport:Lcom/google/api/client/http/HttpTransport;

    iget-object v2, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    iget-object v3, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->rpcServerUrl:Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v3}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->mimeType:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->accept:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAccept()Ljava/lang/String;
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->accept:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpTransport()Lcom/google/api/client/http/HttpTransport;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->httpTransport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getRpcServerUrl()Lcom/google/api/client/http/GenericUrl;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->rpcServerUrl:Lcom/google/api/client/http/GenericUrl;

    return-object v0
.end method

.method protected setAccept(Ljava/lang/String;)Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;
    .registers 3
    .param p1, "accept"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->accept:Ljava/lang/String;

    .line 287
    return-object p0
.end method

.method protected setContentType(Ljava/lang/String;)Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;
    .registers 3
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 253
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->mimeType:Ljava/lang/String;

    .line 254
    return-object p0
.end method

.method protected setMimeType(Ljava/lang/String;)Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;
    .registers 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->mimeType:Ljava/lang/String;

    .line 271
    return-object p0
.end method

.method protected setRpcServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;
    .registers 3
    .param p1, "rpcServerUrl"    # Lcom/google/api/client/http/GenericUrl;

    .prologue
    .line 235
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/GenericUrl;

    iput-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport$Builder;->rpcServerUrl:Lcom/google/api/client/http/GenericUrl;

    .line 236
    return-object p0
.end method
