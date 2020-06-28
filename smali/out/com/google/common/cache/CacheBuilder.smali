.class public final Lcom/google/common/cache/CacheBuilder;
.super Ljava/lang/Object;
.source "CacheBuilder.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/CacheBuilder$OneWeigher;,
        Lcom/google/common/cache/CacheBuilder$NullListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final CACHE_STATS_COUNTER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x4

.field private static final DEFAULT_EXPIRATION_NANOS:I = 0x0

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final DEFAULT_REFRESH_NANOS:I = 0x0

.field static final EMPTY_STATS:Lcom/google/common/cache/CacheStats;

.field static final NULL_STATS_COUNTER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<+",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field static final NULL_TICKER:Lcom/google/common/base/Ticker;

.field static final UNSET_INT:I = -0x1

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field concurrencyLevel:I

.field expireAfterAccessNanos:J

.field expireAfterWriteNanos:J

.field initialCapacity:I

.field keyEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keyStrength:Lcom/google/common/cache/LocalCache$Strength;

.field maximumSize:J

.field maximumWeight:J

.field refreshNanos:J

.field removalListener:Lcom/google/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/RemovalListener",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field

.field statsCounterSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<+",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field strictParsing:Z

.field ticker:Lcom/google/common/base/Ticker;

.field valueEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field valueStrength:Lcom/google/common/cache/LocalCache$Strength;

.field weigher:Lcom/google/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/Weigher",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .prologue
    const-wide/16 v2, 0x0

    .line 159
    new-instance v0, Lcom/google/common/cache/CacheBuilder$1;

    invoke-direct {v0}, Lcom/google/common/cache/CacheBuilder$1;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilder;->NULL_STATS_COUNTER:Lcom/google/common/base/Supplier;

    .line 181
    new-instance v1, Lcom/google/common/cache/CacheStats;

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, v2

    move-wide v10, v2

    move-wide v12, v2

    invoke-direct/range {v1 .. v13}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    sput-object v1, Lcom/google/common/cache/CacheBuilder;->EMPTY_STATS:Lcom/google/common/cache/CacheStats;

    .line 183
    new-instance v0, Lcom/google/common/cache/CacheBuilder$2;

    invoke-direct {v0}, Lcom/google/common/cache/CacheBuilder$2;-><init>()V

    sput-object v0, Lcom/google/common/cache/CacheBuilder;->CACHE_STATS_COUNTER:Lcom/google/common/base/Supplier;

    .line 207
    new-instance v0, Lcom/google/common/cache/CacheBuilder$3;

    invoke-direct {v0}, Lcom/google/common/cache/CacheBuilder$3;-><init>()V

    sput-object v0, Lcom/google/common/cache/CacheBuilder;->NULL_TICKER:Lcom/google/common/base/Ticker;

    .line 214
    const-class v0, Lcom/google/common/cache/CacheBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilder;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    .prologue
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/cache/CacheBuilder;->strictParsing:Z

    .line 220
    iput v1, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    .line 221
    iput v1, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    .line 222
    iput-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    .line 223
    iput-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 229
    iput-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 230
    iput-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 231
    iput-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    .line 239
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->NULL_STATS_COUNTER:Lcom/google/common/base/Supplier;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->statsCounterSupplier:Lcom/google/common/base/Supplier;

    .line 242
    return-void
.end method

