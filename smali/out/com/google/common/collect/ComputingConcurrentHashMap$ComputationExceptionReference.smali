.class final Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference;
.super Ljava/lang/Object;
.source "ComputingConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ComputingConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ComputationExceptionReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMakerInternalMap$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 211
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference;->t:Ljava/lang/Throwable;

    .line 213
    return-void
.end method


# virtual methods
.method public clear(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference<TK;TV;>;"
    .local p1, "newValue":Lcom/google/common/collect/MapMakerInternalMap$ValueReference;, "Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    return-void
.end method

.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ValueReference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "entry":Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public isComputingReference()Z
    .registers 2

    .prologue
    .line 233
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public waitForValue()Ljava/lang/Object;
    .registers 3
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
    .line 238
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference;->t:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
