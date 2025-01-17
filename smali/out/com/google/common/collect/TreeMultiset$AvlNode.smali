.class final Lcom/google/common/collect/TreeMultiset$AvlNode;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AvlNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multisets$AbstractEntry",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private distinctElements:I

.field private final elem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private elemCount:I

.field private height:I

.field private left:Lcom/google/common/collect/TreeMultiset$AvlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation
.end field

.field private pred:Lcom/google/common/collect/TreeMultiset$AvlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation
.end field

.field private right:Lcom/google/common/collect/TreeMultiset$AvlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation
.end field

.field private succ:Lcom/google/common/collect/TreeMultiset$AvlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation
.end field

.field private totalCount:J


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .registers 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "elemCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "elem":Ljava/lang/Object;, "TE;"
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 531
    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    .line 532
    if-lez p2, :cond_1b

    move v0, v1

    :goto_8
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 533
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    .line 534
    iput p2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    .line 535
    int-to-long v2, p2

    iput-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 536
    iput v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 537
    iput v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    .line 538
    iput-object v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 539
    iput-object v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 540
    return-void

    .line 532
    :cond_1b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static synthetic access$1000(Lcom/google/common/collect/TreeMultiset$AvlNode;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 4
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;
    .param p1, "x1"    # Ljava/util/Comparator;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 517
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->floor(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->pred:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;
    .param p1, "x1"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->pred:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/common/collect/TreeMultiset$AvlNode;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 517
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/TreeMultiset$AvlNode;)J
    .registers 3
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 517
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/TreeMultiset$AvlNode;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 517
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/common/collect/TreeMultiset$AvlNode;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/common/collect/TreeMultiset$AvlNode;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 4
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;
    .param p1, "x1"    # Ljava/util/Comparator;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 517
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->ceiling(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->succ:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 2
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;
    .param p1, "x1"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->succ:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-object p1
.end method

.method private addLeftChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 7
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 563
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 564
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->pred:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v0, v1, p0}, Lcom/google/common/collect/TreeMultiset;->access$1700(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 565
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    .line 566
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 567
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 568
    return-object p0
.end method

.method private addRightChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 7
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 554
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 555
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->succ:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {p0, v0, v1}, Lcom/google/common/collect/TreeMultiset;->access$1700(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 556
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    .line 557
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 558
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 559
    return-object p0
.end method

.method private balanceFactor()I
    .registers 3

    .prologue
    .line 862
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->height(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->height(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private ceiling(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 898
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 899
    .local v0, "cmp":I
    if-gez v0, :cond_1b

    .line 900
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v1, :cond_d

    .line 904
    .end local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_c
    :goto_c
    return-object p0

    .line 900
    .restart local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_d
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->ceiling(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-object p0, v1

    goto :goto_c

    .line 901
    :cond_1b
    if-eqz v0, :cond_c

    .line 904
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v1, :cond_24

    const/4 v1, 0x0

    :goto_22
    move-object p0, v1

    goto :goto_c

    :cond_24
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->ceiling(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    goto :goto_22
.end method

.method private deleteMe()Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 779
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    .line 780
    .local v1, "oldElemCount":I
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    .line 781
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->pred:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->succ:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v2, v3}, Lcom/google/common/collect/TreeMultiset;->access$1800(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 782
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v2, :cond_13

    .line 783
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 800
    :goto_12
    return-object v2

    .line 784
    :cond_13
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v2, :cond_1a

    .line 785
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    goto :goto_12

    .line 786
    :cond_1a
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iget v2, v2, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iget v3, v3, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    if-lt v2, v3, :cond_43

    .line 787
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->pred:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 789
    .local v0, "newTop":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v2, v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->removeMax(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 790
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iput-object v2, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 791
    iget v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 792
    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 793
    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v2

    goto :goto_12

    .line 795
    .end local v0    # "newTop":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_43
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->succ:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 796
    .restart local v0    # "newTop":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v2, v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->removeMin(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 797
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iput-object v2, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 798
    iget v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 799
    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 800
    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v2

    goto :goto_12
.end method

.method private floor(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 909
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 910
    .local v0, "cmp":I
    if-lez v0, :cond_1b

    .line 911
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v1, :cond_d

    .line 915
    .end local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_c
    :goto_c
    return-object p0

    .line 911
    .restart local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_d
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->floor(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-object p0, v1

    goto :goto_c

    .line 912
    :cond_1b
    if-eqz v0, :cond_c

    .line 915
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v1, :cond_24

    const/4 v1, 0x0

    :goto_22
    move-object p0, v1

    goto :goto_c

    :cond_24
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->floor(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    goto :goto_22
.end method

.method private static height(Lcom/google/common/collect/TreeMultiset$AvlNode;)I
    .registers 2
    .param p0    # Lcom/google/common/collect/TreeMultiset$AvlNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 894
    .local p0, "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<*>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    goto :goto_3
.end method

.method private rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 844
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->balanceFactor()I

    move-result v0

    sparse-switch v0, :sswitch_data_36

    .line 856
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->recomputeHeight()V

    .line 857
    .end local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :goto_a
    return-object p0

    .line 846
    .restart local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :sswitch_b
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->balanceFactor()I

    move-result v0

    if-lez v0, :cond_1b

    .line 847
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rotateRight()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 849
    :cond_1b
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rotateLeft()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_a

    .line 851
    :sswitch_20
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->balanceFactor()I

    move-result v0

    if-gez v0, :cond_30

    .line 852
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rotateLeft()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 854
    :cond_30
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rotateRight()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_a

    .line 844
    nop

    :sswitch_data_36
    .sparse-switch
        -0x2 -> :sswitch_b
        0x2 -> :sswitch_20
    .end sparse-switch
.end method

.method private recompute()V
    .registers 1

    .prologue
    .line 839
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->recomputeMultiset()V

    .line 840
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->recomputeHeight()V

    .line 841
    return-void
.end method

.method private recomputeHeight()V
    .registers 3

    .prologue
    .line 835
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->height(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->height(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    .line 836
    return-void
.end method

.method private recomputeMultiset()V
    .registers 5

    .prologue
    .line 829
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->distinctElements(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset;->distinctElements(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 831
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 832
    return-void
.end method

.method private removeMax(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 818
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v0, :cond_7

    .line 819
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 824
    :goto_6
    return-object v0

    .line 821
    :cond_7
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0, p1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->removeMax(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 822
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 823
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    iget v2, p1, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 824
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    goto :goto_6
.end method

.method private removeMin(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 806
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v0, :cond_7

    .line 807
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 812
    :goto_6
    return-object v0

    .line 809
    :cond_7
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0, p1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->removeMin(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 810
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 811
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    iget v2, p1, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 812
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    goto :goto_6
.end method

.method private rotateLeft()Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 866
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 867
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 868
    .local v0, "newTop":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 869
    iput-object p0, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 870
    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    iput-wide v2, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 871
    iget v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    iput v1, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 872
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->recompute()V

    .line 873
    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->recomputeHeight()V

    .line 874
    return-object v0

    .line 866
    .end local v0    # "newTop":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_1f
    const/4 v1, 0x0

    goto :goto_5
.end method

.method private rotateRight()Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 878
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 879
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 880
    .local v0, "newTop":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 881
    iput-object p0, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 882
    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    iput-wide v2, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 883
    iget v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    iput v1, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 884
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->recompute()V

    .line 885
    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->recomputeHeight()V

    .line 886
    return-object v0

    .line 878
    .end local v0    # "newTop":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_1f
    const/4 v1, 0x0

    goto :goto_5
.end method

.method private static totalCount(Lcom/google/common/collect/TreeMultiset$AvlNode;)J
    .registers 3
    .param p0    # Lcom/google/common/collect/TreeMultiset$AvlNode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<*>;)J"
        }
    .end annotation

    .prologue
    .line 890
    .local p0, "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<*>;"
    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    :goto_4
    return-wide v0

    :cond_5
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    goto :goto_4
.end method


# virtual methods
.method add(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 15
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "count"    # I
    .param p4, "result"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;I[I)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    iget-object v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    invoke-interface {p1, p2, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 577
    .local v0, "cmp":I
    if-gez v0, :cond_39

    .line 578
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 579
    .local v2, "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v2, :cond_15

    .line 580
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, p4, v6

    .line 581
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->addLeftChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    .line 613
    .end local v2    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .end local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_14
    :goto_14
    return-object p0

    .line 583
    .restart local v2    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .restart local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_15
    iget v1, v2, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    .line 585
    .local v1, "initHeight":I
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->add(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 586
    const/4 v6, 0x0

    aget v6, p4, v6

    if-nez v6, :cond_28

    .line 587
    iget v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 589
    :cond_28
    iget-wide v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v8, p3

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 590
    iget-object v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iget v6, v6, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    if-eq v6, v1, :cond_14

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_14

    .line 591
    .end local v1    # "initHeight":I
    .end local v2    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_39
    if-lez v0, :cond_6c

    .line 592
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 593
    .local v3, "initRight":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v3, :cond_48

    .line 594
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, p4, v6

    .line 595
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->addRightChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_14

    .line 597
    :cond_48
    iget v1, v3, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    .line 599
    .restart local v1    # "initHeight":I
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->add(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 600
    const/4 v6, 0x0

    aget v6, p4, v6

    if-nez v6, :cond_5b

    .line 601
    iget v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 603
    :cond_5b
    iget-wide v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v8, p3

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 604
    iget-object v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iget v6, v6, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    if-eq v6, v1, :cond_14

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_14

    .line 608
    .end local v1    # "initHeight":I
    .end local v3    # "initRight":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_6c
    const/4 v6, 0x0

    iget v7, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    aput v7, p4, v6

    .line 609
    iget v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    int-to-long v6, v6

    int-to-long v8, p3

    add-long v4, v6, v8

    .line 610
    .local v4, "resultCount":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-gtz v6, :cond_8e

    const/4 v6, 0x1

    :goto_7f
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 611
    iget v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    add-int/2addr v6, p3

    iput v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    .line 612
    iget-wide v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v8, p3

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    goto :goto_14

    .line 610
    :cond_8e
    const/4 v6, 0x0

    goto :goto_7f
.end method

.method public count(Ljava/util/Comparator;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    .line 543
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    invoke-interface {p1, p2, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 544
    .local v0, "cmp":I
    if-gez v0, :cond_15

    .line 545
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v2, :cond_e

    .line 549
    :cond_d
    :goto_d
    return v1

    .line 545
    :cond_e
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->count(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v1

    goto :goto_d

    .line 546
    :cond_15
    if-lez v0, :cond_22

    .line 547
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-eqz v2, :cond_d

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->count(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v1

    goto :goto_d

    .line 549
    :cond_22
    iget v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    goto :goto_d
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 926
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 921
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    return-object v0
.end method

.method remove(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 14
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "count"    # I
    .param p4, "result"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;I[I)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    const/4 v8, 0x0

    .line 617
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    invoke-interface {p1, p2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 618
    .local v0, "cmp":I
    if-gez v0, :cond_3c

    .line 619
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 620
    .local v1, "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v1, :cond_10

    .line 621
    aput v8, p4, v8

    .line 663
    .end local v1    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .end local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_f
    :goto_f
    return-object p0

    .line 625
    .restart local v1    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .restart local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_10
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->remove(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 627
    aget v3, p4, v8

    if-lez v3, :cond_2c

    .line 628
    aget v3, p4, v8

    if-lt p3, v3, :cond_35

    .line 629
    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 630
    iget-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    aget v3, p4, v8

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 635
    :cond_2c
    :goto_2c
    aget v3, p4, v8

    if-eqz v3, :cond_f

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_f

    .line 632
    :cond_35
    iget-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v6, p3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    goto :goto_2c

    .line 636
    .end local v1    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_3c
    if-lez v0, :cond_6d

    .line 637
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 638
    .local v2, "initRight":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v2, :cond_45

    .line 639
    aput v8, p4, v8

    goto :goto_f

    .line 643
    :cond_45
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->remove(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 645
    aget v3, p4, v8

    if-lez v3, :cond_61

    .line 646
    aget v3, p4, v8

    if-lt p3, v3, :cond_66

    .line 647
    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 648
    iget-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    aget v3, p4, v8

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 653
    :cond_61
    :goto_61
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_f

    .line 650
    :cond_66
    iget-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v6, p3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    goto :goto_61

    .line 657
    .end local v2    # "initRight":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_6d
    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    aput v3, p4, v8

    .line 658
    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    if-lt p3, v3, :cond_7a

    .line 659
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->deleteMe()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_f

    .line 661
    :cond_7a
    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    sub-int/2addr v3, p3

    iput v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    .line 662
    iget-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v6, p3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    goto :goto_f
.end method

.method setCount(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 15
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "expectedCount"    # I
    .param p4, "newCount"    # I
    .param p5, "result"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;II[I)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    const/4 v8, 0x0

    .line 721
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    invoke-interface {p1, p2, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    .line 722
    .local v7, "cmp":I
    if-gez v7, :cond_4f

    .line 723
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 724
    .local v0, "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v0, :cond_18

    .line 725
    aput v8, p5, v8

    .line 726
    if-nez p3, :cond_17

    if-lez p4, :cond_17

    .line 727
    invoke-direct {p0, p2, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->addLeftChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    .line 775
    .end local v0    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .end local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_17
    :goto_17
    return-object p0

    .restart local v0    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .restart local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_18
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 732
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/TreeMultiset$AvlNode;->setCount(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 734
    aget v2, p5, v8

    if-ne v2, p3, :cond_3d

    .line 735
    if-nez p4, :cond_42

    aget v2, p5, v8

    if-eqz v2, :cond_42

    .line 736
    iget v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 740
    :cond_33
    :goto_33
    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    aget v4, p5, v8

    sub-int v4, p4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 742
    :cond_3d
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_17

    .line 737
    :cond_42
    if-lez p4, :cond_33

    aget v2, p5, v8

    if-nez v2, :cond_33

    .line 738
    iget v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    goto :goto_33

    .line 743
    .end local v0    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_4f
    if-lez v7, :cond_97

    .line 744
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 745
    .local v1, "initRight":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v1, :cond_60

    .line 746
    aput v8, p5, v8

    .line 747
    if-nez p3, :cond_17

    if-lez p4, :cond_17

    .line 748
    invoke-direct {p0, p2, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->addRightChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_17

    :cond_60
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 753
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/collect/TreeMultiset$AvlNode;->setCount(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 755
    aget v2, p5, v8

    if-ne v2, p3, :cond_85

    .line 756
    if-nez p4, :cond_8a

    aget v2, p5, v8

    if-eqz v2, :cond_8a

    .line 757
    iget v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 761
    :cond_7b
    :goto_7b
    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    aget v4, p5, v8

    sub-int v4, p4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 763
    :cond_85
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_17

    .line 758
    :cond_8a
    if-lez p4, :cond_7b

    aget v2, p5, v8

    if-nez v2, :cond_7b

    .line 759
    iget v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    goto :goto_7b

    .line 767
    .end local v1    # "initRight":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_97
    iget v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    aput v2, p5, v8

    .line 768
    iget v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    if-ne p3, v2, :cond_17

    .line 769
    if-nez p4, :cond_a7

    .line 770
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->deleteMe()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto/16 :goto_17

    .line 772
    :cond_a7
    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    iget v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    sub-int v4, p4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 773
    iput p4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    goto/16 :goto_17
.end method

.method setCount(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .registers 13
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "count"    # I
    .param p4, "result"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;I[I)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 668
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    invoke-interface {p1, p2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 669
    .local v0, "cmp":I
    if-gez v0, :cond_44

    .line 670
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 671
    .local v1, "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v1, :cond_16

    .line 672
    aput v6, p4, v6

    .line 673
    if-lez p3, :cond_15

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->addLeftChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    .line 712
    .end local v1    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .end local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_15
    :goto_15
    return-object p0

    .line 676
    .restart local v1    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .restart local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_16
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->setCount(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 678
    if-nez p3, :cond_37

    aget v3, p4, v6

    if-eqz v3, :cond_37

    .line 679
    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 684
    :cond_28
    :goto_28
    iget-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    aget v3, p4, v6

    sub-int v3, p3, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 685
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_15

    .line 680
    :cond_37
    if-lez p3, :cond_28

    aget v3, p4, v6

    if-nez v3, :cond_28

    .line 681
    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    goto :goto_28

    .line 686
    .end local v1    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_44
    if-lez v0, :cond_81

    .line 687
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 688
    .local v2, "initRight":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v2, :cond_53

    .line 689
    aput v6, p4, v6

    .line 690
    if-lez p3, :cond_15

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->addRightChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_15

    .line 693
    :cond_53
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->setCount(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 695
    if-nez p3, :cond_74

    aget v3, p4, v6

    if-eqz v3, :cond_74

    .line 696
    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 701
    :cond_65
    :goto_65
    iget-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    aget v3, p4, v6

    sub-int v3, p3, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 702
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_15

    .line 697
    :cond_74
    if-lez p3, :cond_65

    aget v3, p4, v6

    if-nez v3, :cond_65

    .line 698
    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    goto :goto_65

    .line 706
    .end local v2    # "initRight":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_81
    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    aput v3, p4, v6

    .line 707
    if-nez p3, :cond_8c

    .line 708
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->deleteMe()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_15

    .line 710
    :cond_8c
    iget-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    sub-int v3, p3, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 711
    iput p3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    goto/16 :goto_15
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 931
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