.method private checkNonLoadingCache()V
    .registers 5

    .prologue
    .line 807
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    const-string v1, "refreshAfterWrite requires a LoadingCache"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 808
    return-void

    .line 807
    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private checkWeightWithWeigher()V
    .registers 7

    .prologue
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    .line 811
    iget-object v2, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    if-nez v2, :cond_16

    .line 812
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_14

    :goto_e
    const-string v1, "maximumWeight requires weigher"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 822
    :cond_13
    :goto_13
    return-void

    :cond_14
    move v0, v1

    .line 812
    goto :goto_e

    .line 814
    :cond_16
    iget-boolean v2, p0, Lcom/google/common/cache/CacheBuilder;->strictParsing:Z

    if-eqz v2, :cond_28

    .line 815
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_26

    :goto_20
    const-string v1, "weigher requires maximumWeight"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_13

    :cond_26
    move v0, v1

    goto :goto_20

    .line 817
    :cond_28
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_13

    .line 818
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "ignoring weigher specified without maximumWeight"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public static from(Lcom/google/common/cache/CacheBuilderSpec;)Lcom/google/common/cache/CacheBuilder;
    .registers 2
    .param p0, "spec"    # Lcom/google/common/cache/CacheBuilderSpec;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CacheBuilderSpec;",
            ")",
            "Lcom/google/common/cache/CacheBuilder",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilderSpec;->toCacheBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->lenientParsing()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/lang/String;)Lcom/google/common/cache/CacheBuilder;
    .registers 2
    .param p0, "spec"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/cache/CacheBuilder",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    invoke-static {p0}, Lcom/google/common/cache/CacheBuilderSpec;->parse(Ljava/lang/String;)Lcom/google/common/cache/CacheBuilderSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/cache/CacheBuilder;->from(Lcom/google/common/cache/CacheBuilderSpec;)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/common/cache/CacheBuilder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Lcom/google/common/cache/CacheBuilder;

    invoke-direct {v0}, Lcom/google/common/cache/CacheBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/common/cache/Cache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/Cache",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 801
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilder;->checkWeightWithWeigher()V

    .line 802
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilder;->checkNonLoadingCache()V

    .line 803
    new-instance v0, Lcom/google/common/cache/LocalCache$LocalManualCache;

    invoke-direct {v0, p0}, Lcom/google/common/cache/LocalCache$LocalManualCache;-><init>(Lcom/google/common/cache/CacheBuilder;)V

    return-object v0
.end method

.method public build(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/LoadingCache;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK1;TV1;>;)",
            "Lcom/google/common/cache/LoadingCache",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 784
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK1;TV1;>;"
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilder;->checkWeightWithWeigher()V

    .line 785
    new-instance v0, Lcom/google/common/cache/LocalCache$LocalLoadingCache;

    invoke-direct {v0, p0, p1}, Lcom/google/common/cache/LocalCache$LocalLoadingCache;-><init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/cache/CacheLoader;)V

    return-object v0
.end method

.method public concurrencyLevel(I)Lcom/google/common/cache/CacheBuilder;
    .registers 8
    .param p1, "concurrencyLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 375
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1f

    move v0, v1

    :goto_8
    const-string v3, "concurrency level was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 377
    if-lez p1, :cond_21

    :goto_19
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 378
    iput p1, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    .line 379
    return-object p0

    :cond_1f
    move v0, v2

    .line 375
    goto :goto_8

    :cond_21
    move v1, v2

    .line 377
    goto :goto_19
.end method

.method public expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;
    .registers 13
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 641
    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_38

    move v0, v1

    :goto_b
    const-string v3, "expireAfterAccess was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 643
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_3a

    move v0, v1

    :goto_21
    const-string v3, "duration cannot be negative: %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 644
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 645
    return-object p0

    :cond_38
    move v0, v2

    .line 641
    goto :goto_b

    :cond_3a
    move v0, v2

    .line 643
    goto :goto_21
.end method

.method public expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;
    .registers 13
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 607
    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_38

    move v0, v1

    :goto_b
    const-string v3, "expireAfterWrite was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 609
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_3a

    move v0, v1

    :goto_21
    const-string v3, "duration cannot be negative: %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 610
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 611
    return-object p0

    :cond_38
    move v0, v2

    .line 607
    goto :goto_b

    :cond_3a
    move v0, v2

    .line 609
    goto :goto_21
.end method

.method getConcurrencyLevel()I
    .registers 3

    .prologue
    .line 383
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x4

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    goto :goto_6
.end method

.method getExpireAfterAccessNanos()J
    .registers 5

    .prologue
    .line 649
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    goto :goto_a
.end method

.method getExpireAfterWriteNanos()J
    .registers 5

    .prologue
    .line 615
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    goto :goto_a
.end method

