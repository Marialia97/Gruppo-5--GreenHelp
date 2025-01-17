.class public Landroid/support/v4/graphics/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/PathParser$PathDataNode;,
        Landroid/support/v4/graphics/PathParser$ExtractFloatResult;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "PathParser"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    return-void
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .registers 4
    .param p1, "cmd"    # C
    .param p2, "val"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/graphics/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/graphics/PathParser$PathDataNode;>;"
    new-instance v0, Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/graphics/PathParser$PathDataNode;-><init>(C[F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    return-void
.end method

.method public static canMorph([Landroid/support/v4/graphics/PathParser$PathDataNode;[Landroid/support/v4/graphics/PathParser$PathDataNode;)Z
    .registers 6
    .param p0, "nodesFrom"    # [Landroid/support/v4/graphics/PathParser$PathDataNode;
    .param p1, "nodesTo"    # [Landroid/support/v4/graphics/PathParser$PathDataNode;

    .prologue
    const/4 v1, 0x0

    .line 137
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 151
    :cond_5
    :goto_5
    return v1

    .line 141
    :cond_6
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_5

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_27

    .line 146
    aget-object v2, p0, v0

    iget-char v2, v2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    aget-object v3, p1, v0

    iget-char v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    if-ne v2, v3, :cond_5

    aget-object v2, p0, v0

    iget-object v2, v2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v2, v2

    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v3, v3

    if-ne v2, v3, :cond_5

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 151
    :cond_27
    const/4 v1, 0x1

    goto :goto_5
.end method

.method static copyOfRange([FII)[F
    .registers 8
    .param p0, "original"    # [F
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 55
    if-le p1, p2, :cond_8

    .line 56
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 58
    :cond_8
    array-length v1, p0

    .line 59
    .local v1, "originalLength":I
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 60
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 62
    :cond_13
    sub-int v3, p2, p1

    .line 63
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 64
    .local v0, "copyLength":I
    new-array v2, v3, [F

    .line 65
    .local v2, "result":[F
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    return-object v2
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .registers 9
    .param p0, "pathData"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 92
    if-nez p0, :cond_5

    .line 93
    const/4 v5, 0x0

    .line 113
    :goto_4
    return-object v5

    .line 95
    :cond_5
    const/4 v3, 0x0

    .line 96
    .local v3, "start":I
    const/4 v0, 0x1

    .line 98
    .local v0, "end":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/graphics/PathParser$PathDataNode;>;"
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_33

    .line 100
    invoke-static {p0, v0}, Landroid/support/v4/graphics/PathParser;->nextStart(Ljava/lang/String;I)I

    move-result v0

    .line 101
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2f

    .line 103
    invoke-static {v2}, Landroid/support/v4/graphics/PathParser;->getFloats(Ljava/lang/String;)[F

    move-result-object v4

    .line 104
    .local v4, "val":[F
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v1, v5, v4}, Landroid/support/v4/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 107
    .end local v4    # "val":[F
    :cond_2f
    move v3, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    .line 109
    goto :goto_c

    .line 110
    .end local v2    # "s":Ljava/lang/String;
    :cond_33
    sub-int v5, v0, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_47

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_47

    .line 111
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    new-array v6, v7, [F

    invoke-static {v1, v5, v6}, Landroid/support/v4/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 113
    :cond_47
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/support/v4/graphics/PathParser$PathDataNode;

    goto :goto_4
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .registers 7
    .param p0, "pathData"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 75
    .local v2, "path":Landroid/graphics/Path;
    invoke-static {p0}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v1

    .line 76
    .local v1, "nodes":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    if-eqz v1, :cond_29

    .line 78
    :try_start_b
    invoke-static {v1, v2}, Landroid/support/v4/graphics/PathParser$PathDataNode;->nodesToPath([Landroid/support/v4/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_f

    .line 84
    .end local v2    # "path":Landroid/graphics/Path;
    :goto_e
    return-object v2

    .line 79
    .restart local v2    # "path":Landroid/graphics/Path;
    :catch_f
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 84
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_29
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public static deepCopyNodes([Landroid/support/v4/graphics/PathParser$PathDataNode;)[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .registers 5
    .param p0, "source"    # [Landroid/support/v4/graphics/PathParser$PathDataNode;

    .prologue
    .line 121
    if-nez p0, :cond_4

    .line 122
    const/4 v0, 0x0

    .line 128
    :cond_3
    return-object v0

    .line 124
    :cond_4
    array-length v2, p0

    new-array v0, v2, [Landroid/support/v4/graphics/PathParser$PathDataNode;

    .line 125
    .local v0, "copy":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 126
    new-instance v2, Landroid/support/v4/graphics/PathParser$PathDataNode;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/support/v4/graphics/PathParser$PathDataNode;-><init>(Landroid/support/v4/graphics/PathParser$PathDataNode;)V

    aput-object v2, v0, v1

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method private static extract(Ljava/lang/String;ILandroid/support/v4/graphics/PathParser$ExtractFloatResult;)V
    .registers 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "result"    # Landroid/support/v4/graphics/PathParser$ExtractFloatResult;

    .prologue
    const/4 v7, 0x1

    .line 257
    move v1, p1

    .line 258
    .local v1, "currentIndex":I
    const/4 v2, 0x0

    .line 259
    .local v2, "foundSeparator":Z
    const/4 v6, 0x0

    iput-boolean v6, p2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    .line 260
    const/4 v5, 0x0

    .line 261
    .local v5, "secondDot":Z
    const/4 v3, 0x0

    .line 262
    .local v3, "isExponential":Z
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_19

    .line 263
    move v4, v3

    .line 264
    .local v4, "isPrevExponential":Z
    const/4 v3, 0x0

    .line 265
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 266
    .local v0, "currentChar":C
    sparse-switch v0, :sswitch_data_34

    .line 292
    :cond_17
    :goto_17
    if-eqz v2, :cond_30

    .line 298
    .end local v0    # "currentChar":C
    .end local v4    # "isPrevExponential":Z
    :cond_19
    iput v1, p2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    .line 299
    return-void

    .line 269
    .restart local v0    # "currentChar":C
    .restart local v4    # "isPrevExponential":Z
    :sswitch_1c
    const/4 v2, 0x1

    .line 270
    goto :goto_17

    .line 273
    :sswitch_1e
    if-eq v1, p1, :cond_17

    if-nez v4, :cond_17

    .line 274
    const/4 v2, 0x1

    .line 275
    iput-boolean v7, p2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_17

    .line 279
    :sswitch_26
    if-nez v5, :cond_2a

    .line 280
    const/4 v5, 0x1

    goto :goto_17

    .line 283
    :cond_2a
    const/4 v2, 0x1

    .line 284
    iput-boolean v7, p2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_17

    .line 289
    :sswitch_2e
    const/4 v3, 0x1

    goto :goto_17

    .line 262
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 266
    nop

    :sswitch_data_34
    .sparse-switch
        0x20 -> :sswitch_1c
        0x2c -> :sswitch_1c
        0x2d -> :sswitch_1e
        0x2e -> :sswitch_26
        0x45 -> :sswitch_2e
        0x65 -> :sswitch_2e
    .end sparse-switch
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .registers 12
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 210
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x7a

    if-eq v8, v9, :cond_11

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5a

    if-ne v8, v9, :cond_14

    .line 211
    :cond_11
    new-array v8, v10, [F

    .line 241
    :goto_13
    return-object v8

    .line 214
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    new-array v5, v8, [F

    .line 215
    .local v5, "results":[F
    const/4 v0, 0x0

    .line 216
    .local v0, "count":I
    const/4 v6, 0x1

    .line 217
    .local v6, "startPosition":I
    const/4 v3, 0x0

    .line 219
    .local v3, "endPosition":I
    new-instance v4, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;

    invoke-direct {v4}, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;-><init>()V

    .line 220
    .local v4, "result":Landroid/support/v4/graphics/PathParser$ExtractFloatResult;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, "totalLength":I
    move v1, v0

    .line 225
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_27
    if-ge v6, v7, :cond_47

    .line 226
    invoke-static {p0, v6, v4}, Landroid/support/v4/graphics/PathParser;->extract(Ljava/lang/String;ILandroid/support/v4/graphics/PathParser$ExtractFloatResult;)V

    .line 227
    iget v3, v4, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    .line 229
    if-ge v6, v3, :cond_6d

    .line 230
    add-int/lit8 v0, v1, 0x1

    .line 231
    .end local v1    # "count":I
    .restart local v0    # "count":I
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 230
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v5, v1

    .line 234
    :goto_3c
    iget-boolean v8, v4, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    if-eqz v8, :cond_43

    .line 236
    move v6, v3

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_27

    .line 238
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_43
    add-int/lit8 v6, v3, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_27

    .line 241
    :cond_47
    const/4 v8, 0x0

    invoke-static {v5, v8, v1}, Landroid/support/v4/graphics/PathParser;->copyOfRange([FII)[F
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_4b} :catch_4d

    move-result-object v8

    goto :goto_13

    .line 242
    .end local v1    # "count":I
    .end local v3    # "endPosition":I
    .end local v4    # "result":Landroid/support/v4/graphics/PathParser$ExtractFloatResult;
    .end local v5    # "results":[F
    .end local v6    # "startPosition":I
    .end local v7    # "totalLength":I
    :catch_4d
    move-exception v2

    .line 243
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error in parsing \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "count":I
    .restart local v3    # "endPosition":I
    .restart local v4    # "result":Landroid/support/v4/graphics/PathParser$ExtractFloatResult;
    .restart local v5    # "results":[F
    .restart local v6    # "startPosition":I
    .restart local v7    # "totalLength":I
    :cond_6d
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_3c
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "end"    # I

    .prologue
    .line 173
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_20

    .line 174
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 179
    .local v0, "c":C
    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_18

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_21

    :cond_18
    const/16 v1, 0x65

    if-eq v0, v1, :cond_21

    const/16 v1, 0x45

    if-eq v0, v1, :cond_21

    .line 185
    .end local v0    # "c":C
    :cond_20
    return p1

    .line 183
    .restart local v0    # "c":C
    :cond_21
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static updateNodes([Landroid/support/v4/graphics/PathParser$PathDataNode;[Landroid/support/v4/graphics/PathParser$PathDataNode;)V
    .registers 6
    .param p0, "target"    # [Landroid/support/v4/graphics/PathParser$PathDataNode;
    .param p1, "source"    # [Landroid/support/v4/graphics/PathParser$PathDataNode;

    .prologue
    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_26

    .line 163
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    iget-char v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    iput-char v3, v2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    .line 164
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_d
    aget-object v2, p1, v0

    iget-object v2, v2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v2, v2

    if-ge v1, v2, :cond_23

    .line 165
    aget-object v2, p0, v0

    iget-object v2, v2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    aget v3, v3, v1

    aput v3, v2, v1

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 162
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    .end local v1    # "j":I
    :cond_26
    return-void
.end method
