.class public Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;
.super Ljava/lang/Object;
.source "AccessProtectedResource.java"

# interfaces
.implements Lcom/google/api/client/http/HttpExecuteInterceptor;
.implements Lcom/google/api/client/http/HttpRequestInitializer;
.implements Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$1;,
        Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ALLOWED_METHODS:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/api/client/http/HttpMethod;",
            ">;"
        }
    .end annotation
.end field

.field static final HEADER_PREFIX:Ljava/lang/String; = "OAuth "

.field static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private final authorizationServerUrl:Ljava/lang/String;

.field private final clientId:Ljava/lang/String;

.field private final clientSecret:Ljava/lang/String;

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private final method:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

.field private final refreshToken:Ljava/lang/String;

.field private final tokenLock:Ljava/util/concurrent/locks/Lock;

.field private final transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 88
    const-class v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->LOGGER:Ljava/util/logging/Logger;

    .line 117
    sget-object v0, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    sget-object v1, Lcom/google/api/client/http/HttpMethod;->PUT:Lcom/google/api/client/http/HttpMethod;

    sget-object v2, Lcom/google/api/client/http/HttpMethod;->DELETE:Lcom/google/api/client/http/HttpMethod;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->ALLOWED_METHODS:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;)V
    .registers 5
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "method"    # Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    .line 157
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->accessToken:Ljava/lang/String;

    .line 158
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->method:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    .line 159
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 160
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 161
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->authorizationServerUrl:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->clientId:Ljava/lang/String;

    .line 163
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->clientSecret:Ljava/lang/String;

    .line 164
    iput-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->refreshToken:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "method"    # Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;
    .param p3, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p4, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p5, "authorizationServerUrl"    # Ljava/lang/String;
    .param p6, "clientId"    # Ljava/lang/String;
    .param p7, "clientSecret"    # Ljava/lang/String;
    .param p8, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    .line 189
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->accessToken:Ljava/lang/String;

    .line 190
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->method:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    .line 191
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpTransport;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 192
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 193
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->authorizationServerUrl:Ljava/lang/String;

    .line 194
    invoke-static {p6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->clientId:Ljava/lang/String;

    .line 195
    invoke-static {p7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->clientSecret:Ljava/lang/String;

    .line 196
    iput-object p8, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->refreshToken:Ljava/lang/String;

    .line 197
    return-void
.end method

.method private getAccessTokenFromRequest(Lcom/google/api/client/http/HttpRequest;)Ljava/lang/String;
    .registers 9
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;

    .prologue
    const/4 v4, 0x0

    .line 315
    sget-object v5, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$1;->$SwitchMap$com$google$api$client$auth$oauth2$draft10$AccessProtectedResource$Method:[I

    iget-object v6, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->method:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    invoke-virtual {v6}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_56

    .line 326
    invoke-static {p1}, Lcom/google/api/client/http/UrlEncodedContent;->getContent(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/UrlEncodedContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/client/http/UrlEncodedContent;->getData()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 327
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "oauth_token"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 328
    .local v0, "bodyParam":Ljava/lang/Object;
    if-nez v0, :cond_51

    .end local v0    # "bodyParam":Ljava/lang/Object;
    .end local v1    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_22
    :goto_22
    return-object v4

    .line 317
    :pswitch_23
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/client/http/HttpHeaders;->getAuthorization()Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "header":Ljava/lang/String;
    if-eqz v2, :cond_22

    const-string v5, "OAuth "

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 319
    const-string v4, "OAuth "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_22

    .line 323
    .end local v2    # "header":Ljava/lang/String;
    :pswitch_40
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v5

    const-string v6, "oauth_token"

    invoke-virtual {v5, v6}, Lcom/google/api/client/http/GenericUrl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 324
    .local v3, "param":Ljava/lang/Object;
    if-eqz v3, :cond_22

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_22

    .line 328
    .end local v3    # "param":Ljava/lang/Object;
    .restart local v0    # "bodyParam":Ljava/lang/Object;
    .restart local v1    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_51
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_22

    .line 315
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_23
        :pswitch_40
    .end packed-switch
.end method


# virtual methods
.method protected final executeAccessTokenRequest(Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;)Z
    .registers 5
    .param p1, "request"    # Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    :try_start_0
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;->execute()Lcom/google/api/client/auth/oauth2/draft10/AccessTokenResponse;

    move-result-object v2

    iget-object v1, v2, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenResponse;->accessToken:Ljava/lang/String;
    :try_end_6
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_0 .. :try_end_6} :catch_d

    .line 413
    .local v1, "newAccessToken":Ljava/lang/String;
    :goto_6
    invoke-virtual {p0, v1}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->setAccessToken(Ljava/lang/String;)V

    .line 414
    if-eqz v1, :cond_10

    const/4 v2, 0x1

    :goto_c
    return v2

    .line 408
    .end local v1    # "newAccessToken":Ljava/lang/String;
    :catch_d
    move-exception v0

    .line 411
    .local v0, "e":Lcom/google/api/client/http/HttpResponseException;
    const/4 v1, 0x0

    .restart local v1    # "newAccessToken":Ljava/lang/String;
    goto :goto_6

    .line 414
    .end local v0    # "e":Lcom/google/api/client/http/HttpResponseException;
    :cond_10
    const/4 v2, 0x0

    goto :goto_c
.end method

.method protected executeRefreshToken()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->refreshToken:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 382
    new-instance v0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->transport:Lcom/google/api/client/http/HttpTransport;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->authorizationServerUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->clientId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->clientSecret:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->refreshToken:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .local v0, "request":Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;
    invoke-virtual {p0, v0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->executeAccessTokenRequest(Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest;)Z

    move-result v1

    .line 390
    .end local v0    # "request":Lcom/google/api/client/auth/oauth2/draft10/AccessTokenRequest$RefreshTokenGrant;
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public final getAccessToken()Ljava/lang/String;
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 203
    :try_start_5
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->accessToken:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_d

    .line 205
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_d
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getAuthorizationServerUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->authorizationServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public final getMethod()Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->method:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTransport()Lcom/google/api/client/http/HttpTransport;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z
    .registers 9
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .param p2, "response"    # Lcom/google/api/client/http/HttpResponse;
    .param p3, "retrySupported"    # Z

    .prologue
    const/4 v3, 0x0

    .line 342
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v2

    const/16 v4, 0x191

    if-ne v2, v4, :cond_3a

    .line 345
    :try_start_9
    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_e
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_9 .. :try_end_e} :catch_30
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_3c

    .line 348
    :try_start_e
    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->accessToken:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->getAccessTokenFromRequest(Lcom/google/api/client/http/HttpRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->refreshToken()Z
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_29

    move-result v2

    if-eqz v2, :cond_27

    :cond_20
    const/4 v2, 0x1

    .line 351
    :goto_21
    :try_start_21
    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 360
    :goto_26
    return v2

    :cond_27
    move v2, v3

    .line 348
    goto :goto_21

    .line 351
    :catchall_29
    move-exception v2

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
    :try_end_30
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_21 .. :try_end_30} :catch_30
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_30} :catch_3c

    .line 353
    :catch_30
    move-exception v0

    .line 354
    .local v0, "e":Lcom/google/api/client/http/HttpResponseException;
    :try_start_31
    sget-object v2, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3a} :catch_3c

    .end local v0    # "e":Lcom/google/api/client/http/HttpResponseException;
    :cond_3a
    :goto_3a
    move v2, v3

    .line 360
    goto :goto_26

    .line 356
    :catch_3c
    move-exception v1

    .line 357
    .local v1, "exception":Ljava/io/IOException;
    sget-object v2, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_3a
.end method

.method public final initialize(Lcom/google/api/client/http/HttpRequest;)V
    .registers 2
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/HttpRequest;->setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;

    .line 283
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/HttpRequest;->setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)Lcom/google/api/client/http/HttpRequest;

    .line 284
    return-void
