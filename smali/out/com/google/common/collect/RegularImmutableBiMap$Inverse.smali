.class final Lcom/google/common/collect/RegularImmutableBiMap$Inverse;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Inverse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableBiMap",
        "<TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/RegularImmutableBiMap;)V
    .registers 2

    .prologue
    .line 204
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap$Inverse;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 236
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/RegularImmutableBiMap;Lcom/google/common/collect/RegularImmutableBiMap$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/RegularImmutableBiMap;
    .param p2, "x1"    # Lcom/google/common/collect/RegularImmutableBiMap$1;

    .prologue
    .line 204
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap$Inverse;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;-><init>(Lcom/google/common/collect/RegularImmutableBiMap;)V

    return-void
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;>;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap$Inverse;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;-><init>(Lcom/google/common/collect/RegularImmutableBiMap$Inverse;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap$Inverse;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    const/4 v2, 0x0

    .line 218
    if-nez p1, :cond_4

    .line 228
    :cond_3
    :goto_3
    return-object v2

    .line 221
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-static {v4}, Lcom/google/common/collect/RegularImmutableBiMap;->access$300(Lcom/google/common/collect/RegularImmutableBiMap;)I

    move-result v4

    and-int v0, v3, v4

    .line 222
    .local v0, "bucket":I
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-static {v3}, Lcom/google/common/collect/RegularImmutableBiMap;->access$400(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    move-result-object v3

    aget-object v1, v3, v0

    .local v1, "entry":Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;, "Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry<TK;TV;>;"
    :goto_1c
    if-eqz v1, :cond_3

    .line 224
    invoke-virtual {v1}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 225
    invoke-virtual {v1}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 223
    :cond_2d
    invoke-virtual {v1}, Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;->getNextInVToKBucket()Lcom/google/common/collect/RegularImmutableBiMap$BiMapEntry;

    move-result-object v1

    goto :goto_1c
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .registers 2

    .prologue
    .line 204
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap$Inverse;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/ImmutableBiMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap$Inverse;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    return-object v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 276
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap$Inverse;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 208
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap$Inverse;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 281
    .local p0, "this":Lcom/google/common/collect/RegularImmutableBiMap$Inverse;, "Lcom/google/common/collect/RegularImmutableBiMap<TK;TV;>.Inverse;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;-><init>(Lcom/google/common/collect/ImmutableBiMap;)V

    return-object v0
.end method
