.class public final Lcom/google/common/net/InetAddresses$TeredoInfo;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/net/InetAddresses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TeredoInfo"
.end annotation


# instance fields
.field private final client:Ljava/net/Inet4Address;

.field private final flags:I

.field private final port:I

.field private final server:Ljava/net/Inet4Address;


# direct methods
.method public constructor <init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V
    .registers 12
    .param p1, "server"    # Ljava/net/Inet4Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "client"    # Ljava/net/Inet4Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "port"    # I
    .param p4, "flags"    # I

    .prologue
    const v6, 0xffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    if-ltz p3, :cond_49

    if-gt p3, v6, :cond_49

    move v0, v1

    :goto_d
    const-string v3, "port \'%s\' is out of range (0 <= port <= 0xffff)"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 646
    if-ltz p4, :cond_4b

    if-gt p4, v6, :cond_4b

    move v0, v1

    :goto_1f
    const-string v3, "flags \'%s\' is out of range (0 <= flags <= 0xffff)"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 649
    invoke-static {}, Lcom/google/common/net/InetAddresses;->access$000()Ljava/net/Inet4Address;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    iput-object v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->server:Ljava/net/Inet4Address;

    .line 650
    invoke-static {}, Lcom/google/common/net/InetAddresses;->access$000()Ljava/net/Inet4Address;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    iput-object v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->client:Ljava/net/Inet4Address;

    .line 651
    iput p3, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->port:I

    .line 652
    iput p4, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->flags:I

    .line 653
    return-void

    :cond_49
    move v0, v2

    .line 644
    goto :goto_d

    :cond_4b
    move v0, v2

    .line 646
    goto :goto_1f
.end method


# virtual methods
.method public getClient()Ljava/net/Inet4Address;
    .registers 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->client:Ljava/net/Inet4Address;

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 668
    iget v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->flags:I

    return v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 664
    iget v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->port:I

    return v0
.end method

.method public getServer()Ljava/net/Inet4Address;
    .registers 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->server:Ljava/net/Inet4Address;

    return-object v0
.end method
