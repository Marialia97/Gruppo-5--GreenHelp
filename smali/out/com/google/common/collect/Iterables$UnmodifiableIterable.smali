.class final Lcom/google/common/collect/Iterables$UnmodifiableIterable;
.super Lcom/google/common/collect/FluentIterable;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnmodifiableIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/FluentIterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final iterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/google/common/collect/Iterables$UnmodifiableIterable;, "Lcom/google/common/collect/Iterables$UnmodifiableIterable<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/google/common/collect/Iterables$UnmodifiableIterable;->iterable:Ljava/lang/Iterable;

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Iterable;Lcom/google/common/collect/Iterables$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Iterable;
    .param p2, "x1"    # Lcom/google/common/collect/Iterables$1;

    .prologue
    .line 87
    .local p0, "this":Lcom/google/common/collect/Iterables$UnmodifiableIterable;, "Lcom/google/common/collect/Iterables$UnmodifiableIterable<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/Iterables$UnmodifiableIterable;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/google/common/collect/Iterables$UnmodifiableIterable;, "Lcom/google/common/collect/Iterables$UnmodifiableIterable<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Iterables$UnmodifiableIterable;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    .local p0, "this":Lcom/google/common/collect/Iterables$UnmodifiableIterable;, "Lcom/google/common/collect/Iterables$UnmodifiableIterable<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Iterables$UnmodifiableIterable;->iterable:Ljava/lang/Iterable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
