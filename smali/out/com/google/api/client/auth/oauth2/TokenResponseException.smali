.class public Lcom/google/api/client/auth/oauth2/TokenResponseException;
.super Lcom/google/api/client/http/HttpResponseException;
.source "TokenResponseException.java"


# static fields
.field private static final serialVersionUID:J = 0x37cc5b6d7204050cL


# instance fields
.field private final transient details:Lcom/google/api/client/auth/oauth2/TokenErrorResponse;


# direct methods
.method private constructor <init>(Lcom/google/api/client/http/HttpResponse;Lcom/google/api/client/auth/oauth2/TokenErrorResponse;Ljava/lang/String;)V
    .registers 4
    .param p1, "response"    # Lcom/google/api/client/http/HttpResponse;
    .param p2, "details"    # Lcom/google/api/client/auth/oauth2/TokenErrorResponse;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p3}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponse;Ljava/lang/String;)V

    .line 58
    iput-object p2, p0, Lcom/google/api/client/auth/oauth2/TokenResponseException;->details:Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    .line 59
    return-void
.end method

.method public static from(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/auth/oauth2/TokenResponseException;
    .registers 12
    .param p0, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p1, "response"    # Lcom/google/api/client/http/HttpResponse;

    .prologue
    .line 81
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/4 v3, 0x0

    .line 83
    .local v3, "details":Lcom/google/api/client/auth/oauth2/TokenErrorResponse;
    const/4 v2, 0x0

    .line 84
    .local v2, "detailString":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "contentType":Ljava/lang/String;
    :try_start_9
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v6

    if-nez v6, :cond_51

    if-eqz v1, :cond_51

    sget-object v6, Lcom/google/api/client/json/Json;->MEDIA_TYPE:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/google/api/client/http/HttpMediaType;->equalsIgnoreParameters(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 88
    new-instance v6, Lcom/google/api/client/json/JsonObjectParser;

    invoke-direct {v6, p0}, Lcom/google/api/client/json/JsonObjectParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContentCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    const-class v9, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/api/client/json/JsonObjectParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    move-object v3, v0

    .line 90
    invoke-virtual {v3}, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;->toPrettyString()Ljava/lang/String;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_33} :catch_56

    move-result-object v2

    .line 99
    :goto_34
    invoke-static {p1}, Lcom/google/api/client/http/HttpResponseException;->computeMessageBuffer(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 100
    .local v5, "message":Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_47

    .line 101
    sget-object v6, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_47
    new-instance v6, Lcom/google/api/client/auth/oauth2/TokenResponseException;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v3, v7}, Lcom/google/api/client/auth/oauth2/TokenResponseException;-><init>(Lcom/google/api/client/http/HttpResponse;Lcom/google/api/client/auth/oauth2/TokenErrorResponse;Ljava/lang/String;)V

    return-object v6

    .line 92
    .end local v5    # "message":Ljava/lang/StringBuilder;
    :cond_51
    :try_start_51
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_56

    move-result-object v2

    goto :goto_34

    .line 94
    :catch_56
    move-exception v4

    .line 96
    .local v4, "exception":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34
.end method


# virtual methods
.method public final getDetails()Lcom/google/api/client/auth/oauth2/TokenErrorResponse;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenResponseException;->details:Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    return-object v0
.end method
