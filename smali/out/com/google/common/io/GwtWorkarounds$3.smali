.class final Lcom/google/common/io/GwtWorkarounds$3;
.super Ljava/io/InputStream;
.source "GwtWorkarounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/GwtWorkarounds;->asInputStream(Lcom/google/common/io/GwtWorkarounds$ByteInput;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$input:Lcom/google/common/io/GwtWorkarounds$ByteInput;


# direct methods
.method constructor <init>(Lcom/google/common/io/GwtWorkarounds$ByteInput;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/common/io/GwtWorkarounds$3;->val$input:Lcom/google/common/io/GwtWorkarounds$ByteInput;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$3;->val$input:Lcom/google/common/io/GwtWorkarounds$ByteInput;

    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$ByteInput;->close()V

    .line 136
    return-void
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$3;->val$input:Lcom/google/common/io/GwtWorkarounds$ByteInput;

    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$ByteInput;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 113
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    add-int v4, p2, p3

    array-length v5, p1

    invoke-static {p2, v4, v5}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 115
    if-nez p3, :cond_e

    .line 116
    const/4 v0, 0x0

    .line 130
    :cond_d
    :goto_d
    return v0

    .line 118
    :cond_e
    invoke-virtual {p0}, Lcom/google/common/io/GwtWorkarounds$3;->read()I

    move-result v1

    .line 119
    .local v1, "firstByte":I
    if-ne v1, v3, :cond_16

    move v0, v3

    .line 120
    goto :goto_d

    .line 122
    :cond_16
    int-to-byte v4, v1

    aput-byte v4, p1, p2

    .line 123
    const/4 v0, 0x1

    .local v0, "dst":I
    :goto_1a
    if-ge v0, p3, :cond_2a

    .line 124
    invoke-virtual {p0}, Lcom/google/common/io/GwtWorkarounds$3;->read()I

    move-result v2

    .line 125
    .local v2, "readByte":I
    if-eq v2, v3, :cond_d

    .line 128
    add-int v4, p2, v0

    int-to-byte v5, v2

    aput-byte v5, p1, v4

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .end local v2    # "readByte":I
    :cond_2a
    move v0, p3

    .line 130
    goto :goto_d
.end method
