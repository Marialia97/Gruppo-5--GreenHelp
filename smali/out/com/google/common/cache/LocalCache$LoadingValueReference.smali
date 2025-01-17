.class Lcom/google/common/cache/LocalCache$LoadingValueReference;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lcom/google/common/cache/LocalCache$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadingValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/cache/LocalCache$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final futureValue:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<TV;>;"
        }
    .end annotation
.end field

.field volatile oldValue:Lcom/google/common/cache/LocalCache$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final stopwatch:Lcom/google/common/base/Stopwatch;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3535
    .local p0, "this":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    invoke-static {}, Lcom/google/common/cache/LocalCache;->unset()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache$LoadingValueReference;-><init>(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 3536
    return-void
.end method

.method public constructor <init>(Lcom/google/common/cache/LocalCache$ValueReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3538
    .local p0, "this":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p1, "oldValue":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3531
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->futureValue:Lcom/google/common/util/concurrent/SettableFuture;

    .line 3532
    new-instance v0, Lcom/google/common/base/Stopwatch;

    invoke-direct {v0}, Lcom/google/common/base/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->stopwatch:Lcom/google/common/base/Stopwatch;

    .line 3539
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->oldValue:Lcom/google/common/cache/LocalCache$ValueReference;

    .line 3540
    return-void
.end method

.method private fullyFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3575
    .local p0, "this":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 3576
    .local v0, "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<TV;>;"
    invoke-static {v0, p1}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->setException(Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/Throwable;)Z

    .line 3577
    return-object v0
.end method

.method private static setException(Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/Throwable;)Z
    .registers 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3567
    .local p0, "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 3570
    :goto_4
    return v1

    .line 3568
    :catch_5
    move-exception v0

    .line 3570
    .local v0, "e":Ljava/lang/Error;
    const/4 v1, 0x0

    goto :goto_4
.end method


# virtual methods
.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ValueReference;
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3640
    .local p0, "this":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    return-object p0
.end method

.method public elapsedNanos()J
    .registers 3

    .prologue
    .line 3615
    .local p0, "this":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->stopwatch:Lcom/google/common/base/Stopwatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3625
    .local p0, "this":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->oldValue:Lcom/google/common/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3634
    .local p0, "this":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOldValue()Lcom/google/common/cache/LocalCache$ValueReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3629
    .local p0, "this":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->oldValue:Lcom/google/common/cache/LocalCache$ValueReference;

    return-object v0
.end method

.method public getWeight()I
    .registers 2

    .prologue
    .line 3554
    .local p0, "this":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->oldValue:Lcom/google/common/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 3549
    .local p0, "this":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->oldValue:Lcom/google/common/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .registers 2

    .prologue
    .line 3544
    .local p0, "this":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public loadFuture(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3595
    .local p0, "this":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    iget-object v4, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->stopwatch:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v4}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    .line 3596
    iget-object v4, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->oldValue:Lcom/google/common/cache/LocalCache$ValueReference;

    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 3598
    .local v2, "previousValue":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_1f

    .line 3599
    :try_start_d
    invoke-virtual {p2, p1}, Lcom/google/common/cache/CacheLoader;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3600
    .local v1, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->set(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->futureValue:Lcom/google/common/util/concurrent/SettableFuture;

    .line 3610
    .end local v1    # "newValue":Ljava/lang/Object;, "TV;"
    :goto_19
    return-object v4

    .line 3600
    .restart local v1    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_1a
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    goto :goto_19

    .line 3602
    .end local v1    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_1f
    invoke-virtual {p2, p1, v2}, Lcom/google/common/cache/CacheLoader;->reload(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 3604
    .local v0, "newValue":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    if-eqz v0, :cond_27

    .end local v0    # "newValue":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    :goto_25
    move-object v4, v0

    goto :goto_19

    .restart local v0    # "newValue":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    :cond_27
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_2b} :catch_2d

    move-result-object v0

    goto :goto_25

    .line 3606
    .end local v0    # "newValue":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    :catch_2d
    move-exception v3

    .line 3607
    .local v3, "t":Ljava/lang/Throwable;
    instance-of v4, v3, Ljava/lang/InterruptedException;

    if-eqz v4, :cond_39

    .line 3608
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 3610
    :cond_39
    invoke-virtual {p0, v3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->setException(Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_42

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->futureValue:Lcom/google/common/util/concurrent/SettableFuture;

    goto :goto_19

    :cond_42
    invoke-direct {p0, v3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->fullyFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    goto :goto_19
.end method

.method public notifyNewValue(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 3582
    .local p0, "this":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_6

    .line 3585
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->set(Ljava/lang/Object;)Z

    .line 3592
    :goto_5
    return-void

    .line 3588
    :cond_6
    invoke-static {}, Lcom/google/common/cache/LocalCache;->unset()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->oldValue:Lcom/google/common/cache/LocalCache$ValueReference;

    goto :goto_5
.end method

.method public set(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 3558
    .local p0, "this":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->futureValue:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 3562
    .local p0, "this":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->futureValue:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v0, p1}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->setException(Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public waitForValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 3620
    .local p0, "this":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->futureValue:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
