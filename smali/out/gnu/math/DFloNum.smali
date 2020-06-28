.class public Lgnu/math/DFloNum;
.super Lgnu/math/RealNum;
.source "DFloNum.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final one:Lgnu/math/DFloNum;


# instance fields
.field value:D


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 111
    new-instance v0, Lgnu/math/DFloNum;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    sput-object v0, Lgnu/math/DFloNum;->one:Lgnu/math/DFloNum;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lgnu/math/RealNum;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 16
    invoke-direct {p0}, Lgnu/math/RealNum;-><init>()V

    .line 17
    iput-wide p1, p0, Lgnu/math/DFloNum;->value:D

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Lgnu/math/RealNum;-><init>()V

    .line 22
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 23
    .local v0, "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lgnu/math/DFloNum;->value:D

    .line 37
    iget-wide v2, p0, Lgnu/math/DFloNum;->value:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_22

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_22

    .line 38
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lgnu/math/DFloNum;->value:D

    .line 39
    :cond_22
    return-void
.end method

.method public static asDFloNumOrNull(Ljava/lang/Object;)Lgnu/math/DFloNum;
    .registers 5
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 48
    instance-of v0, p0, Lgnu/math/DFloNum;

    if-eqz v0, :cond_7

    .line 49
    check-cast p0, Lgnu/math/DFloNum;

    .line 52
    .end local p0    # "value":Ljava/lang/Object;
    :goto_6
    return-object p0

    .line 50
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, Lgnu/math/RealNum;

    if-nez v0, :cond_f

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1c

    .line 51
    :cond_f
    new-instance v0, Lgnu/math/DFloNum;

    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    move-object p0, v0

    goto :goto_6

    .line 52
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1c
    const/4 p0, 0x0

    goto :goto_6
.end method

.method public static compare(DD)I
    .registers 6
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    .line 152
    cmpl-double v0, p0, p2

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    cmpg-double v0, p0, p2

    if-gez v0, :cond_c

    const/4 v0, -0x1

    goto :goto_5

    :cond_c
    cmpl-double v0, p0, p2

    if-nez v0, :cond_12

    const/4 v0, 0x0

    goto :goto_5

    :cond_12
    const/4 v0, -0x2

    goto :goto_5
.end method