.method getInitialCapacity()I
    .registers 3

    .prologue
    .line 341
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x10

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    goto :goto_7
.end method

.method getKeyEquivalence()Lcom/google/common/base/Equivalence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilder;->getKeyStrength()Lcom/google/common/cache/LocalCache$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method getKeyStrength()Lcom/google/common/cache/LocalCache$Strength;
    .registers 3

    .prologue
    .line 529
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    return-object v0
.end method

.method getMaximumWeight()J
    .registers 5

    .prologue
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const-wide/16 v0, 0x0

    .line 492
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_e

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_f

    .line 495
    :cond_e
    :goto_e
    return-wide v0

    :cond_f
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    if-nez v0, :cond_16

    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    goto :goto_e

    :cond_16
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    goto :goto_e
.end method

.method getRefreshNanos()J
    .registers 5

    .prologue
    .line 689
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    goto :goto_a
.end method

.method getRemovalListener()Lcom/google/common/cache/RemovalListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/RemovalListener",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 750
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->removalListener:Lcom/google/common/cache/RemovalListener;

    sget-object v1, Lcom/google/common/cache/CacheBuilder$NullListener;->INSTANCE:Lcom/google/common/cache/CacheBuilder$NullListener;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/RemovalListener;

    return-object v0
.end method

.method getStatsCounterSupplier()Lcom/google/common/base/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier",
            "<+",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 767
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->statsCounterSupplier:Lcom/google/common/base/Supplier;

    return-object v0
.end method

.method getTicker(Z)Lcom/google/common/base/Ticker;
    .registers 3
    .param p1, "recordsTime"    # Z

    .prologue
    .line 708
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->ticker:Lcom/google/common/base/Ticker;

    if-eqz v0, :cond_7

    .line 709
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->ticker:Lcom/google/common/base/Ticker;

    .line 711
    :goto_6
    return-object v0

    :cond_7
    if-eqz p1, :cond_e

    invoke-static {}, Lcom/google/common/base/Ticker;->systemTicker()Lcom/google/common/base/Ticker;

    move-result-object v0

    goto :goto_6

    :cond_e
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->NULL_TICKER:Lcom/google/common/base/Ticker;

    goto :goto_6
.end method

.method getValueEquivalence()Lcom/google/common/base/Equivalence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilder;->getValueStrength()Lcom/google/common/cache/LocalCache$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method getValueStrength()Lcom/google/common/cache/LocalCache$Strength;
    .registers 3

    .prologue
    .line 584
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    return-object v0
.end method

.method getWeigher()Lcom/google/common/cache/Weigher;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/Weigher",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 501
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    sget-object v1, Lcom/google/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lcom/google/common/cache/CacheBuilder$OneWeigher;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/Weigher;

    return-object v0
.end method

.method public initialCapacity(I)Lcom/google/common/cache/CacheBuilder;
    .registers 8
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 333
    iget v0, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1f

    move v0, v1

    :goto_8
    const-string v3, "initial capacity was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 335
    if-ltz p1, :cond_21

    :goto_19
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 336
    iput p1, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    .line 337
    return-object p0

    :cond_1f
    move v0, v2

    .line 333
    goto :goto_8

    :cond_21
    move v1, v2

    .line 335
    goto :goto_19
.end method

.method keyEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/CacheBuilder;
    .registers 7
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, "equivalence":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 294
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_1b

    move v0, v1

    :goto_7
    const-string v3, "key equivalence was already set to %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 296
    return-object p0

    :cond_1b
    move v0, v2

    .line 294
    goto :goto_7
.end method

.method lenientParsing()Lcom/google/common/cache/CacheBuilder;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/cache/CacheBuilder;->strictParsing:Z

    .line 283
    return-object p0
.end method

