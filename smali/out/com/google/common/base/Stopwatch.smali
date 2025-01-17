.class public final Lcom/google/common/base/Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Stopwatch$1;
    }
.end annotation


# instance fields
.field private elapsedNanos:J

.field private isRunning:Z

.field private startTick:J

.field private final ticker:Lcom/google/common/base/Ticker;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 84
    invoke-static {}, Lcom/google/common/base/Ticker;->systemTicker()Lcom/google/common/base/Ticker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/Stopwatch;-><init>(Lcom/google/common/base/Ticker;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/google/common/base/Ticker;)V
    .registers 3
    .param p1, "ticker"    # Lcom/google/common/base/Ticker;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, "ticker"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Ticker;

    iput-object v0, p0, Lcom/google/common/base/Stopwatch;->ticker:Lcom/google/common/base/Ticker;

    .line 93
    return-void
.end method

.method private static abbreviate(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .registers 3
    .param p0, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 237
    sget-object v0, Lcom/google/common/base/Stopwatch$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-virtual {p0}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 247
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 239
    :pswitch_11
    const-string v0, "ns"

    .line 245
    :goto_13
    return-object v0

    .line 241
    :pswitch_14
    const-string v0, "\u03bcs"

    goto :goto_13

    .line 243
    :pswitch_17
    const-string v0, "ms"

    goto :goto_13

    .line 245
    :pswitch_1a
    const-string v0, "s"

    goto :goto_13

    .line 237
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method private static chooseUnit(J)Ljava/util/concurrent/TimeUnit;
    .registers 6
    .param p0, "nanos"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 224
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    .line 225
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 233
    :goto_10
    return-object v0

    .line 227
    :cond_11
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    .line 228
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_10

    .line 230
    :cond_20
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2f

    .line 231
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_10

    .line 233
    :cond_2f
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_10
.end method

.method private elapsedNanos()J
    .registers 5

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/google/common/base/Stopwatch;->isRunning:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/common/base/Stopwatch;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/base/Stopwatch;->startTick:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/base/Stopwatch;->elapsedNanos:J

    add-long/2addr v0, v2

    :goto_10
    return-wide v0

    :cond_11
    iget-wide v0, p0, Lcom/google/common/base/Stopwatch;->elapsedNanos:J

    goto :goto_10
.end method


# virtual methods
.method public elapsed(Ljava/util/concurrent/TimeUnit;)J
    .registers 5
    .param p1, "desiredUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/google/common/base/Stopwatch;->elapsedNanos()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsedMillis()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 190
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsedTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 4
    .param p1, "desiredUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/google/common/base/Stopwatch;->isRunning:Z

    return v0
.end method

.method public reset()Lcom/google/common/base/Stopwatch;
    .registers 3

    .prologue
    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/base/Stopwatch;->elapsedNanos:J

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/base/Stopwatch;->isRunning:Z

    .line 143
    return-object p0
.end method

.method public start()Lcom/google/common/base/Stopwatch;
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 111
    iget-boolean v0, p0, Lcom/google/common/base/Stopwatch;->isRunning:Z

    if-nez v0, :cond_16

    move v0, v1

    :goto_6
    const-string v2, "This stopwatch is already running; it cannot be started more than once."

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 113
    iput-boolean v1, p0, Lcom/google/common/base/Stopwatch;->isRunning:Z

    .line 114
    iget-object v0, p0, Lcom/google/common/base/Stopwatch;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/base/Stopwatch;->startTick:J

    .line 115
    return-object p0

    .line 111
    :cond_16
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public stop()Lcom/google/common/base/Stopwatch;
    .registers 7

    .prologue
    .line 126
    iget-object v2, p0, Lcom/google/common/base/Stopwatch;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v2}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 127
    .local v0, "tick":J
    iget-boolean v2, p0, Lcom/google/common/base/Stopwatch;->isRunning:Z

    const-string v3, "This stopwatch is already stopped; it cannot be stopped more than once."

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 129
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/common/base/Stopwatch;->isRunning:Z

    .line 130
    iget-wide v2, p0, Lcom/google/common/base/Stopwatch;->elapsedNanos:J

    iget-wide v4, p0, Lcom/google/common/base/Stopwatch;->startTick:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/base/Stopwatch;->elapsedNanos:J

    .line 131
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "String.format()"
    .end annotation

    .prologue
    .line 198
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/common/base/Stopwatch;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 12
    .param p1, "significantDigits"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "String.format()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/google/common/base/Stopwatch;->elapsedNanos()J

    move-result-wide v0

    .line 215
    .local v0, "nanos":J
    invoke-static {v0, v1}, Lcom/google/common/base/Stopwatch;->chooseUnit(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    .line 216
    .local v2, "unit":Ljava/util/concurrent/TimeUnit;
    long-to-double v6, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v3, v8, v9, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    long-to-double v8, v8

    div-double v4, v6, v8

    .line 219
    .local v4, "value":D
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "g %s"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Lcom/google/common/base/Stopwatch;->abbreviate(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
