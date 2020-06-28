.class public Lgnu/math/BaseUnit;
.super Lgnu/math/NamedUnit;
.source "BaseUnit.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static base_count:I = 0x0

.field private static final unitName:Ljava/lang/String; = "(name)"


# instance fields
.field dimension:Ljava/lang/String;

.field index:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput v0, Lgnu/math/BaseUnit;->base_count:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Lgnu/math/NamedUnit;-><init>()V

    .line 47
    const-string v0, "(name)"

    iput-object v0, p0, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    .line 48
    const v0, 0x7fffffff

    iput v0, p0, Lgnu/math/BaseUnit;->index:I

    .line 49
    sget-object v0, Lgnu/math/Dimensions;->Empty:Lgnu/math/Dimensions;

    iput-object v0, p0, Lgnu/math/BaseUnit;->dims:Lgnu/math/Dimensions;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Lgnu/math/NamedUnit;-><init>()V

    .line 90
    iput-object p1, p0, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lgnu/math/BaseUnit;->init()V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dimension"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Lgnu/math/NamedUnit;-><init>()V

    .line 96
    iput-object p1, p0, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lgnu/math/BaseUnit;->init()V

    .line 99
    return-void
.end method

.method public static compare(Lgnu/math/BaseUnit;Lgnu/math/BaseUnit;)I
    .registers 7
    .param p0, "unit1"    # Lgnu/math/BaseUnit;
    .param p1, "unit2"    # Lgnu/math/BaseUnit;

    .prologue
    .line 136
    iget-object v3, p0, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    iget-object v4, p1, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, "code":I
    if-eqz v0, :cond_b

    .line 147
    .end local v0    # "code":I
    :goto_a
    return v0

    .line 139
    .restart local v0    # "code":I
    :cond_b
    iget-object v1, p0, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    .line 140
    .local v1, "dim1":Ljava/lang/String;
    iget-object v2, p1, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    .line 141
    .local v2, "dim2":Ljava/lang/String;
    if-ne v1, v2, :cond_13

    .line 142
    const/4 v0, 0x0

    goto :goto_a

    .line 143
    :cond_13
    if-nez v1, :cond_17

    .line 144
    const/4 v0, -0x1

    goto :goto_a

    .line 145
    :cond_17
    if-nez v2, :cond_1b

    .line 146
    const/4 v0, 0x1

    goto :goto_a

    .line 147
    :cond_1b
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_a
.end method

.method public static lookup(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;
    .registers 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "dimension"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 112
    const-string v4, "(name)"

    if-ne p0, v4, :cond_d

    if-nez p1, :cond_d

    .line 113
    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    .line 125
    :cond_c
    :goto_c
    return-object v0

    .line 114
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 115
    .local v1, "hash":I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    sget-object v5, Lgnu/math/BaseUnit;->table:[Lgnu/math/NamedUnit;

    array-length v5, v5

    rem-int v2, v4, v5

    .line 116
    .local v2, "index":I
    sget-object v4, Lgnu/math/BaseUnit;->table:[Lgnu/math/NamedUnit;

    aget-object v3, v4, v2

    .local v3, "unit":Lgnu/math/NamedUnit;
    :goto_1e
    if-eqz v3, :cond_32

    .line 118
    iget-object v4, v3, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    if-ne v4, p0, :cond_2f

    instance-of v4, v3, Lgnu/math/BaseUnit;

    if-eqz v4, :cond_2f

    move-object v0, v3

    .line 120
    check-cast v0, Lgnu/math/BaseUnit;

    .line 121
    .local v0, "bunit":Lgnu/math/BaseUnit;
    iget-object v4, v0, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    if-eq v4, p1, :cond_c

    .line 116
    .end local v0    # "bunit":Lgnu/math/BaseUnit;
    :cond_2f
    iget-object v3, v3, Lgnu/math/NamedUnit;->chain:Lgnu/math/NamedUnit;

    goto :goto_1e

    .line 125
    :cond_32
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "dimension"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {p0, p1}, Lgnu/math/BaseUnit;->lookup(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;

    move-result-object v0

    .line 131
    .local v0, "old":Lgnu/math/BaseUnit;
    if-nez v0, :cond_b

    new-instance v0, Lgnu/math/BaseUnit;

    .end local v0    # "old":Lgnu/math/BaseUnit;
    invoke-direct {v0, p0, p1}, Lgnu/math/BaseUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-object v0
.end method


# virtual methods
.method public getDimension()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected init()V
    .registers 3

    .prologue
    .line 54
    iput-object p0, p0, Lgnu/math/BaseUnit;->base:Lgnu/math/Unit;

    .line 55
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lgnu/math/BaseUnit;->scale:D

    .line 56
    new-instance v0, Lgnu/math/Dimensions;

    invoke-direct {v0, p0}, Lgnu/math/Dimensions;-><init>(Lgnu/math/BaseUnit;)V

    iput-object v0, p0, Lgnu/math/BaseUnit;->dims:Lgnu/math/Dimensions;

    .line 57
    invoke-super {p0}, Lgnu/math/NamedUnit;->init()V

    .line 59
    sget v0, Lgnu/math/BaseUnit;->base_count:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lgnu/math/BaseUnit;->base_count:I

    iput v0, p0, Lgnu/math/BaseUnit;->index:I

    .line 86
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    .line 166
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v1, p0, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    iget-object v2, p0, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    invoke-static {v1, v2}, Lgnu/math/BaseUnit;->lookup(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;

    move-result-object v0

    .line 172
    .local v0, "unit":Lgnu/math/BaseUnit;
    if-eqz v0, :cond_b

    .line 175
    .end local v0    # "unit":Lgnu/math/BaseUnit;
    :goto_a
    return-object v0

    .line 174
    .restart local v0    # "unit":Lgnu/math/BaseUnit;
    :cond_b
    invoke-virtual {p0}, Lgnu/math/BaseUnit;->init()V

    move-object v0, p0

    .line 175
    goto :goto_a
.end method

.method public unit()Lgnu/math/Unit;
    .registers 1

    .prologue
    .line 103
    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lgnu/math/BaseUnit;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lgnu/math/BaseUnit;->dimension:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 160
    return-void
.end method
