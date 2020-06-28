.class public final Lcom/google/common/io/LimitInputStream;
.super Ljava/io/FilterInputStream;
.source "LimitInputStream.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private left:J

.field private mark:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "limit"    # J

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/common/io/LimitInputStream;->mark:J

    .line 49
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_19

    const/4 v0, 0x1

    :goto_11
    const-string v1, "limit must be non-negative"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 51
    iput-wide p2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    .line 52
    return-void

    .line 50
    :cond_19
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public declared-synchronized mark(I)V
    .registers 4
    .param p1, "readlimit"    # I

    .prologue
    .line 59
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 60
    iget-wide v0, p0, Lcom/google/common/io/LimitInputStream;->left:J

    iput-wide v0, p0, Lcom/google/common/io/LimitInputStream;->mark:J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 62
    monitor-exit p0

    return-void

    .line 59
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 65
    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    move v0, v1

    .line 73
    :cond_a
    :goto_a
    return v0

    .line 69
    :cond_b
    iget-object v2, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 70
    .local v0, "result":I
    if-eq v0, v1, :cond_a

    .line 71
    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    goto :goto_a
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
    const/4 v1, -0x1

    .line 77
    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    move v0, v1

    .line 86
    :cond_a
    :goto_a
    return v0

    .line 81
    :cond_b
    int-to-long v2, p3

    iget-wide v4, p0, Lcom/google/common/io/LimitInputStream;->left:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    .line 82
    iget-object v2, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 83
    .local v0, "result":I
    if-eq v0, v1, :cond_a

    .line 84
    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    goto :goto_a
.end method

.method public declared-synchronized reset()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_14

    .line 91
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    .line 90
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 93
    :cond_14
    :try_start_14
    iget-wide v0, p0, Lcom/google/common/io/LimitInputStream;->mark:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_24

    .line 94
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_24
    iget-object v0, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 98
    iget-wide v0, p0, Lcom/google/common/io/LimitInputStream;->mark:J

    iput-wide v0, p0, Lcom/google/common/io/LimitInputStream;->left:J
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_11

    .line 99
    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .registers 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 103
    iget-object v2, p0, Lcom/google/common/io/LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 104
    .local v0, "skipped":J
    iget-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/io/LimitInputStream;->left:J

    .line 105
    return-wide v0
.end method
