.class public Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;
.super Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;
.source "GoogleAccessProtectedResource.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->AUTHORIZATION_HEADER:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;-><init>(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p3, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p4, "clientId"    # Ljava/lang/String;
    .param p5, "clientSecret"    # Ljava/lang/String;
    .param p6, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 91
    sget-object v2, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->AUTHORIZATION_HEADER:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    const-string v5, "https://accounts.google.com/o/oauth2/token"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;-><init>(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected executeRefreshToken()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 104
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest$GoogleRefreshTokenGrant;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;->getClientSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;->getRefreshToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest$GoogleRefreshTokenGrant;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v0, "request":Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest$GoogleRefreshTokenGrant;
    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessProtectedResource;->executeAccessTokenRequest(Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;)Z

    move-result v1

    .line 108
    .end local v0    # "request":Lcom/google/api/client/googleapis/auth/oauth2/draft10/GoogleAccessTokenRequest$GoogleRefreshTokenGrant;
    :goto_23
    return v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_23
.end method
