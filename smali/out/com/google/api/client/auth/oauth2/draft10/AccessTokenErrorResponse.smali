.class public Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse;
.super Lcom/google/api/client/util/GenericData;
.source "AccessTokenErrorResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public error:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public errorDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "error_description"
    .end annotation
.end field

.field public errorUri:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "error_uri"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public final getErrorCodeIfKnown()Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse;->error:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 105
    :try_start_4
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse;->error:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;->valueOf(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/draft10/AccessTokenErrorResponse$KnownError;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_d} :catch_f

    move-result-object v0

    .line 110
    :goto_e
    return-object v0

    .line 106
    :catch_f
    move-exception v0

    .line 110
    :cond_10
    const/4 v0, 0x0

    goto :goto_e
.end method