.method public maximumSize(J)Lcom/google/common/cache/CacheBuilder;
    .registers 14
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const-wide/16 v8, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 402
    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_48

    move v0, v1

    :goto_b
    const-string v3, "maximum size was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 404
    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_4a

    move v0, v1

    :goto_21
    const-string v3, "maximum weight was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 406
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    if-nez v0, :cond_4c

    move v0, v1

    :goto_35
    const-string v3, "maximum size can not be combined with weigher"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 407
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_4e

    :goto_40
    const-string v0, "maximum size must not be negative"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 408
    iput-wide p1, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    .line 409
    return-object p0

    :cond_48
    move v0, v2

    .line 402
    goto :goto_b

    :cond_4a
    move v0, v2

    .line 404
    goto :goto_21

    :cond_4c
    move v0, v2

    .line 406
    goto :goto_35

    :cond_4e
    move v1, v2

    .line 407
    goto :goto_40
.end method

.method public maximumWeight(J)Lcom/google/common/cache/CacheBuilder;
    .registers 14
    .param p1, "weight"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const-wide/16 v8, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 438
    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_3e

    move v0, v1

    :goto_b
    const-string v3, "maximum weight was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 440
    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_40

    move v0, v1

    :goto_21
    const-string v3, "maximum size was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 442
    iput-wide p1, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 443
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_42

    :goto_38
    const-string v0, "maximum weight must not be negative"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 444
    return-object p0

    :cond_3e
    move v0, v2

    .line 438
    goto :goto_b

    :cond_40
    move v0, v2

    .line 440
    goto :goto_21

    :cond_42
    move v1, v2

    .line 443
    goto :goto_38
.end method

.method public recordStats()Lcom/google/common/cache/CacheBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 762
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->CACHE_STATS_COUNTER:Lcom/google/common/base/Supplier;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->statsCounterSupplier:Lcom/google/common/base/Supplier;

    .line 763
    return-object p0
.end method

.method public refreshAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;
    .registers 13
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported (synchronously)."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 681
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3b

    move v0, v1

    :goto_e
    const-string v3, "refresh was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 683
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-lez v0, :cond_3d

    move v0, v1

    :goto_24
    const-string v3, "duration must be positive: %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 684
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/CacheBuilder;->refreshNanos:J

    .line 685
    return-object p0

    :cond_3b
    move v0, v2

    .line 682
    goto :goto_e

    :cond_3d
    move v0, v2

    .line 683
    goto :goto_24
.end method

.method public removalListener(Lcom/google/common/cache/RemovalListener;)Lcom/google/common/cache/CacheBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/RemovalListener",
            "<-TK1;-TV1;>;)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK1;TV1;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 738
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, "listener":Lcom/google/common/cache/RemovalListener;, "Lcom/google/common/cache/RemovalListener<-TK1;-TV1;>;"
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->removalListener:Lcom/google/common/cache/RemovalListener;

    if-nez v1, :cond_12

    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 742
    move-object v0, p0

    .line 743
    .local v0, "me":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK1;TV1;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/RemovalListener;

    iput-object v1, v0, Lcom/google/common/cache/CacheBuilder;->removalListener:Lcom/google/common/cache/RemovalListener;

    .line 744
    return-object v0

    .line 738
    .end local v0    # "me":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK1;TV1;>;"
    :cond_12
    const/4 v1, 0x0

    goto :goto_5
.end method