.method public static compare(Lgnu/math/IntNum;Lgnu/math/IntNum;D)I
    .registers 14
    .param p0, "x_num"    # Lgnu/math/IntNum;
    .param p1, "x_den"    # Lgnu/math/IntNum;
    .param p2, "y"    # D

    .prologue
    const/4 v6, -0x2

    const/4 v4, 0x1

    .line 158
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_a

    move v4, v6

    .line 185
    :cond_9
    :goto_9
    return v4

    .line 160
    :cond_a
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 162
    const-wide/16 v8, 0x0

    cmpl-double v7, p2, v8

    if-ltz v7, :cond_17

    const/4 v4, -0x1

    .line 163
    .local v4, "result":I
    :cond_17
    invoke-virtual {p1}, Lgnu/math/IntNum;->isZero()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 165
    invoke-virtual {p0}, Lgnu/math/IntNum;->isZero()Z

    move-result v7

    if-eqz v7, :cond_25

    move v4, v6

    .line 166
    goto :goto_9

    .line 167
    :cond_25
    shr-int/lit8 v4, v4, 0x1

    .line 168
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v6

    if-nez v6, :cond_9

    xor-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 172
    .end local v4    # "result":I
    :cond_30
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 173
    .local v0, "bits":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_65

    move v3, v4

    .line 174
    .local v3, "neg":Z
    :goto_3b
    const/16 v6, 0x34

    shr-long v6, v0, v6

    long-to-int v6, v6

    and-int/lit16 v2, v6, 0x7ff

    .line 175
    .local v2, "exp":I
    const-wide v6, 0xfffffffffffffL

    and-long/2addr v0, v6

    .line 176
    if-nez v2, :cond_67

    .line 177
    shl-long/2addr v0, v4

    .line 180
    :goto_4b
    if-eqz v3, :cond_4e

    neg-long v0, v0

    .end local v0    # "bits":J
    :cond_4e
    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v5

    .line 181
    .local v5, "y_num":Lgnu/math/IntNum;
    const/16 v6, 0x433

    if-lt v2, v6, :cond_6b

    .line 182
    add-int/lit16 v6, v2, -0x433

    invoke-static {v5, v6}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v5

    .line 185
    :goto_5c
    invoke-static {v5, p1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v6

    invoke-static {p0, v6}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v4

    goto :goto_9

    .line 173
    .end local v2    # "exp":I
    .end local v3    # "neg":Z
    .end local v5    # "y_num":Lgnu/math/IntNum;
    .restart local v0    # "bits":J
    :cond_65
    const/4 v3, 0x0

    goto :goto_3b

    .line 179
    .restart local v2    # "exp":I
    .restart local v3    # "neg":Z
    :cond_67
    const-wide/high16 v6, 0x10000000000000L

    or-long/2addr v0, v6

    goto :goto_4b

    .line 184
    .end local v0    # "bits":J
    .restart local v5    # "y_num":Lgnu/math/IntNum;
    :cond_6b
    rsub-int v6, v2, 0x433

    invoke-static {p0, v6}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_5c
.end method

.method public static make(D)Lgnu/math/DFloNum;
    .registers 4
    .param p0, "value"    # D

    .prologue
    .line 43
    new-instance v0, Lgnu/math/DFloNum;

    invoke-direct {v0, p0, p1}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public static final one()Lgnu/math/DFloNum;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Lgnu/math/DFloNum;->one:Lgnu/math/DFloNum;

    return-object v0
.end method

.method public static toExact(D)Lgnu/math/RatNum;
    .registers 10
    .param p0, "value"    # D

    .prologue
    const/4 v5, 0x1

    .line 223
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 224
    const-wide/16 v6, 0x0

    cmpl-double v6, p0, v6

    if-ltz v6, :cond_12

    :goto_d
    invoke-static {v5}, Lgnu/math/RatNum;->infinity(I)Lgnu/math/RatNum;

    move-result-object v5

    .line 239
    :goto_11
    return-object v5

    .line 224
    :cond_12
    const/4 v5, -0x1

    goto :goto_d

    .line 225
    :cond_14
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 226
    new-instance v5, Ljava/lang/ArithmeticException;

    const-string v6, "cannot convert NaN to exact rational"

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 227
    :cond_22
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 228
    .local v0, "bits":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_4f

    move v4, v5

    .line 229
    .local v4, "neg":Z
    :goto_2d
    const/16 v6, 0x34

    shr-long v6, v0, v6

    long-to-int v6, v6

    and-int/lit16 v2, v6, 0x7ff

    .line 230
    .local v2, "exp":I
    const-wide v6, 0xfffffffffffffL

    and-long/2addr v0, v6

    .line 231
    if-nez v2, :cond_51

    .line 232
    shl-long/2addr v0, v5

    .line 235
    :goto_3d
    if-eqz v4, :cond_40

    neg-long v0, v0

    .end local v0    # "bits":J
    :cond_40
    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v3

    .line 236
    .local v3, "mant":Lgnu/math/IntNum;
    const/16 v5, 0x433

    if-lt v2, v5, :cond_55

    .line 237
    add-int/lit16 v5, v2, -0x433

    invoke-static {v3, v5}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v5

    goto :goto_11

    .line 228
    .end local v2    # "exp":I
    .end local v3    # "mant":Lgnu/math/IntNum;
    .end local v4    # "neg":Z
    .restart local v0    # "bits":J
    :cond_4f
    const/4 v4, 0x0

    goto :goto_2d

    .line 234
    .restart local v2    # "exp":I
    .restart local v4    # "neg":Z
    :cond_51
    const-wide/high16 v6, 0x10000000000000L

    or-long/2addr v0, v6

    goto :goto_3d

    .line 239
    .end local v0    # "bits":J
    .restart local v3    # "mant":Lgnu/math/IntNum;
    :cond_55
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v5

    rsub-int v6, v2, 0x433

    invoke-static {v5, v6}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v5

    invoke-static {v3, v5}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v5

    goto :goto_11
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .registers 11
    .param p1, "y"    # Ljava/lang/Object;
    .param p2, "k"    # I

    .prologue
    .line 81
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_15

    .line 82
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v2, p0, Lgnu/math/DFloNum;->value:D

    int-to-double v4, p2

    check-cast p1, Lgnu/math/RealNum;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    .line 85
    :goto_14
    return-object v0

    .line 83
    .restart local p1    # "y":Ljava/lang/Object;
    :cond_15
    instance-of v0, p1, Lgnu/math/Numeric;

    if-nez v0, :cond_1f

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 85
    :cond_1f
    check-cast p1, Lgnu/math/Numeric;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-virtual {p1, p0, p2}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_14
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .registers 11
    .param p1, "x"    # Lgnu/math/Numeric;
    .param p2, "k"    # I

    .prologue
    .line 90
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_15

    .line 91
    new-instance v0, Lgnu/math/DFloNum;

    check-cast p1, Lgnu/math/RealNum;

    .end local p1    # "x":Lgnu/math/Numeric;
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    int-to-double v4, p2

    iget-wide v6, p0, Lgnu/math/DFloNum;->value:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 92
    .restart local p1    # "x":Lgnu/math/Numeric;
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public compare(Ljava/lang/Object;)I
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 191
    instance-of v2, p1, Lgnu/math/RatNum;

    if-eqz v2, :cond_1b

    move-object v1, p1

    .line 193
    check-cast v1, Lgnu/math/RatNum;

    .line 194
    .local v1, "y_rat":Lgnu/math/RatNum;
    invoke-virtual {v1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v2

    invoke-virtual {v1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v3

    iget-wide v4, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v2, v3, v4, v5}, Lgnu/math/DFloNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;D)I

    move-result v0

    .line 195
    .local v0, "i":I
    const/4 v2, -0x1

    if-ge v0, v2, :cond_19

    .line 197
    .end local v0    # "i":I
    .end local v1    # "y_rat":Lgnu/math/RatNum;
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_18
    return v0

    .line 195
    .restart local v0    # "i":I
    .restart local v1    # "y_rat":Lgnu/math/RatNum;
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_19
    neg-int v0, v0

    goto :goto_18

    .line 197
    .end local v0    # "i":I
    .end local v1    # "y_rat":Lgnu/math/RatNum;
    :cond_1b
    iget-wide v2, p0, Lgnu/math/DFloNum;->value:D

    check-cast p1, Lgnu/math/RealNum;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lgnu/math/DFloNum;->compare(DD)I

    move-result v0

    goto :goto_18
.end method

.method public compareReversed(Lgnu/math/Numeric;)I
    .registers 8
    .param p1, "x"    # Lgnu/math/Numeric;

    .prologue
    .line 202
    instance-of v1, p1, Lgnu/math/RatNum;

    if-eqz v1, :cond_16

    move-object v0, p1

    .line 204
    check-cast v0, Lgnu/math/RatNum;

    .line 205
    .local v0, "x_rat":Lgnu/math/RatNum;
    invoke-virtual {v0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {v0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v2

    iget-wide v4, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v1, v2, v4, v5}, Lgnu/math/DFloNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;D)I

    move-result v1

    .line 207
    .end local v0    # "x_rat":Lgnu/math/RatNum;
    .end local p1    # "x":Lgnu/math/Numeric;
    :goto_15
    return v1

    .restart local p1    # "x":Lgnu/math/Numeric;
    :cond_16
    check-cast p1, Lgnu/math/RealNum;

    .end local p1    # "x":Lgnu/math/Numeric;
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    iget-wide v4, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v2, v3, v4, v5}, Lgnu/math/DFloNum;->compare(DD)I

    move-result v1

    goto :goto_15
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .registers 8
    .param p1, "y"    # Ljava/lang/Object;

    .prologue
    .line 116
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_13

    .line 117
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v2, p0, Lgnu/math/DFloNum;->value:D

    check-cast p1, Lgnu/math/RealNum;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    .line 120
    :goto_12
    return-object v0

    .line 118
    .restart local p1    # "y":Ljava/lang/Object;
    :cond_13
    instance-of v0, p1, Lgnu/math/Numeric;

    if-nez v0, :cond_1d

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 120
    :cond_1d
    check-cast p1, Lgnu/math/Numeric;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_12
