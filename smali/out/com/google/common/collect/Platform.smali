.class Lcom/google/common/collect/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method static mapsAsMapSortedSet(Ljava/util/SortedSet;Lcom/google/common/base/Function;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TK;>;",
            "Lcom/google/common/base/Function",
            "<-TK;TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TK;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;TV;>;"
    instance-of v0, p0, Ljava/util/NavigableSet;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/util/NavigableSet;

    .end local p0    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TK;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/NavigableSet;Lcom/google/common/base/Function;)Ljava/util/NavigableMap;

    move-result-object v0

    :goto_a
    return-object v0

    .restart local p0    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TK;>;"
    :cond_b
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->asMapSortedIgnoreNavigable(Ljava/util/SortedSet;Lcom/google/common/base/Function;)Ljava/util/SortedMap;

    move-result-object v0

    goto :goto_a
.end method

.method static mapsFilterSortedMap(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v0, p0, Ljava/util/NavigableMap;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/util/NavigableMap;

    .end local p0    # "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lcom/google/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    :goto_a
    return-object v0

    .restart local p0    # "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    :cond_b
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->filterSortedIgnoreNavigable(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    goto :goto_a
.end method

.method static mapsTransformEntriesSortedMap(Ljava/util/SortedMap;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV1;>;",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    .local p1, "transformer":Lcom/google/common/collect/Maps$EntryTransformer;, "Lcom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    instance-of v0, p0, Ljava/util/NavigableMap;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/util/NavigableMap;

    .end local p0    # "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->transformEntries(Ljava/util/NavigableMap;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/NavigableMap;

    move-result-object v0

    :goto_a
    return-object v0

    .restart local p0    # "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    :cond_b
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->transformEntriesIgnoreNavigable(Ljava/util/SortedMap;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object v0

    goto :goto_a
.end method

.method static newArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 5
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "reference":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 59
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 60
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    return-object v0
.end method

.method static setsFilterSortedSet(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Lcom/google/common/base/Predicate",
            "<-TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    instance-of v0, p0, Ljava/util/NavigableSet;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/util/NavigableSet;

    .end local p0    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->filter(Ljava/util/NavigableSet;Lcom/google/common/base/Predicate;)Ljava/util/NavigableSet;

    move-result-object v0

    :goto_a
    return-object v0

    .restart local p0    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    :cond_b
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->filterSortedIgnoreNavigable(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)Ljava/util/SortedSet;

    move-result-object v0

    goto :goto_a
.end method

.method static tryWeakKeys(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker;
    .registers 2
    .param p0, "mapMaker"    # Lcom/google/common/collect/MapMaker;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->weakKeys()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method
