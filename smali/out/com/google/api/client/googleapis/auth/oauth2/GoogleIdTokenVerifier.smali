.class public Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;
.super Ljava/lang/Object;
.source "GoogleIdTokenVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;
    }
.end annotation


# static fields
.field private static final MAX_AGE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private clientIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final clock:Lcom/google/api/client/util/Clock;

.field private expirationTimeMilliseconds:J

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private publicKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field private final transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const-string v0, "\\s*max-age\\s*=\\s*(\\d+)\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->MAX_AGE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V
    .registers 4
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;-><init>(Ljava/util/Set;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V
    .registers 5
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p3, "clientId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    if-nez p3, :cond_a

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_6
    invoke-direct {p0, v0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;-><init>(Ljava/util/Set;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V

    .line 122
    return-void

    .line 120
    :cond_a
    invoke-static {p3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_6
.end method

.method protected constructor <init>(Ljava/util/Set;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V
    .registers 5
    .param p2, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p3, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/api/client/http/HttpTransport;",
            "Lcom/google/api/client/json/JsonFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "clientIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/google/api/client/util/Clock;->SYSTEM:Lcom/google/api/client/util/Clock;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;-><init>(Ljava/util/Set;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/util/Clock;)V

    .line 146
    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/util/Clock;)V
    .registers 6
    .param p2, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p3, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p4, "clock"    # Lcom/google/api/client/util/Clock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/api/client/http/HttpTransport;",
            "Lcom/google/api/client/json/JsonFactory;",
            "Lcom/google/api/client/util/Clock;",
            ")V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "clientIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->lock:Ljava/util/concurrent/locks/Lock;

    .line 159
    if-nez p1, :cond_2b

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_10
    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->clientIds:Ljava/util/Set;

    .line 161
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpTransport;

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 162
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 163
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/Clock;

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->clock:Lcom/google/api/client/util/Clock;

    .line 164
    return-void

    .line 159
    :cond_2b
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_10
.end method


# virtual methods
.method public final getClientId()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->clientIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getClientIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->clientIds:Ljava/util/Set;

    return-object v0
.end method

.method public final getExpirationTimeMilliseconds()J
    .registers 3

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->expirationTimeMilliseconds:J

    return-wide v0
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public final getPublicKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Ljava/util/List;

    return-object v0
.end method

.method public loadPublicCerts()Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 326
    :try_start_7
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Ljava/util/List;

    .line 328
    const-string v13, "X509"

    invoke-static {v13}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    .line 329
    .local v7, "factory":Ljava/security/cert/CertificateFactory;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->transport:Lcom/google/api/client/http/HttpTransport;

    invoke-virtual {v13}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v13

    new-instance v14, Lcom/google/api/client/http/GenericUrl;

    const-string v15, "https://www.googleapis.com/oauth2/v1/certs"

    invoke-direct {v14, v15}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lcom/google/api/client/http/HttpRequestFactory;->buildGetRequest(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v5

    .line 332
    .local v5, "certsResponse":Lcom/google/api/client/http/HttpResponse;
    invoke-virtual {v5}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/api/client/http/HttpHeaders;->getCacheControl()Ljava/lang/String;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_3d
    if-ge v8, v9, :cond_6c

    aget-object v2, v3, v8

    .line 333
    .local v2, "arg":Ljava/lang/String;
    sget-object v13, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->MAX_AGE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 334
    .local v10, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_c2

    .line 335
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->clock:Lcom/google/api/client/util/Clock;

    invoke-interface {v13}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    move-result-wide v14

    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->expirationTimeMilliseconds:J

    .line 340
    .end local v2    # "arg":Ljava/lang/String;
    .end local v10    # "m":Ljava/util/regex/Matcher;
    :cond_6c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-virtual {v5}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;

    move-result-object v11

    .line 341
    .local v11, "parser":Lcom/google/api/client/json/JsonParser;
    invoke-virtual {v11}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v6

    .line 343
    .local v6, "currentToken":Lcom/google/api/client/json/JsonToken;
    if-nez v6, :cond_82

    .line 344
    invoke-virtual {v11}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v6

    .line 346
    :cond_82
    sget-object v13, Lcom/google/api/client/json/JsonToken;->START_OBJECT:Lcom/google/api/client/json/JsonToken;

    if-ne v6, v13, :cond_c6

    const/4 v13, 0x1

    :goto_87
    invoke-static {v13}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V
    :try_end_8a
    .catchall {:try_start_7 .. :try_end_8a} :catchall_b9

    .line 348
    :goto_8a
    :try_start_8a
    invoke-virtual {v11}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v13

    sget-object v14, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    if-eq v13, v14, :cond_c8

    .line 349
    invoke-virtual {v11}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    .line 350
    invoke-virtual {v11}, Lcom/google/api/client/json/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, "certValue":Ljava/lang/String;
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-static {v4}, Lcom/google/api/client/util/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v7, v13}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    .line 353
    .local v12, "x509Cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Ljava/util/List;

    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b3
    .catchall {:try_start_8a .. :try_end_b3} :catchall_b4

    goto :goto_8a

    .line 357
    .end local v4    # "certValue":Ljava/lang/String;
    .end local v12    # "x509Cert":Ljava/security/cert/X509Certificate;
    :catchall_b4
    move-exception v13

    :try_start_b5
    invoke-virtual {v11}, Lcom/google/api/client/json/JsonParser;->close()V

    throw v13
    :try_end_b9
    .catchall {:try_start_b5 .. :try_end_b9} :catchall_b9

    .line 361
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "certsResponse":Lcom/google/api/client/http/HttpResponse;
    .end local v6    # "currentToken":Lcom/google/api/client/json/JsonToken;
    .end local v7    # "factory":Ljava/security/cert/CertificateFactory;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "parser":Lcom/google/api/client/json/JsonParser;
    :catchall_b9
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v14}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v13

    .line 332
    .restart local v2    # "arg":Ljava/lang/String;
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v5    # "certsResponse":Lcom/google/api/client/http/HttpResponse;
    .restart local v7    # "factory":Ljava/security/cert/CertificateFactory;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    .restart local v10    # "m":Ljava/util/regex/Matcher;
    :cond_c2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3d

    .line 346
    .end local v2    # "arg":Ljava/lang/String;
    .end local v10    # "m":Ljava/util/regex/Matcher;
    .restart local v6    # "currentToken":Lcom/google/api/client/json/JsonToken;
    .restart local v11    # "parser":Lcom/google/api/client/json/JsonParser;
    :cond_c6
    const/4 v13, 0x0

    goto :goto_87

    .line 355
    :cond_c8
    :try_start_c8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Ljava/util/List;

    invoke-static {v13}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Ljava/util/List;
    :try_end_d4
    .catchall {:try_start_c8 .. :try_end_d4} :catchall_b4

    .line 357
    :try_start_d4
    invoke-virtual {v11}, Lcom/google/api/client/json/JsonParser;->close()V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_b9

    .line 361
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0
.end method

.method public verify(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;
    .registers 4
    .param p1, "idTokenString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-static {v1, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;->parse(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;

    move-result-object v0

    .line 225
    .local v0, "idToken":Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;
    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->verify(Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;)Z

    move-result v1

    if-eqz v1, :cond_d

    .end local v0    # "idToken":Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;
    :goto_c
    return-object v0

    .restart local v0    # "idToken":Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;
    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public verify(Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;)Z
    .registers 3
    .param p1, "idToken"    # Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->clientIds:Ljava/util/Set;

    invoke-virtual {p0, v0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->verify(Ljava/util/Set;Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;)Z

    move-result v0

    return v0
.end method

.method public verify(Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;Ljava/lang/String;)Z
    .registers 4
    .param p1, "idToken"    # Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;
    .param p2, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    if-nez p2, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_6
    invoke-virtual {p0, v0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->verify(Ljava/util/Set;Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;)Z

    move-result v0

    return v0

    :cond_b
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_6
.end method

.method public verify(Ljava/util/Set;Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;)Z
    .registers 15
    .param p2, "idToken"    # Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "clientIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 280
    invoke-virtual {p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;->getPayload()Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;

    move-result-object v3

    .line 281
    .local v3, "payload":Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;
    const-wide/16 v8, 0x12c

    invoke-virtual {v3, v8, v9}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;->isValidTime(J)Z

    move-result v7

    if-eqz v7, :cond_33

    const-string v7, "accounts.google.com"

    invoke-virtual {v3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;->getIssuer()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_34

    invoke-virtual {v3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;->getAudience()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-virtual {v3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;->getIssuee()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34

    .line 310
    :cond_33
    :goto_33
    return v6

    .line 288
    :cond_34
    invoke-virtual {p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;->getHeader()Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;

    move-result-object v1

    .line 289
    .local v1, "header":Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;
    invoke-virtual {v1}, Lcom/google/api/client/auth/jsontoken/JsonWebSignature$Header;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "algorithm":Ljava/lang/String;
    const-string v7, "RS256"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 291
    iget-object v7, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 294
    :try_start_49
    iget-object v7, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Ljava/util/List;

    if-eqz v7, :cond_5d

    iget-object v7, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->clock:Lcom/google/api/client/util/Clock;

    invoke-interface {v7}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x493e0

    add-long/2addr v8, v10

    iget-wide v10, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->expirationTimeMilliseconds:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_60

    .line 296
    :cond_5d
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->loadPublicCerts()Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;

    .line 298
    :cond_60
    const-string v7, "SHA256withRSA"

    invoke-static {v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 299
    .local v5, "signer":Ljava/security/Signature;
    iget-object v7, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->publicKeys:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_6c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/PublicKey;

    .line 300
    .local v4, "publicKey":Ljava/security/PublicKey;
    invoke-virtual {v5, v4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 301
    invoke-virtual {p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;->getSignedContentBytes()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/Signature;->update([B)V

    .line 302
    invoke-virtual {p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;->getSignatureBytes()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/Signature;->verify([B)Z
    :try_end_89
    .catchall {:try_start_49 .. :try_end_89} :catchall_99

    move-result v7

    if-eqz v7, :cond_6c

    .line 303
    const/4 v6, 0x1

    .line 307
    iget-object v7, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_33

    .end local v4    # "publicKey":Ljava/security/PublicKey;
    :cond_93
    iget-object v7, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_33

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "signer":Ljava/security/Signature;
    :catchall_99
    move-exception v6

    iget-object v7, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6
.end method
