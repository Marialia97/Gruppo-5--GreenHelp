.class public Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;
.super Lcom/google/api/client/json/GenericJson;
.source "GoogleJsonError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/json/GoogleJsonError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorInfo"
.end annotation


# instance fields
.field private domain:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private location:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private locationType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private reason:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDomain()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;->location:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocationType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;->locationType:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final setDomain(Ljava/lang/String;)V
    .registers 2
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;->domain:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public final setLocation(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;->location:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public final setLocationType(Ljava/lang/String;)V
    .registers 2
    .param p1, "locationType"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;->locationType:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;->message:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public final setReason(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;->reason:Ljava/lang/String;

    .line 118
    return-void
.end method
