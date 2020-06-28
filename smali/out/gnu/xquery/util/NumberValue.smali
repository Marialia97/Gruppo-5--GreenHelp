.class public Lgnu/xquery/util/NumberValue;
.super Lgnu/mapping/Procedure1;
.source "NumberValue.java"


# static fields
.field public static final NaN:Ljava/lang/Double;

.field public static final numberValue:Lgnu/xquery/util/NumberValue;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 14
    new-instance v0, Lgnu/xquery/util/NumberValue;

    invoke-direct {v0}, Lgnu/xquery/util/NumberValue;-><init>()V

    sput-object v0, Lgnu/xquery/util/NumberValue;->numberValue:Lgnu/xquery/util/NumberValue;

    .line 16
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lgnu/xquery/util/NumberValue;->NaN:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method

.method public static abs(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 89
    if-eqz p0, :cond_6

    sget-object v6, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v6, :cond_8

    :cond_6
    move-object v2, p0

    .line 129
    .end local p0    # "value":Ljava/lang/Object;
    :cond_7
    :goto_7
    return-object v2

    .line 91
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_8
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->numberCast(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    .line 92
    .local p0, "value":Ljava/lang/Number;
    instance-of v6, p0, Ljava/lang/Double;

    if-eqz v6, :cond_30

    move-object v2, p0

    .line 94
    check-cast v2, Ljava/lang/Double;

    .line 95
    .local v2, "d":Ljava/lang/Double;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 96
    .local v4, "x":D
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 97
    .local v0, "bits":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_7

    .line 99
    const-wide v6, 0x7fffffffffffffffL

    and-long/2addr v0, v6

    .line 100
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 102
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_7

    .line 107
    .end local v0    # "bits":J
    .end local v2    # "d":Ljava/lang/Double;
    .end local v4    # "x":D
    :cond_30
    instance-of v6, p0, Ljava/lang/Float;

    if-eqz v6, :cond_4e

    move-object v2, p0

    .line 109
    check-cast v2, Ljava/lang/Float;

    .line 110
    .local v2, "d":Ljava/lang/Float;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 111
    .local v4, "x":F
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 112
    .local v0, "bits":I
    if-gez v0, :cond_7

    .line 114
    const v6, 0x7fffffff

    and-int/2addr v0, v6

    .line 115
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 117
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_7

    .line 122
    .end local v0    # "bits":I
    .end local v2    # "d":Ljava/lang/Float;
    .end local v4    # "x":F
    :cond_4e
    instance-of v6, p0, Ljava/math/BigDecimal;

    if-eqz v6, :cond_61

    move-object v3, p0

    .line 124
    check-cast v3, Ljava/math/BigDecimal;

    .line 125
    .local v3, "dec":Ljava/math/BigDecimal;
    invoke-virtual {v3}, Ljava/math/BigDecimal;->signum()I

    move-result v6

    if-gez v6, :cond_5f

    .line 126
    invoke-virtual {v3}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v3

    :cond_5f
    move-object v2, v3

    .line 127
    goto :goto_7

    .line 129
    .end local v3    # "dec":Ljava/math/BigDecimal;
    :cond_61
    check-cast p0, Lgnu/math/Numeric;

    .end local p0    # "value":Ljava/lang/Number;
    invoke-virtual {p0}, Lgnu/math/Numeric;->abs()Lgnu/math/Numeric;

    move-result-object v2

    goto :goto_7
.end method

.method public static ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "val"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x2

    .line 151
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->numberCast(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v1

    .line 152
    .local v1, "value":Ljava/lang/Number;
    if-nez v1, :cond_8

    .line 163
    .end local v1    # "value":Ljava/lang/Number;
    .end local p0    # "val":Ljava/lang/Object;
    :goto_7
    return-object p0

    .line 154
    .restart local v1    # "value":Ljava/lang/Number;
    .restart local p0    # "val":Ljava/lang/Object;
    :cond_8
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_1b

    .line 155
    check-cast v1, Ljava/lang/Double;

    .end local v1    # "value":Ljava/lang/Number;
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_7

    .line 156
    .restart local v1    # "value":Ljava/lang/Number;
    :cond_1b
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_30

    .line 157
    check-cast v1, Ljava/lang/Float;

    .end local v1    # "value":Ljava/lang/Number;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_7

    .line 158
    .restart local v1    # "value":Ljava/lang/Number;
    :cond_30
    instance-of v2, v1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_47

    move-object v0, v1

    .line 160
    check-cast v0, Ljava/math/BigDecimal;

    .line 161
    .local v0, "dec":Ljava/math/BigDecimal;
    sget-object v2, Lgnu/kawa/xml/XDataType;->DECIMAL_ONE:Ljava/math/BigDecimal;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigInteger;)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_7

    .line 163
    .end local v0    # "dec":Ljava/math/BigDecimal;
    :cond_47
    check-cast v1, Lgnu/math/RealNum;

    .end local v1    # "value":Ljava/lang/Number;
    invoke-virtual {v1, v4}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object p0

    goto :goto_7
.end method

.method public static floor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "val"    # Ljava/lang/Object;

    .prologue
    .line 134
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->numberCast(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v1

    .line 135
    .local v1, "value":Ljava/lang/Number;
    if-nez v1, :cond_7

    .line 146
    .end local v1    # "value":Ljava/lang/Number;
    .end local p0    # "val":Ljava/lang/Object;
    :goto_6
    return-object p0

    .line 137
    .restart local v1    # "value":Ljava/lang/Number;
    .restart local p0    # "val":Ljava/lang/Object;
    :cond_7
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_1a

    .line 138
    check-cast v1, Ljava/lang/Double;

    .end local v1    # "value":Ljava/lang/Number;
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_6

    .line 139
    .restart local v1    # "value":Ljava/lang/Number;
    :cond_1a
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_2f

    .line 140
    check-cast v1, Ljava/lang/Float;

    .end local v1    # "value":Ljava/lang/Number;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_6

    .line 141
    .restart local v1    # "value":Ljava/lang/Number;
    :cond_2f
    instance-of v2, v1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_47

    move-object v0, v1

    .line 143
    check-cast v0, Ljava/math/BigDecimal;

    .line 144
    .local v0, "dec":Ljava/math/BigDecimal;
    sget-object v2, Lgnu/kawa/xml/XDataType;->DECIMAL_ONE:Ljava/math/BigDecimal;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigInteger;)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_6

    .line 146
    .end local v0    # "dec":Ljava/math/BigDecimal;
    :cond_47
    check-cast v1, Lgnu/math/RealNum;

    .end local v1    # "value":Ljava/lang/Number;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object p0

    goto :goto_6
.end method

.method public static isNaN(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 20
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_c

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_c

    instance-of v0, p0, Lgnu/math/DFloNum;

    if-eqz v0, :cond_1a

    :cond_c
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "arg":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static numberCast(Ljava/lang/Object;)Ljava/lang/Number;
    .registers 6
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 43
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v3, :cond_6

    if-nez p0, :cond_8

    .line 44
    :cond_6
    const/4 p0, 0x0

    .line 60
    .end local p0    # "value":Ljava/lang/Object;
    :goto_7
    return-object p0

    .line 45
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v3, p0, Lgnu/mapping/Values;

    if-eqz v3, :cond_2b

    move-object v2, p0

    .line 47
    check-cast v2, Lgnu/mapping/Values;

    .line 48
    .local v2, "vals":Lgnu/mapping/Values;
    invoke-virtual {v2}, Lgnu/mapping/Values;->startPos()I

    move-result v1

    .line 49
    .local v1, "ipos":I
    const/4 v0, 0x0

    .line 50
    .local v0, "count":I
    :goto_14
    invoke-virtual {v2, v1}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v1

    if-eqz v1, :cond_2b

    .line 52
    if-lez v0, :cond_24

    .line 53
    new-instance v3, Ljava/lang/ClassCastException;

    const-string v4, "non-singleton sequence cast to number"

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 54
    :cond_24
    invoke-virtual {v2, v1}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object p0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 58
    .end local v0    # "count":I
    .end local v1    # "ipos":I
    .end local v2    # "vals":Lgnu/mapping/Values;
    :cond_2b
    instance-of v3, p0, Lgnu/kawa/xml/KNode;

    if-nez v3, :cond_33

    instance-of v3, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v3, :cond_41

    .line 59
    :cond_33
    sget-object v3, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    invoke-static {p0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    move-object p0, v3

    goto :goto_7

    .line 60
    :cond_41
    check-cast p0, Ljava/lang/Number;

    goto :goto_7
.end method

.method public static numberValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 65
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 67
    instance-of v3, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v3, :cond_c

    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_1f

    .line 71
    :cond_c
    :try_start_c
    sget-object v3, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    invoke-static {p0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_17

    move-result-object v3

    .line 84
    .end local p0    # "value":Ljava/lang/Object;
    :goto_16
    return-object v3

    .line 74
    .restart local p0    # "value":Ljava/lang/Object;
    :catch_17
    move-exception v2

    .line 76
    .local v2, "ex":Ljava/lang/Throwable;
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 84
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "d":D
    :goto_1a
    invoke-static {v0, v1}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_16

    .line 79
    .end local v0    # "d":D
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1f
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_32

    instance-of v3, p0, Lgnu/math/RealNum;

    if-nez v3, :cond_2b

    instance-of v3, p0, Lgnu/math/Numeric;

    if-nez v3, :cond_32

    .line 81
    :cond_2b
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .restart local v0    # "d":D
    goto :goto_1a

    .line 83
    .end local v0    # "d":D
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_32
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .restart local v0    # "d":D
    goto :goto_1a
.end method

.method public static round(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x4

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v10, -0x4020000000000000L    # -0.5

    const-wide/16 v8, 0x0

    .line 168
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->numberCast(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v4

    .line 169
    .local v4, "value":Ljava/lang/Number;
    if-nez v4, :cond_e

    .line 199
    .end local v4    # "value":Ljava/lang/Number;
    .end local p0    # "arg":Ljava/lang/Object;
    :goto_d
    return-object p0

    .line 171
    .restart local v4    # "value":Ljava/lang/Number;
    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_e
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_3c

    .line 173
    check-cast v4, Ljava/lang/Double;

    .end local v4    # "value":Ljava/lang/Number;
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 174
    .local v2, "val":D
    cmpl-double v5, v2, v10

    if-ltz v5, :cond_35

    cmpg-double v5, v2, v8

    if-gtz v5, :cond_35

    cmpg-double v5, v2, v8

    if-ltz v5, :cond_2e

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_35

    .line 176
    :cond_2e
    const-wide/high16 v2, -0x8000000000000000L

    .line 179
    :goto_30
    invoke-static {v2, v3}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_d

    .line 178
    :cond_35
    add-double v6, v2, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    goto :goto_30

    .line 181
    .end local v2    # "val":D
    .restart local v4    # "value":Ljava/lang/Number;
    :cond_3c
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_6a

    .line 183
    check-cast v4, Ljava/lang/Float;

    .end local v4    # "value":Ljava/lang/Number;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 184
    .local v2, "val":F
    float-to-double v6, v2

    cmpl-double v5, v6, v10

    if-ltz v5, :cond_62

    float-to-double v6, v2

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_62

    float-to-double v6, v2

    cmpg-double v5, v6, v8

    if-ltz v5, :cond_5b

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-gez v5, :cond_62

    .line 186
    :cond_5b
    const/high16 v2, -0x80000000

    .line 189
    :goto_5d
    invoke-static {v2}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_d

    .line 188
    :cond_62
    float-to-double v6, v2

    add-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v2, v6

    goto :goto_5d

    .line 191
    .end local v2    # "val":F
    .restart local v4    # "value":Ljava/lang/Number;
    :cond_6a
    instance-of v5, v4, Ljava/math/BigDecimal;

    if-eqz v5, :cond_89

    move-object v0, v4

    .line 193
    check-cast v0, Ljava/math/BigDecimal;

    .line 194
    .local v0, "dec":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v5

    if-ltz v5, :cond_87

    .line 196
    .local v1, "mode":I
    :goto_77
    sget-object v5, Lgnu/kawa/xml/XDataType;->DECIMAL_ONE:Ljava/math/BigDecimal;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigInteger;)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_d

    .line 194
    .end local v1    # "mode":I
    :cond_87
    const/4 v1, 0x5

    goto :goto_77

    .line 199
    .end local v0    # "dec":Ljava/math/BigDecimal;
    :cond_89
    check-cast v4, Lgnu/math/RealNum;

    .end local v4    # "value":Ljava/lang/Number;
    invoke-virtual {v4, v1}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object p0

    goto/16 :goto_d
.end method

.method public static roundHalfToEven(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 252
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/xquery/util/NumberValue;->roundHalfToEven(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static roundHalfToEven(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;
    .registers 10
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "precision"    # Lgnu/math/IntNum;

    .prologue
    .line 204
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->numberCast(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v1

    .line 205
    .local v1, "number":Ljava/lang/Number;
    if-nez v1, :cond_7

    .line 247
    .end local p0    # "value":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p0

    .line 207
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v3, p0, Ljava/lang/Double;

    if-nez v3, :cond_f

    instance-of v3, p0, Ljava/lang/Float;

    if-eqz v3, :cond_28

    :cond_f
    move-object v3, p0

    .line 209
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 210
    .local v4, "v":D
    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_6

    .line 213
    .end local v4    # "v":D
    :cond_28
    sget-object v3, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v3, v1}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    .line 214
    .local v0, "dec":Ljava/math/BigDecimal;
    invoke-virtual {p1}, Lgnu/math/IntNum;->intValue()I

    move-result v2

    .line 240
    .local v2, "prec":I
    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 241
    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_46

    .line 242
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_6

    .line 243
    :cond_46
    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_53

    .line 244
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    invoke-static {v3}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_6

    .line 245
    :cond_53
    instance-of v3, v1, Lgnu/math/IntNum;

    if-eqz v3, :cond_5e

    .line 246
    sget-object v3, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    invoke-virtual {v3, v0}, Lgnu/kawa/xml/XIntegerType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_6

    :cond_5e
    move-object p0, v0

    .line 247
    goto :goto_6
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 27
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p1, v0, :cond_c

    if-eqz p1, :cond_c

    .line 31
    :try_start_6
    invoke-static {p1}, Lgnu/xquery/util/NumberValue;->numberValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v0

    .line 38
    :goto_a
    return-object v0

    .line 33
    :catch_b
    move-exception v0

    .line 38
    :cond_c
    sget-object v0, Lgnu/xquery/util/NumberValue;->NaN:Ljava/lang/Double;

    goto :goto_a
.end method