.end method

.method public divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .registers 8
    .param p1, "x"    # Lgnu/math/Numeric;

    .prologue
    .line 125
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_13

    .line 126
    new-instance v0, Lgnu/math/DFloNum;

    check-cast p1, Lgnu/math/RealNum;

    .end local p1    # "x":Lgnu/math/Numeric;
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    iget-wide v4, p0, Lgnu/math/DFloNum;->value:D

    div-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 127
    .restart local p1    # "x":Lgnu/math/Numeric;
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final doubleValue()D
    .registers 3

    .prologue
    .line 57
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 73
    if-eqz p1, :cond_1a

    instance-of v0, p1, Lgnu/math/DFloNum;

    if-eqz v0, :cond_1a

    check-cast p1, Lgnu/math/DFloNum;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-wide v0, p1, Lgnu/math/DFloNum;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 67
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public isExact()Z
    .registers 2

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public isNegative()Z
    .registers 5

    .prologue
    .line 137
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isZero()Z
    .registers 5

    .prologue
    .line 217
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 62
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .registers 8
    .param p1, "y"    # Ljava/lang/Object;

    .prologue
    .line 97
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_13

    .line 98
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v2, p0, Lgnu/math/DFloNum;->value:D

    check-cast p1, Lgnu/math/RealNum;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    .line 101
    :goto_12
    return-object v0

    .line 99
    .restart local p1    # "y":Ljava/lang/Object;
    :cond_13
    instance-of v0, p1, Lgnu/math/Numeric;

    if-nez v0, :cond_1d

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 101
    :cond_1d
    check-cast p1, Lgnu/math/Numeric;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_12
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .registers 8
    .param p1, "x"    # Lgnu/math/Numeric;

    .prologue
    .line 106
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_13

    .line 107
    new-instance v0, Lgnu/math/DFloNum;

    check-cast p1, Lgnu/math/RealNum;

    .end local p1    # "x":Lgnu/math/Numeric;
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    iget-wide v4, p0, Lgnu/math/DFloNum;->value:D

    mul-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 108
    .restart local p1    # "x":Lgnu/math/Numeric;
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public neg()Lgnu/math/Numeric;
    .registers 5

    .prologue
    .line 142
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v2, p0, Lgnu/math/DFloNum;->value:D

    neg-double v2, v2

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public power(Lgnu/math/IntNum;)Lgnu/math/Numeric;
    .registers 8
    .param p1, "y"    # Lgnu/math/IntNum;

    .prologue
    .line 132
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Lgnu/math/IntNum;->doubleValue()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/DFloNum;->value:D

    .line 269
    return-void
.end method

.method public sign()I
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 147
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_12

    const/4 v0, -0x1

    goto :goto_9

    :cond_12
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_9

    :cond_1a
    const/4 v0, -0x2

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 244
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, v0, v2

    if-nez v0, :cond_b

    const-string v0, "+inf.0"

    :goto_a
    return-object v0

    :cond_b
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, v0, v2

    if-nez v0, :cond_16

    const-string v0, "-inf.0"

    goto :goto_a

    :cond_16
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "+nan.0"

    goto :goto_a

    :cond_21
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public toString(I)Ljava/lang/String;
    .registers 4
    .param p1, "radix"    # I

    .prologue
    .line 252
    const/16 v0, 0xa

    if-ne p1, v0, :cond_9

    .line 253
    invoke-virtual {p0}, Lgnu/math/DFloNum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/DFloNum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 263
    return-void
.end method
