.class Lcom/google/common/reflect/TypeResolver;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/TypeResolver$WildcardCapturer;,
        Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;
    }
.end annotation


# instance fields
.field private final typeTable:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/collect/ImmutableMap;

    .line 58
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "typeTable":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/collect/ImmutableMap;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/reflect/TypeResolver$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/common/collect/ImmutableMap;
    .param p2, "x1"    # Lcom/google/common/reflect/TypeResolver$1;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method

.method static accordingTo(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver;
    .registers 3
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 65
    new-instance v0, Lcom/google/common/reflect/TypeResolver;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver;-><init>()V

    invoke-static {p0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->getTypeMappings(Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver;->where(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    return-object v0
.end method

.method private static varargs checkNonNullArgument(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "messageParams"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "arg":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 237
    return-object p0

    .line 236
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static expectArgument(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 243
    :catch_5
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .registers 20
    .param p1, "from"    # Ljava/lang/reflect/Type;
    .param p2, "to"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 148
    .end local p1    # "from":Ljava/lang/reflect/Type;
    :cond_6
    :goto_6
    return-void

    .line 111
    .restart local p1    # "from":Ljava/lang/reflect/Type;
    :cond_7
    move-object/from16 v0, p1

    instance-of v12, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v12, :cond_13

    .line 112
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .end local p1    # "from":Ljava/lang/reflect/Type;
    invoke-interface/range {p0 .. p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 113
    .restart local p1    # "from":Ljava/lang/reflect/Type;
    :cond_13
    move-object/from16 v0, p1

    instance-of v12, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v12, :cond_38

    .line 114
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .end local p1    # "from":Ljava/lang/reflect/Type;
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Lcom/google/common/reflect/Types;->getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v12

    const-string v14, "%s is not an array type."

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p2, v15, v16

    invoke-static {v12, v14, v15}, Lcom/google/common/reflect/TypeResolver;->checkNonNullArgument(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/reflect/Type;

    move-object/from16 v0, p0

    invoke-static {v0, v13, v12}, Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    goto :goto_6

    .line 117
    .restart local p1    # "from":Ljava/lang/reflect/Type;
    :cond_38
    move-object/from16 v0, p1

    instance-of v12, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v12, :cond_88

    move-object/from16 v3, p1

    .line 118
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 119
    .local v3, "fromParameterizedType":Ljava/lang/reflect/ParameterizedType;
    const-class v12, Ljava/lang/reflect/ParameterizedType;

    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/google/common/reflect/TypeResolver;->expectArgument(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    .line 120
    .local v9, "toParameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v12

    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "Inconsistent raw type: %s vs. %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    const/4 v15, 0x1

    aput-object p2, v14, v15

    invoke-static {v12, v13, v14}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 123
    .local v1, "fromArgs":[Ljava/lang/reflect/Type;
    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 124
    .local v7, "toArgs":[Ljava/lang/reflect/Type;
    array-length v12, v1

    array-length v13, v7

    if-ne v12, v13, :cond_86

    const/4 v12, 0x1

    :goto_73
    invoke-static {v12}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 125
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_77
    array-length v12, v1

    if-ge v6, v12, :cond_6

    .line 126
    aget-object v12, v1, v6

    aget-object v13, v7, v6

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 125
    add-int/lit8 v6, v6, 0x1

    goto :goto_77

    .line 124
    .end local v6    # "i":I
    :cond_86
    const/4 v12, 0x0

    goto :goto_73

    .line 128
    .end local v1    # "fromArgs":[Ljava/lang/reflect/Type;
    .end local v3    # "fromParameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v7    # "toArgs":[Ljava/lang/reflect/Type;
    .end local v9    # "toParameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_88
    move-object/from16 v0, p1

    instance-of v12, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v12, :cond_e5

    move-object/from16 v5, p1

    .line 129
    check-cast v5, Ljava/lang/reflect/WildcardType;

    .line 130
    .local v5, "fromWildcardType":Ljava/lang/reflect/WildcardType;
    const-class v12, Ljava/lang/reflect/WildcardType;

    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/google/common/reflect/TypeResolver;->expectArgument(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/WildcardType;

    .line 131
    .local v11, "toWildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 132
    .local v4, "fromUpperBounds":[Ljava/lang/reflect/Type;
    invoke-interface {v11}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v10

    .line 133
    .local v10, "toUpperBounds":[Ljava/lang/reflect/Type;
    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 134
    .local v2, "fromLowerBounds":[Ljava/lang/reflect/Type;
    invoke-interface {v11}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v8

    .line 135
    .local v8, "toLowerBounds":[Ljava/lang/reflect/Type;
    array-length v12, v4

    array-length v13, v10

    if-ne v12, v13, :cond_d3

    array-length v12, v2

    array-length v13, v8

    if-ne v12, v13, :cond_d3

    const/4 v12, 0x1

    :goto_b5
    const-string v13, "Incompatible type: %s vs. %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    const/4 v15, 0x1

    aput-object p2, v14, v15

    invoke-static {v12, v13, v14}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 139
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_c4
    array-length v12, v4

    if-ge v6, v12, :cond_d5

    .line 140
    aget-object v12, v4, v6

    aget-object v13, v10, v6

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 139
    add-int/lit8 v6, v6, 0x1

    goto :goto_c4

    .line 135
    .end local v6    # "i":I
    :cond_d3
    const/4 v12, 0x0

    goto :goto_b5

    .line 142
    .restart local v6    # "i":I
    :cond_d5
    const/4 v6, 0x0

    :goto_d6
    array-length v12, v2

    if-ge v6, v12, :cond_6

    .line 143
    aget-object v12, v2, v6

    aget-object v13, v8, v6

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 142
    add-int/lit8 v6, v6, 0x1

    goto :goto_d6

    .line 146
    .end local v2    # "fromLowerBounds":[Ljava/lang/reflect/Type;
    .end local v4    # "fromUpperBounds":[Ljava/lang/reflect/Type;
    .end local v5    # "fromWildcardType":Ljava/lang/reflect/WildcardType;
    .end local v6    # "i":I
    .end local v8    # "toLowerBounds":[Ljava/lang/reflect/Type;
    .end local v10    # "toUpperBounds":[Ljava/lang/reflect/Type;
    .end local v11    # "toWildcardType":Ljava/lang/reflect/WildcardType;
    :cond_e5
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No type mapping from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method private resolveGenericArrayType(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;
    .registers 4
    .param p1, "type"    # Ljava/lang/reflect/GenericArrayType;

    .prologue
    .line 182
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 183
    .local v0, "componentType":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lcom/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    return-object v1
.end method

.method private resolveParameterizedType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;
    .registers 9
    .param p1, "type"    # Ljava/lang/reflect/ParameterizedType;

    .prologue
    .line 222
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 223
    .local v1, "owner":Ljava/lang/reflect/Type;
    if-nez v1, :cond_25

    const/4 v3, 0x0

    .line 224
    .local v3, "resolvedOwner":Ljava/lang/reflect/Type;
    :goto_7
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 226
    .local v4, "resolvedRawType":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 227
    .local v5, "vars":[Ljava/lang/reflect/Type;
    array-length v6, v5

    new-array v2, v6, [Ljava/lang/reflect/Type;

    .line 228
    .local v2, "resolvedArgs":[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    array-length v6, v5

    if-ge v0, v6, :cond_2a

    .line 229
    aget-object v6, v5, v0

    invoke-virtual {p0, v6}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    aput-object v6, v2, v0

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 223
    .end local v0    # "i":I
    .end local v2    # "resolvedArgs":[Ljava/lang/reflect/Type;
    .end local v3    # "resolvedOwner":Ljava/lang/reflect/Type;
    .end local v4    # "resolvedRawType":Ljava/lang/reflect/Type;
    .end local v5    # "vars":[Ljava/lang/reflect/Type;
    :cond_25
    invoke-virtual {p0, v1}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_7

    .line 231
    .restart local v0    # "i":I
    .restart local v2    # "resolvedArgs":[Ljava/lang/reflect/Type;
    .restart local v3    # "resolvedOwner":Ljava/lang/reflect/Type;
    .restart local v4    # "resolvedRawType":Ljava/lang/reflect/Type;
    .restart local v5    # "vars":[Ljava/lang/reflect/Type;
    :cond_2a
    check-cast v4, Ljava/lang/Class;

    .end local v4    # "resolvedRawType":Ljava/lang/reflect/Type;
    invoke-static {v3, v4, v2}, Lcom/google/common/reflect/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v6

    return-object v6
.end method

.method private resolveTypeVariable(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    move-object v1, p0

    .line 188
    .local v1, "unguarded":Lcom/google/common/reflect/TypeResolver;
    new-instance v0, Lcom/google/common/reflect/TypeResolver$1;

    iget-object v2, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/google/common/reflect/TypeResolver$1;-><init>(Lcom/google/common/reflect/TypeResolver;Lcom/google/common/collect/ImmutableMap;Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver;)V

    .line 197
    .local v0, "guarded":Lcom/google/common/reflect/TypeResolver;
    invoke-virtual {p0, p1, v0}, Lcom/google/common/reflect/TypeResolver;->resolveTypeVariable(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver;)Ljava/lang/reflect/Type;

    move-result-object v2

    return-object v2
.end method

.method private resolveTypes([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .registers 5
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 174
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/reflect/Type;

    .line 175
    .local v1, "result":[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_12

    .line 176
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    aput-object v2, v1, v0

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 178
    :cond_12
    return-object v1
.end method


# virtual methods
.method public final resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 5
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 155
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_e

    .line 157
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;->resolveTypeVariable(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 169
    :cond_d
    :goto_d
    return-object p1

    .line 158
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_e
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_19

    .line 159
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;->resolveParameterizedType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    goto :goto_d

    .line 160
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_19
    instance-of v1, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_24

    .line 161
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;->resolveGenericArrayType(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_d

    .line 162
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_24
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_d

    move-object v0, p1

    .line 163
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 164
    .local v0, "wildcardType":Ljava/lang/reflect/WildcardType;
    new-instance p1, Lcom/google/common/reflect/Types$WildcardTypeImpl;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/common/reflect/TypeResolver;->resolveTypes([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/common/reflect/TypeResolver;->resolveTypes([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/common/reflect/Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    goto :goto_d
.end method

.method resolveTypeVariable(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver;)Ljava/lang/reflect/Type;
    .registers 8
    .param p2, "guardedResolver"    # Lcom/google/common/reflect/TypeResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Lcom/google/common/reflect/TypeResolver;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v2, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    .line 208
    .local v1, "type":Ljava/lang/reflect/Type;
    if-nez v1, :cond_26

    .line 209
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 210
    .local v0, "bounds":[Ljava/lang/reflect/Type;
    array-length v2, v0

    if-nez v2, :cond_15

    .line 218
    .end local v0    # "bounds":[Ljava/lang/reflect/Type;
    .end local p1    # "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :goto_14
    return-object p1

    .line 213
    .restart local v0    # "bounds":[Ljava/lang/reflect/Type;
    .restart local p1    # "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_15
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v0}, Lcom/google/common/reflect/TypeResolver;->resolveTypes([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/common/reflect/Types;->newTypeVariable(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    goto :goto_14

    .line 218
    .end local v0    # "bounds":[Ljava/lang/reflect/Type;
    :cond_26
    invoke-virtual {p2, v1}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_14
.end method

.method public final where(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver;
    .registers 6
    .param p1, "formal"    # Ljava/lang/reflect/Type;
    .param p2, "actual"    # Ljava/lang/reflect/Type;

    .prologue
    .line 88
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 89
    .local v0, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    invoke-static {v0, v1, v2}, Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver;->where(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v1

    return-object v1
.end method

.method final where(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;+",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lcom/google/common/reflect/TypeResolver;"
        }
    .end annotation

    .prologue
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/reflect/TypeVariable<*>;+Ljava/lang/reflect/Type;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 95
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 96
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    iget-object v5, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 97
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 98
    .local v2, "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/reflect/TypeVariable<*>;+Ljava/lang/reflect/Type;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/TypeVariable;

    .line 99
    .local v4, "variable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Type;

    .line 100
    .local v3, "type":Ljava/lang/reflect/Type;
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    move v5, v6

    :goto_32
    const-string v8, "Type variable %s bound to itself"

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v4, v9, v7

    invoke-static {v5, v8, v9}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v0, v4, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_13

    :cond_3f
    move v5, v7

    .line 100
    goto :goto_32

    .line 103
    .end local v2    # "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/reflect/TypeVariable<*>;+Ljava/lang/reflect/Type;>;"
    .end local v3    # "type":Ljava/lang/reflect/Type;
    .end local v4    # "variable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_41
    new-instance v5, Lcom/google/common/reflect/TypeResolver;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/common/reflect/TypeResolver;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v5
.end method
