.class public Lcom/google/api/client/testing/http/FixedClock;
.super Ljava/lang/Object;
.source "FixedClock.java"

# interfaces
.implements Lcom/google/api/client/util/Clock;


# instance fields
.field private currentTime:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 38
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/api/client/testing/http/FixedClock;-><init>(J)V

    .line 39
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "startTime"    # J

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/api/client/testing/http/FixedClock;->currentTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 47
    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/api/client/testing/http/FixedClock;->currentTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public setTime(J)Lcom/google/api/client/testing/http/FixedClock;
    .registers 4
    .param p1, "newTime"    # J

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/api/client/testing/http/FixedClock;->currentTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 55
    return-object p0
.end method