.end method

.method public intercept(Lcom/google/api/client/http/HttpRequest;)V
    .registers 9
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "accessToken":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 312
    :goto_6
    return-void

    .line 298
    :cond_7
    sget-object v2, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$1;->$SwitchMap$com$google$api$client$auth$oauth2$draft10$AccessProtectedResource$Method:[I

    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->method:Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;

    invoke-virtual {v3}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource$Method;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_64

    goto :goto_6

    .line 300
    :pswitch_15
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OAuth "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/client/http/HttpHeaders;->setAuthorization(Ljava/lang/String;)V

    goto :goto_6

    .line 303
    :pswitch_30
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v2

    const-string v3, "oauth_token"

    invoke-virtual {v2, v3, v0}, Lcom/google/api/client/http/GenericUrl;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 306
    :pswitch_3a
    sget-object v2, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->ALLOWED_METHODS:Ljava/util/EnumSet;

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getMethod()Lcom/google/api/client/http/HttpMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "expected one of these HTTP methods: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->ALLOWED_METHODS:Ljava/util/EnumSet;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 308
    invoke-static {p1}, Lcom/google/api/client/http/UrlEncodedContent;->getContent(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/UrlEncodedContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/UrlEncodedContent;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 309
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "oauth_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 298
    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_15
        :pswitch_30
        :pswitch_3a
    .end packed-switch
.end method

.method protected onAccessToken(Ljava/lang/String;)V
    .registers 2
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 430
    return-void
.end method

.method public final refreshToken()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 275
    :try_start_5
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->executeRefreshToken()Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    move-result v0

    .line 277
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_f
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final setAccessToken(Ljava/lang/String;)V
    .registers 4
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 217
    :try_start_5
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->accessToken:Ljava/lang/String;

    .line 218
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->onAccessToken(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    .line 220
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 222
    return-void

    .line 220
    :catchall_10
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessProtectedResource;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
