.class Lcom/google/common/collect/Multisets$ElementSet$1;
.super Lcom/google/common/collect/TransformedIterator;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets$ElementSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedIterator",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multisets$ElementSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$ElementSet;Ljava/util/Iterator;)V
    .registers 3

    .prologue
    .line 928
    .local p0, "this":Lcom/google/common/collect/Multisets$ElementSet$1;, "Lcom/google/common/collect/Multisets$ElementSet.1;"
    .local p2, "x0":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    iput-object p1, p0, Lcom/google/common/collect/Multisets$ElementSet$1;->this$0:Lcom/google/common/collect/Multisets$ElementSet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method transform(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 931
    .local p0, "this":Lcom/google/common/collect/Multisets$ElementSet$1;, "Lcom/google/common/collect/Multisets$ElementSet.1;"
    .local p1, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 928
    .local p0, "this":Lcom/google/common/collect/Multisets$ElementSet$1;, "Lcom/google/common/collect/Multisets$ElementSet.1;"
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$ElementSet$1;->transform(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
