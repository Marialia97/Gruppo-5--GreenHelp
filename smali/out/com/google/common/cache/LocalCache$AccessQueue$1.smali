.class Lcom/google/common/cache/LocalCache$AccessQueue$1;
.super Lcom/google/common/cache/LocalCache$AbstractReferenceEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache$AccessQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/LocalCache$AbstractReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/cache/LocalCache$AccessQueue;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache$AccessQueue;)V
    .registers 2

    .prologue
    .line 3795
    .local p0, "this":Lcom/google/common/cache/LocalCache$AccessQueue$1;, "Lcom/google/common/cache/LocalCache$AccessQueue.1;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$AccessQueue$1;->this$0:Lcom/google/common/cache/LocalCache$AccessQueue;

    invoke-direct {p0}, Lcom/google/common/cache/LocalCache$AbstractReferenceEntry;-><init>()V

    .line 3805
    iput-object p0, p0, Lcom/google/common/cache/LocalCache$AccessQueue$1;->nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3817
    iput-object p0, p0, Lcom/google/common/cache/LocalCache$AccessQueue$1;->previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .registers 3

    .prologue
    .line 3799
    .local p0, "this":Lcom/google/common/cache/LocalCache$AccessQueue$1;, "Lcom/google/common/cache/LocalCache$AccessQueue.1;"
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getNextInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3809
    .local p0, "this":Lcom/google/common/cache/LocalCache$AccessQueue$1;, "Lcom/google/common/cache/LocalCache$AccessQueue.1;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue$1;->nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3821
    .local p0, "this":Lcom/google/common/cache/LocalCache$AccessQueue$1;, "Lcom/google/common/cache/LocalCache$AccessQueue.1;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue$1;->previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public setAccessTime(J)V
    .registers 3
    .param p1, "time"    # J

    .prologue
    .line 3803
    .local p0, "this":Lcom/google/common/cache/LocalCache$AccessQueue$1;, "Lcom/google/common/cache/LocalCache$AccessQueue.1;"
    return-void
.end method

.method public setNextInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3814
    .local p0, "this":Lcom/google/common/cache/LocalCache$AccessQueue$1;, "Lcom/google/common/cache/LocalCache$AccessQueue.1;"
    .local p1, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$AccessQueue$1;->nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3815
    return-void
.end method

.method public setPreviousInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3826
    .local p0, "this":Lcom/google/common/cache/LocalCache$AccessQueue$1;, "Lcom/google/common/cache/LocalCache$AccessQueue.1;"
    .local p1, "previous":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$AccessQueue$1;->previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3827
    return-void
.end method