.method setKeyStrength(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;
    .registers 7
    .param p1, "strength"    # Lcom/google/common/cache/LocalCache$Strength;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$Strength;",
            ")",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 523
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    if-nez v0, :cond_1b

    move v0, v1

    :goto_7
    const-string v3, "Key strength was already set to %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 524
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 525
    return-object p0

    :cond_1b
    move v0, v2

    .line 523
    goto :goto_7
.end method

.method setValueStrength(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;
    .registers 7
    .param p1, "strength"    # Lcom/google/common/cache/LocalCache$Strength;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$Strength;",
            ")",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 578
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    if-nez v0, :cond_1b

    move v0, v1

    :goto_7
    const-string v3, "Value strength was already set to %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 579
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$Strength;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 580
    return-object p0

    :cond_1b
    move v0, v2

    .line 578
    goto :goto_7
.end method

.method public softValues()Lcom/google/common/cache/CacheBuilder;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.SoftReference"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 574
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    sget-object v0, Lcom/google/common/cache/LocalCache$Strength;->SOFT:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/CacheBuilder;->setValueStrength(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public ticker(Lcom/google/common/base/Ticker;)Lcom/google/common/cache/CacheBuilder;
    .registers 3
    .param p1, "ticker"    # Lcom/google/common/base/Ticker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Ticker;",
            ")",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 702
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->ticker:Lcom/google/common/base/Ticker;

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 703
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Ticker;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->ticker:Lcom/google/common/base/Ticker;

    .line 704
    return-object p0

    .line 702
    :cond_11
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v3, -0x1

    const-wide/16 v6, -0x1

    .line 830
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 831
    .local v0, "s":Lcom/google/common/base/Objects$ToStringHelper;
    iget v1, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    if-eq v1, v3, :cond_12

    .line 832
    const-string v1, "initialCapacity"

    iget v2, p0, Lcom/google/common/cache/CacheBuilder;->initialCapacity:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    .line 834
    :cond_12
    iget v1, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    if-eq v1, v3, :cond_1d

    .line 835
    const-string v1, "concurrencyLevel"

    iget v2, p0, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    .line 837
    :cond_1d
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_2a

    .line 838
    const-string v1, "maximumSize"

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    .line 840
    :cond_2a
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_37

    .line 841
    const-string v1, "maximumWeight"

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->maximumWeight:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    .line 843
    :cond_37
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_57

    .line 844
    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 846
    :cond_57
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_77

    .line 847
    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 849
    :cond_77
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_8a

    .line 850
    const-string v1, "keyStrength"

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilder;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 852
    :cond_8a
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_9d

    .line 853
    const-string v1, "valueStrength"

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilder;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {v2}, Lcom/google/common/cache/LocalCache$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 855
    :cond_9d
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->keyEquivalence:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_a6

    .line 856
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 858
    :cond_a6
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_af

    .line 859
    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 861
    :cond_af
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->removalListener:Lcom/google/common/cache/RemovalListener;

    if-eqz v1, :cond_b8

    .line 862
    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 864
    :cond_b8
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method valueEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/CacheBuilder;
    .registers 7
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, "equivalence":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 312
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_1b

    move v0, v1

    :goto_7
    const-string v3, "value equivalence was already set to %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 314
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/cache/CacheBuilder;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 315
    return-object p0

    :cond_1b
    move v0, v2

    .line 312
    goto :goto_7
.end method

.method public weakKeys()Lcom/google/common/cache/CacheBuilder;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    sget-object v0, Lcom/google/common/cache/LocalCache$Strength;->WEAK:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/CacheBuilder;->setKeyStrength(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public weakValues()Lcom/google/common/cache/CacheBuilder;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 550
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    sget-object v0, Lcom/google/common/cache/LocalCache$Strength;->WEAK:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/CacheBuilder;->setValueStrength(Lcom/google/common/cache/LocalCache$Strength;)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public weigher(Lcom/google/common/cache/Weigher;)Lcom/google/common/cache/CacheBuilder;
    .registers 10
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/Weigher",
            "<-TK1;-TV1;>;)",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, "weigher":Lcom/google/common/cache/Weigher;, "Lcom/google/common/cache/Weigher<-TK1;-TV1;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 478
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    if-nez v1, :cond_30

    move v1, v2

    :goto_7
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 479
    iget-boolean v1, p0, Lcom/google/common/cache/CacheBuilder;->strictParsing:Z

    if-eqz v1, :cond_26

    .line 480
    iget-wide v4, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_32

    move v1, v2

    :goto_17
    const-string v4, "weigher can not be combined with maximum size"

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/common/cache/CacheBuilder;->maximumSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v4, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 486
    :cond_26
    move-object v0, p0

    .line 487
    .local v0, "me":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK1;TV1;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/Weigher;

    iput-object v1, v0, Lcom/google/common/cache/CacheBuilder;->weigher:Lcom/google/common/cache/Weigher;

    .line 488
    return-object v0

    .end local v0    # "me":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<TK1;TV1;>;"
    :cond_30
    move v1, v3

    .line 478
    goto :goto_7

    :cond_32
    move v1, v3

    .line 480
    goto :goto_17
.end method
