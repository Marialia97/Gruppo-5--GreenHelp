.class abstract Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;
.super Lcom/google/common/base/Ticker;
.source "RateLimiter.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/RateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SleepingTicker"
.end annotation


# static fields
.field static final SYSTEM_TICKER:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 676
    new-instance v0, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker$1;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker$1;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;->SYSTEM_TICKER:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 673
    invoke-direct {p0}, Lcom/google/common/base/Ticker;-><init>()V

    return-void
.end method


# virtual methods
.method abstract sleepMicrosUninterruptibly(J)V
.end method
