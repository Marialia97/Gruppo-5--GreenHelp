.class Lcom/google/common/collect/ImmutableBiMap$SerializedForm;
.super Lcom/google/common/collect/ImmutableMap$SerializedForm;
.source "ImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableBiMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableBiMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "bimap":Lcom/google/common/collect/ImmutableBiMap;, "Lcom/google/common/collect/ImmutableBiMap<**>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMap$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    .line 276
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 278
    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;-><init>()V

    .line 279
    .local v0, "builder":Lcom/google/common/collect/ImmutableBiMap$Builder;, "Lcom/google/common/collect/ImmutableBiMap$Builder<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableBiMap$SerializedForm;->createMap(Lcom/google/common/collect/ImmutableMap$Builder;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
