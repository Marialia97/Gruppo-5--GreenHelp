.class final Lcom/google/common/collect/Iterators$4;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators;->cycle(Ljava/lang/Iterable;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field removeFrom:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic val$iterable:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .registers 3

    .prologue
    .line 430
    iput-object p1, p0, Lcom/google/common/collect/Iterators$4;->val$iterable:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Iterators$4;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    .line 437
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->val$iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Iterators$4;->iterator:Ljava/util/Iterator;

    .line 439
    :cond_10
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$4;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 444
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 446
    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->iterator:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/Iterators$4;->removeFrom:Ljava/util/Iterator;

    .line 447
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->removeFrom:Ljava/util/Iterator;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_5
    const-string v1, "no calls to next() since last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 453
    iget-object v0, p0, Lcom/google/common/collect/Iterators$4;->removeFrom:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/Iterators$4;->removeFrom:Ljava/util/Iterator;

    .line 455
    return-void

    .line 451
    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method
