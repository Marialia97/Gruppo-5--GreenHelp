.class public Lgnu/mapping/InheritingEnvironment;
.super Lgnu/mapping/SimpleEnvironment;
.source "InheritingEnvironment.java"


# instance fields
.field baseTimestamp:I

.field inherited:[Lgnu/mapping/Environment;

.field namespaceMap:[Lgnu/mapping/Namespace;

.field numInherited:I

.field propertyMap:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgnu/mapping/Environment;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parent"    # Lgnu/mapping/Environment;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lgnu/mapping/SimpleEnvironment;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p2}, Lgnu/mapping/InheritingEnvironment;->addParent(Lgnu/mapping/Environment;)V

    .line 18
    instance-of v1, p2, Lgnu/mapping/SimpleEnvironment;

    if-eqz v1, :cond_16

    .line 20
    check-cast p2, Lgnu/mapping/SimpleEnvironment;

    .end local p2    # "parent":Lgnu/mapping/Environment;
    iget v1, p2, Lgnu/mapping/SimpleEnvironment;->currentTimestamp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p2, Lgnu/mapping/SimpleEnvironment;->currentTimestamp:I

    .line 21
    .local v0, "timestamp":I
    iput v0, p0, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    .line 22
    iput v0, p0, Lgnu/mapping/InheritingEnvironment;->currentTimestamp:I

    .line 24
    .end local v0    # "timestamp":I
    :cond_16
    return-void
.end method


# virtual methods
.method public addParent(Lgnu/mapping/Environment;)V
    .registers 6
    .param p1, "env"    # Lgnu/mapping/Environment;

    .prologue
    const/4 v3, 0x0

    .line 31
    iget v1, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    if-nez v1, :cond_17

    .line 32
    const/4 v1, 0x4

    new-array v1, v1, [Lgnu/mapping/Environment;

    iput-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    .line 40
    :cond_a
    :goto_a
    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    iget v2, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    aput-object p1, v1, v2

    .line 41
    iget v1, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    .line 42
    return-void

    .line 33
    :cond_17
    iget v1, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    iget-object v2, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    array-length v2, v2

    if-gt v1, v2, :cond_a

    .line 35
    iget v1, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lgnu/mapping/Environment;

    .line 37
    .local v0, "newInherited":[Lgnu/mapping/Environment;
    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    iget v2, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iput-object v0, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    goto :goto_a
.end method

.method public enumerateAllLocations()Lgnu/mapping/LocationEnumeration;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 128
    new-instance v0, Lgnu/mapping/LocationEnumeration;

    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->table:[Lgnu/mapping/NamedLocation;

    const/4 v2, 0x1

    iget v3, p0, Lgnu/mapping/InheritingEnvironment;->log2Size:I

    shl-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lgnu/mapping/LocationEnumeration;-><init>([Lgnu/mapping/NamedLocation;I)V

    .line 129
    .local v0, "it":Lgnu/mapping/LocationEnumeration;
    iput-object p0, v0, Lgnu/mapping/LocationEnumeration;->env:Lgnu/mapping/SimpleEnvironment;

    .line 130
    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    array-length v1, v1

    if-lez v1, :cond_23

    .line 132
    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lgnu/mapping/Environment;->enumerateAllLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v1

    iput-object v1, v0, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    .line 133
    iput v4, v0, Lgnu/mapping/LocationEnumeration;->index:I

    .line 135
    :cond_23
    return-object v0
.end method

.method public declared-synchronized getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;
    .registers 11
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I
    .param p4, "create"    # Z

    .prologue
    const/4 v3, 0x0

    .line 94
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/InheritingEnvironment;->lookupDirect(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v1

    .line 95
    .local v1, "loc":Lgnu/mapping/NamedLocation;
    if-eqz v1, :cond_13

    if-nez p4, :cond_10

    invoke-virtual {v1}, Lgnu/mapping/NamedLocation;->isBound()Z
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_55

    move-result v4

    if-eqz v4, :cond_13

    :cond_10
    move-object v2, v1

    .line 123
    :cond_11
    :goto_11
    monitor-exit p0

    return-object v2

    .line 97
    :cond_13
    :try_start_13
    iget v4, p0, Lgnu/mapping/InheritingEnvironment;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_58

    if-eqz p4, :cond_58

    .line 98
    iget-object v4, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v4, p1, p2, p3, v5}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;

    move-result-object v1

    .line 102
    :goto_25
    if-eqz v1, :cond_6e

    .line 104
    if-eqz p4, :cond_6c

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/InheritingEnvironment;->addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v2

    .line 107
    .local v2, "xloc":Lgnu/mapping/NamedLocation;
    iget v3, p0, Lgnu/mapping/InheritingEnvironment;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_3c

    invoke-virtual {v1}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 108
    invoke-virtual {p0, p1, p2, v2}, Lgnu/mapping/InheritingEnvironment;->redefineError(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V

    .line 109
    :cond_3c
    iput-object v1, v2, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 110
    iget-object v3, v1, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    sget-object v4, Lgnu/mapping/IndirectableLocation;->INDIRECT_FLUIDS:Ljava/lang/Object;

    if-ne v3, v4, :cond_5d

    .line 111
    iget-object v3, v1, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    iput-object v3, v2, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 116
    :goto_48
    instance-of v3, v2, Lgnu/mapping/SharedLocation;

    if-eqz v3, :cond_11

    .line 117
    move-object v0, v2

    check-cast v0, Lgnu/mapping/SharedLocation;

    move-object v3, v0

    iget v4, p0, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    iput v4, v3, Lgnu/mapping/SharedLocation;->timestamp:I
    :try_end_54
    .catchall {:try_start_13 .. :try_end_54} :catchall_55

    goto :goto_11

    .line 94
    .end local v1    # "loc":Lgnu/mapping/NamedLocation;
    .end local v2    # "xloc":Lgnu/mapping/NamedLocation;
    :catchall_55
    move-exception v3

    monitor-exit p0

    throw v3

    .line 100
    .restart local v1    # "loc":Lgnu/mapping/NamedLocation;
    :cond_58
    :try_start_58
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/InheritingEnvironment;->lookupInherited(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v1

    goto :goto_25

    .line 112
    .restart local v2    # "xloc":Lgnu/mapping/NamedLocation;
    :cond_5d
    iget v3, p0, Lgnu/mapping/InheritingEnvironment;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_68

    .line 113
    sget-object v3, Lgnu/mapping/IndirectableLocation;->DIRECT_ON_SET:Ljava/lang/Object;

    iput-object v3, v2, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    goto :goto_48

    .line 115
    :cond_68
    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    goto :goto_48

    .end local v2    # "xloc":Lgnu/mapping/NamedLocation;
    :cond_6c
    move-object v2, v1

    .line 121
    goto :goto_11

    .line 123
    :cond_6e
    if-eqz p4, :cond_74

    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/InheritingEnvironment;->addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    :try_end_73
    .catchall {:try_start_58 .. :try_end_73} :catchall_55

    move-result-object v3

    :cond_74
    move-object v2, v3

    goto :goto_11
.end method

.method public final getNumParents()I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    return v0
.end method

.method public final getParent(I)Lgnu/mapping/Environment;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 27
    iget-object v0, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z
    .registers 7
    .param p1, "it"    # Lgnu/mapping/LocationEnumeration;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 140
    iget-object v2, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    if-eqz v2, :cond_31

    .line 144
    :goto_6
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 147
    .local v0, "loc":Lgnu/mapping/NamedLocation;
    :goto_8
    iget-object v2, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    iput-object v0, v2, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 148
    iget-object v2, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    invoke-virtual {v2}, Lgnu/mapping/LocationEnumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_36

    .line 150
    iput-object v4, p1, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    .line 151
    iget-object v2, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    iget-object v2, v2, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    iput-object v2, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 162
    iget v2, p1, Lgnu/mapping/LocationEnumeration;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lgnu/mapping/LocationEnumeration;->index:I

    iget v3, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    if-ne v2, v3, :cond_4a

    .line 166
    iput-object v4, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    .line 167
    iget-object v2, p0, Lgnu/mapping/InheritingEnvironment;->table:[Lgnu/mapping/NamedLocation;

    iput-object v2, p1, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    .line 168
    iget v2, p0, Lgnu/mapping/InheritingEnvironment;->log2Size:I

    shl-int/2addr v1, v2

    iput v1, p1, Lgnu/mapping/LocationEnumeration;->index:I

    .line 170
    .end local v0    # "loc":Lgnu/mapping/NamedLocation;
    :cond_31
    invoke-super {p0, p1}, Lgnu/mapping/SimpleEnvironment;->hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z

    move-result v1

    :goto_35
    return v1

    .line 154
    .restart local v0    # "loc":Lgnu/mapping/NamedLocation;
    :cond_36
    iget-object v2, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    iget-object v0, v2, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 155
    iget-object v2, v0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    iget-object v3, v0, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lgnu/mapping/InheritingEnvironment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v2

    if-ne v2, v0, :cond_47

    .line 157
    iput-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    goto :goto_35

    .line 160
    :cond_47
    iget-object v0, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    goto :goto_8

    .line 164
    :cond_4a
    iget-object v2, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    iget v3, p1, Lgnu/mapping/LocationEnumeration;->index:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lgnu/mapping/Environment;->enumerateAllLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v2

    iput-object v2, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    goto :goto_6
.end method

.method public lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .registers 6
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/SimpleEnvironment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v0

    .line 86
    .local v0, "loc":Lgnu/mapping/NamedLocation;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 88
    .end local v0    # "loc":Lgnu/mapping/NamedLocation;
    :goto_c
    return-object v0

    .restart local v0    # "loc":Lgnu/mapping/NamedLocation;
    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/InheritingEnvironment;->lookupInherited(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v0

    goto :goto_c
.end method

.method public lookupInherited(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .registers 14
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I

    .prologue
    .line 46
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v8, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    if-ge v2, v8, :cond_73

    .line 48
    move-object v7, p1

    .line 49
    .local v7, "sym":Lgnu/mapping/Symbol;
    move-object v4, p2

    .line 50
    .local v4, "prop":Ljava/lang/Object;
    iget-object v8, p0, Lgnu/mapping/InheritingEnvironment;->namespaceMap:[Lgnu/mapping/Namespace;

    if-eqz v8, :cond_35

    iget-object v8, p0, Lgnu/mapping/InheritingEnvironment;->namespaceMap:[Lgnu/mapping/Namespace;

    array-length v8, v8

    mul-int/lit8 v9, v2, 0x2

    if-le v8, v9, :cond_35

    .line 52
    iget-object v8, p0, Lgnu/mapping/InheritingEnvironment;->namespaceMap:[Lgnu/mapping/Namespace;

    mul-int/lit8 v9, v2, 0x2

    aget-object v5, v8, v9

    .line 53
    .local v5, "srcNamespace":Lgnu/mapping/Namespace;
    iget-object v8, p0, Lgnu/mapping/InheritingEnvironment;->namespaceMap:[Lgnu/mapping/Namespace;

    mul-int/lit8 v9, v2, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-object v0, v8, v9

    .line 54
    .local v0, "dstNamespace":Lgnu/mapping/Namespace;
    if-nez v5, :cond_24

    if-eqz v0, :cond_35

    .line 56
    :cond_24
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v8

    if-eq v8, v0, :cond_2d

    .line 46
    .end local v0    # "dstNamespace":Lgnu/mapping/Namespace;
    .end local v5    # "srcNamespace":Lgnu/mapping/Namespace;
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 58
    .restart local v0    # "dstNamespace":Lgnu/mapping/Namespace;
    .restart local v5    # "srcNamespace":Lgnu/mapping/Namespace;
    :cond_2d
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v7

    .line 61
    .end local v0    # "dstNamespace":Lgnu/mapping/Namespace;
    .end local v5    # "srcNamespace":Lgnu/mapping/Namespace;
    :cond_35
    iget-object v8, p0, Lgnu/mapping/InheritingEnvironment;->propertyMap:[Ljava/lang/Object;

    if-eqz v8, :cond_55

    iget-object v8, p0, Lgnu/mapping/InheritingEnvironment;->propertyMap:[Ljava/lang/Object;

    array-length v8, v8

    mul-int/lit8 v9, v2, 0x2

    if-le v8, v9, :cond_55

    .line 63
    iget-object v8, p0, Lgnu/mapping/InheritingEnvironment;->propertyMap:[Ljava/lang/Object;

    mul-int/lit8 v9, v2, 0x2

    aget-object v6, v8, v9

    .line 64
    .local v6, "srcProperty":Ljava/lang/Object;
    iget-object v8, p0, Lgnu/mapping/InheritingEnvironment;->propertyMap:[Ljava/lang/Object;

    mul-int/lit8 v9, v2, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-object v1, v8, v9

    .line 65
    .local v1, "dstProperty":Ljava/lang/Object;
    if-nez v6, :cond_52

    if-eqz v1, :cond_55

    .line 67
    :cond_52
    if-ne p2, v1, :cond_2a

    .line 69
    move-object v4, v6

    .line 72
    .end local v1    # "dstProperty":Ljava/lang/Object;
    .end local v6    # "srcProperty":Ljava/lang/Object;
    :cond_55
    iget-object v8, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    aget-object v8, v8, v2

    invoke-virtual {v8, v7, v4, p3}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v3

    .line 73
    .local v3, "loc":Lgnu/mapping/NamedLocation;
    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 75
    instance-of v8, v3, Lgnu/mapping/SharedLocation;

    if-eqz v8, :cond_72

    move-object v8, v3

    check-cast v8, Lgnu/mapping/SharedLocation;

    iget v8, v8, Lgnu/mapping/SharedLocation;->timestamp:I

    iget v9, p0, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    if-ge v8, v9, :cond_2a

    .line 80
    .end local v3    # "loc":Lgnu/mapping/NamedLocation;
    .end local v4    # "prop":Ljava/lang/Object;
    .end local v7    # "sym":Lgnu/mapping/Symbol;
    :cond_72
    :goto_72
    return-object v3

    :cond_73
    const/4 v3, 0x0

    goto :goto_72
.end method

.method protected toStringBase(Ljava/lang/StringBuffer;)V
    .registers 4
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 175
    const-string v1, " baseTs:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    iget v1, p0, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget v1, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    if-ge v0, v1, :cond_22

    .line 179
    const-string v1, " base:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lgnu/mapping/Environment;->toStringVerbose()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 182
    :cond_22
    return-void
.end method
