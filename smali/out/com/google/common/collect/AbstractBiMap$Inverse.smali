.class Lcom/google/common/collect/AbstractBiMap$Inverse;
.super Lcom/google/common/collect/AbstractBiMap;
.source "AbstractBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Inverse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractBiMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Not needed in emulated source."
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/common/collect/AbstractBiMap",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$Inverse;, "Lcom/google/common/collect/AbstractBiMap$Inverse<TK;TV;>;"
    .local p1, "backward":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "forward":Lcom/google/common/collect/AbstractBiMap;, "Lcom/google/common/collect/AbstractBiMap<TV;TK;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/AbstractBiMap;-><init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V

    .line 355
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Lcom/google/common/collect/AbstractBiMap;
    .param p3, "x2"    # Lcom/google/common/collect/AbstractBiMap$1;

    .prologue
    .line 352
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$Inverse;, "Lcom/google/common/collect/AbstractBiMap$Inverse<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractBiMap$Inverse;-><init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectInputStream"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$Inverse;, "Lcom/google/common/collect/AbstractBiMap$Inverse<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 390
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractBiMap$Inverse;->setInverse(Lcom/google/common/collect/AbstractBiMap;)V

    .line 391
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectOuputStream"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$Inverse;, "Lcom/google/common/collect/AbstractBiMap$Inverse<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 382
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$Inverse;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 383
    return-void
.end method


# virtual methods
.method checkKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$Inverse;, "Lcom/google/common/collect/AbstractBiMap$Inverse<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$Inverse;->inverse:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/AbstractBiMap;->checkValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method checkValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$Inverse;, "Lcom/google/common/collect/AbstractBiMap$Inverse<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$Inverse;->inverse:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/AbstractBiMap;->checkKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 352
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$Inverse;, "Lcom/google/common/collect/AbstractBiMap$Inverse<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Not needed in the emulated source."
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$Inverse;, "Lcom/google/common/collect/AbstractBiMap$Inverse<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$Inverse;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 352
    .local p0, "this":Lcom/google/common/collect/AbstractBiMap$Inverse;, "Lcom/google/common/collect/AbstractBiMap$Inverse<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
