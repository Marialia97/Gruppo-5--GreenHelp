.class public Lcom/google/api/client/auth/oauth/OAuthGetAccessToken;
.super Lcom/google/api/client/auth/oauth/AbstractOAuthGetToken;
.source "OAuthGetAccessToken.java"


# instance fields
.field public temporaryToken:Ljava/lang/String;

.field public verifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "authorizationServerUrl"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/api/client/auth/oauth/AbstractOAuthGetToken;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public createParameters()Lcom/google/api/client/auth/oauth/OAuthParameters;
    .registers 3

    .prologue
    .line 53
    invoke-super {p0}, Lcom/google/api/client/auth/oauth/AbstractOAuthGetToken;->createParameters()Lcom/google/api/client/auth/oauth/OAuthParameters;

    move-result-object v0

    .line 54
    .local v0, "result":Lcom/google/api/client/auth/oauth/OAuthParameters;
    iget-object v1, p0, Lcom/google/api/client/auth/oauth/OAuthGetAccessToken;->temporaryToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/api/client/auth/oauth/OAuthParameters;->token:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/google/api/client/auth/oauth/OAuthGetAccessToken;->verifier:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/api/client/auth/oauth/OAuthParameters;->verifier:Ljava/lang/String;

    .line 56
    return-object v0
.end method
