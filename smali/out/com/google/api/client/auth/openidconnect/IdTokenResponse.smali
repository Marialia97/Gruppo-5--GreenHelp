.class public Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
.super Lcom/google/api/client/auth/oauth2/TokenResponse;
.source "IdTokenResponse.java"


# instance fields
.field private idToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/api/client/auth/oauth2/TokenResponse;-><init>()V

    return-void
.end method

.method public static execute(Lcom/google/api/client/auth/oauth2/TokenRequest;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .registers 3
    .param p0, "tokenRequest"    # Lcom/google/api/client/auth/oauth2/TokenRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/TokenRequest;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    const-class v1, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    return-object v0
.end method


# virtual methods
.method public final getIdToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->idToken:Ljava/lang/String;

    return-object v0
.end method

.method public parseIdToken()Lcom/google/api/client/auth/jsontoken/JsonWebSignature;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->getFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->idToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/api/client/auth/jsontoken/JsonWebSignature;->parse(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebSignature;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .registers 2
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;

    .line 74
    return-object p0
.end method

.method public bridge synthetic setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Long;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .registers 2
    .param p1, "expiresIn"    # Ljava/lang/Long;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/TokenResponse;

    .line 86
    return-object p0
.end method

.method public setIdToken(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .registers 2
    .param p1, "idToken"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->idToken:Ljava/lang/String;

    .line 68
    return-object p0
.end method

.method public bridge synthetic setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .registers 2
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;

    .line 92
    return-object p0
.end method

.method public bridge synthetic setScope(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->setScope(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public setScope(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .registers 2
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->setScope(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;

    .line 98
    return-object p0
.end method

.method public bridge synthetic setTokenType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/openidconnect/IdTokenResponse;->setTokenType(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method public setTokenType(Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdTokenResponse;
    .registers 2
    .param p1, "tokenType"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->setTokenType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;

    .line 80
    return-object p0
.end method
