.class Lcom/google/common/cache/CacheBuilderSpec$WriteDurationParser;
.super Lcom/google/common/cache/CacheBuilderSpec$DurationParser;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WriteDurationParser"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$DurationParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseDuration(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
    .registers 7
    .param p1, "spec"    # Lcom/google/common/cache/CacheBuilderSpec;
    .param p2, "duration"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 441
    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->writeExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_5
    const-string v1, "expireAfterWrite already set"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 442
    iput-wide p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->writeExpirationDuration:J

    .line 443
    iput-object p4, p1, Lcom/google/common/cache/CacheBuilderSpec;->writeExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 444
    return-void

    .line 441
    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method
