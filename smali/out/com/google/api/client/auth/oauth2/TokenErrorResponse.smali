.class public Lcom/google/api/client/auth/oauth2/TokenErrorResponse;
.super Lcom/google/api/client/json/GenericJson;
.source "TokenErrorResponse.java"


# instance fields
.field private error:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private errorDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "error_description"
    .end annotation
.end field

.field private errorUri:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "error_uri"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final getError()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;->errorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;->errorUri:Ljava/lang/String;

    return-object v0
.end method

.method public setError(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenErrorResponse;
    .registers 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;->error:Ljava/lang/String;

    .line 83
    return-object p0
.end method

.method public setErrorDescription(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenErrorResponse;
    .registers 2
    .param p1, "errorDescription"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;->errorDescription:Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method public setErrorUri(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenErrorResponse;
    .registers 2
    .param p1, "errorUri"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;->errorUri:Ljava/lang/String;

    .line 129
    return-object p0
.end method
