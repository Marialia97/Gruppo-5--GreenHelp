.class final Lcom/google/common/collect/HashBiMap$EntrySet;
.super Lcom/google/common/collect/Maps$EntrySet;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$EntrySet",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/HashBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .registers 2

    .prologue
    .line 430
    .local p0, "this":Lcom/google/common/collect/HashBiMap$EntrySet;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/HashBiMap;
    .param p2, "x1"    # Lcom/google/common/collect/HashBiMap$1;

    .prologue
    .line 430
    .local p0, "this":Lcom/google/common/collect/HashBiMap$EntrySet;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$EntrySet;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Lcom/google/common/collect/HashBiMap$EntrySet;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.EntrySet;"
    new-instance v0, Lcom/google/common/collect/HashBiMap$EntrySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$EntrySet$1;-><init>(Lcom/google/common/collect/HashBiMap$EntrySet;)V

    return-object v0
.end method

.method map()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "this":Lcom/google/common/collect/HashBiMap$EntrySet;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    return-object v0
.end method
