.class public Lgnu/kawa/functions/DivideOp;
.super Lgnu/kawa/functions/ArithOp;
.source "DivideOp.java"


# static fields
.field public static final $Sl:Lgnu/kawa/functions/DivideOp;

.field public static final div:Lgnu/kawa/functions/DivideOp;

.field public static final div0:Lgnu/kawa/functions/DivideOp;

.field public static final idiv:Lgnu/kawa/functions/DivideOp;

.field public static final mod:Lgnu/kawa/functions/DivideOp;

.field public static final mod0:Lgnu/kawa/functions/DivideOp;

.field public static final modulo:Lgnu/kawa/functions/DivideOp;

.field public static final quotient:Lgnu/kawa/functions/DivideOp;

.field public static final remainder:Lgnu/kawa/functions/DivideOp;


# instance fields
.field rounding_mode:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/16 v3, 0x8

    .line 19
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "/"

    invoke-direct {v0, v1, v5}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->$Sl:Lgnu/kawa/functions/DivideOp;

    .line 20
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "idiv"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->idiv:Lgnu/kawa/functions/DivideOp;

    .line 21
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "quotient"

    invoke-direct {v0, v1, v6}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    .line 22
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "remainder"

    invoke-direct {v0, v1, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->remainder:Lgnu/kawa/functions/DivideOp;

    .line 23
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "modulo"

    invoke-direct {v0, v1, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    .line 24
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "div"

    invoke-direct {v0, v1, v6}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->div:Lgnu/kawa/functions/DivideOp;

    .line 25
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "mod"

    invoke-direct {v0, v1, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->mod:Lgnu/kawa/functions/DivideOp;

    .line 26
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "div0"

    invoke-direct {v0, v1, v6}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->div0:Lgnu/kawa/functions/DivideOp;

    .line 27
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "mod0"

    invoke-direct {v0, v1, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->mod0:Lgnu/kawa/functions/DivideOp;

    .line 29
    sget-object v0, Lgnu/kawa/functions/DivideOp;->idiv:Lgnu/kawa/functions/DivideOp;

    iput v4, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 30
    sget-object v0, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    iput v4, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 31
    sget-object v0, Lgnu/kawa/functions/DivideOp;->remainder:Lgnu/kawa/functions/DivideOp;

    iput v4, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 32
    sget-object v0, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    const/4 v1, 0x1

    iput v1, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 33
    sget-object v0, Lgnu/kawa/functions/DivideOp;->div:Lgnu/kawa/functions/DivideOp;

    iput v7, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 34
    sget-object v0, Lgnu/kawa/functions/DivideOp;->mod:Lgnu/kawa/functions/DivideOp;

    iput v7, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 35
    sget-object v0, Lgnu/kawa/functions/DivideOp;->div0:Lgnu/kawa/functions/DivideOp;

    iput v5, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 36
    sget-object v0, Lgnu/kawa/functions/DivideOp;->mod0:Lgnu/kawa/functions/DivideOp;

    iput v5, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "op"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;I)V

    .line 42
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileArith:validateApplyArithOp"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/DivideOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    sget-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    const-string v1, "*gnu.kawa.functions.CompileArith:forDiv"

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 34
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 50
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    .line 51
    .local v20, "len":I
    if-nez v20, :cond_c

    .line 52
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v24

    .line 257
    :cond_b
    :goto_b
    return-object v24

    .line 53
    :cond_c
    const/16 v29, 0x0

    aget-object v27, p1, v29

    check-cast v27, Ljava/lang/Number;

    .line 54
    .local v27, "result":Ljava/lang/Number;
    const/16 v29, 0x1

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_29

    .line 55
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DivideOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    goto :goto_b

    .line 56
    :cond_29
    invoke-static/range {v27 .. v27}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v7

    .line 57
    .local v7, "code":I
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_2e
    move/from16 v0, v20

    if-ge v9, v0, :cond_2ba

    .line 59
    aget-object v4, p1, v9

    .line 60
    .local v4, "arg2":Ljava/lang/Object;
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v8

    .line 61
    .local v8, "code2":I
    if-ge v7, v8, :cond_3b

    move v7, v8

    .line 62
    :cond_3b
    move/from16 v28, v7

    .line 63
    .local v28, "scode":I
    const/16 v29, 0x4

    move/from16 v0, v29

    if-ge v7, v0, :cond_66

    .line 65
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v29, v0

    packed-switch v29, :pswitch_data_2be

    .line 72
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_b9

    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v7, v0, :cond_66

    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v7, v0, :cond_b9

    .line 80
    :cond_66
    :goto_66
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v29, v0

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_bc

    const/16 v29, 0xa

    move/from16 v0, v29

    if-gt v7, v0, :cond_bc

    .line 82
    const/16 v28, 0xa

    .line 83
    const/16 v29, 0x8

    move/from16 v0, v29

    if-eq v7, v0, :cond_8a

    const/16 v29, 0x7

    move/from16 v0, v29

    if-eq v7, v0, :cond_8a

    .line 84
    const/16 v7, 0x9

    .line 92
    :cond_8a
    :goto_8a
    packed-switch v28, :pswitch_data_2c6

    .line 213
    :pswitch_8d
    invoke-static/range {v27 .. v27}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v24

    .line 214
    .local v24, "num1":Lgnu/math/Numeric;
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v25

    .line 215
    .local v25, "num2":Lgnu/math/Numeric;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v29, v0

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_222

    invoke-virtual/range {v25 .. v25}, Lgnu/math/Numeric;->isZero()Z

    move-result v29

    if-eqz v29, :cond_222

    .line 216
    invoke-virtual/range {v25 .. v25}, Lgnu/math/Numeric;->isExact()Z

    move-result v29

    if-nez v29, :cond_b

    invoke-virtual/range {v24 .. v24}, Lgnu/math/Numeric;->toInexact()Lgnu/math/Numeric;

    move-result-object v24

    goto/16 :goto_b

    .line 69
    .end local v24    # "num1":Lgnu/math/Numeric;
    .end local v25    # "num2":Lgnu/math/Numeric;
    :pswitch_b5
    const/4 v7, 0x4

    move/from16 v28, v7

    .line 70
    goto :goto_66

    .line 76
    :cond_b9
    const/16 v28, 0x4

    goto :goto_66

    .line 86
    :cond_bc
    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_cc

    const/16 v29, 0x7

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8a

    .line 88
    :cond_cc
    const/16 v28, 0x9

    .line 89
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v29, v0

    const/16 v30, 0x7

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_8a

    .line 90
    move/from16 v7, v28

    goto :goto_8a

    .line 95
    :pswitch_df
    invoke-static/range {v27 .. v27}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v14

    .line 96
    .local v14, "i1":I
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v15

    .line 97
    .local v15, "i2":I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v29, v0

    packed-switch v29, :pswitch_data_2dc

    .line 103
    div-int/2addr v14, v15

    .line 106
    :goto_f1
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 236
    .end local v14    # "i1":I
    .end local v15    # "i2":I
    :goto_f5
    move/from16 v0, v28

    if-eq v7, v0, :cond_fc

    .line 238
    packed-switch v7, :pswitch_data_2e2

    .line 57
    :cond_fc
    :goto_fc
    :pswitch_fc
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2e

    .line 100
    .restart local v14    # "i1":I
    .restart local v15    # "i2":I
    :pswitch_100
    rem-int/2addr v14, v15

    .line 101
    goto :goto_f1

    .line 109
    .end local v14    # "i1":I
    .end local v15    # "i2":I
    :pswitch_102
    invoke-static/range {v27 .. v27}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v16

    .line 110
    .local v16, "l1":J
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v18

    .line 111
    .local v18, "l2":J
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v29, v0

    packed-switch v29, :pswitch_data_2f6

    .line 117
    div-long v16, v16, v18

    .line 120
    :goto_115
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    .line 121
    goto :goto_f5

    .line 114
    :pswitch_11a
    rem-long v16, v16, v18

    .line 115
    goto :goto_115

    .line 123
    .end local v16    # "l1":J
    .end local v18    # "l2":J
    :pswitch_11d
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v29, v0

    packed-switch v29, :pswitch_data_2fc

    :pswitch_126
    goto :goto_f5

    .line 137
    :pswitch_127
    invoke-static/range {v27 .. v27}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v29

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v27

    .line 139
    move-object/from16 v0, v27

    instance-of v0, v0, Lgnu/math/IntNum;

    move/from16 v29, v0

    if-eqz v29, :cond_161

    const/4 v7, 0x4

    .line 141
    :goto_13c
    move/from16 v28, v7

    goto :goto_f5

    .line 127
    :pswitch_13f
    invoke-static/range {v27 .. v27}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v29

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v31

    invoke-static/range {v29 .. v31}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v27

    .line 130
    goto :goto_f5

    .line 132
    :pswitch_150
    invoke-static/range {v27 .. v27}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v29

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v31

    invoke-static/range {v29 .. v31}, Lgnu/math/IntNum;->remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v27

    .line 135
    goto :goto_f5

    .line 139
    :cond_161
    const/4 v7, 0x6

    goto :goto_13c

    .line 147
    :pswitch_163
    invoke-static/range {v27 .. v27}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v5

    .line 148
    .local v5, "bd1":Ljava/math/BigDecimal;
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v6

    .line 149
    .local v6, "bd2":Ljava/math/BigDecimal;
    const/16 v22, 0x0

    .line 151
    .local v22, "mprec":I
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v29

    packed-switch v29, :pswitch_data_30a

    .line 165
    :goto_174
    :pswitch_174
    sget-object v23, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 168
    .local v23, "mround":Ljava/math/RoundingMode;
    :goto_176
    new-instance v21, Ljava/math/MathContext;

    invoke-direct/range {v21 .. v23}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 169
    .local v21, "mcontext":Ljava/math/MathContext;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v29, v0

    packed-switch v29, :pswitch_data_318

    :pswitch_184
    goto/16 :goto_f5

    .line 172
    :pswitch_186
    invoke-virtual {v5, v6}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v27

    .line 173
    goto/16 :goto_f5

    .line 154
    .end local v21    # "mcontext":Ljava/math/MathContext;
    .end local v23    # "mround":Ljava/math/RoundingMode;
    :pswitch_18c
    sget-object v23, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 155
    .restart local v23    # "mround":Ljava/math/RoundingMode;
    goto :goto_176

    .line 157
    .end local v23    # "mround":Ljava/math/RoundingMode;
    :pswitch_18f
    sget-object v23, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 158
    .restart local v23    # "mround":Ljava/math/RoundingMode;
    goto :goto_176

    .line 160
    .end local v23    # "mround":Ljava/math/RoundingMode;
    :pswitch_192
    sget-object v23, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 161
    .restart local v23    # "mround":Ljava/math/RoundingMode;
    goto :goto_176

    .line 163
    .end local v23    # "mround":Ljava/math/RoundingMode;
    :pswitch_195
    invoke-virtual {v6}, Ljava/math/BigDecimal;->signum()I

    move-result v29

    if-gez v29, :cond_19e

    sget-object v23, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .restart local v23    # "mround":Ljava/math/RoundingMode;
    :goto_19d
    goto :goto_174

    .end local v23    # "mround":Ljava/math/RoundingMode;
    :cond_19e
    sget-object v23, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    goto :goto_19d

    .line 175
    .restart local v21    # "mcontext":Ljava/math/MathContext;
    .restart local v23    # "mround":Ljava/math/RoundingMode;
    :pswitch_1a1
    move-object/from16 v0, v21

    invoke-virtual {v5, v6, v0}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v27

    .line 176
    goto/16 :goto_f5

    .line 178
    :pswitch_1a9
    move-object/from16 v0, v21

    invoke-virtual {v5, v6, v0}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v27

    .line 180
    const/16 v28, 0x3

    move/from16 v7, v28

    .line 181
    goto/16 :goto_f5

    .line 183
    :pswitch_1b9
    move-object/from16 v0, v21

    invoke-virtual {v5, v6, v0}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v27

    goto/16 :goto_f5

    .line 189
    .end local v5    # "bd1":Ljava/math/BigDecimal;
    .end local v6    # "bd2":Ljava/math/BigDecimal;
    .end local v21    # "mcontext":Ljava/math/MathContext;
    .end local v22    # "mprec":I
    .end local v23    # "mround":Ljava/math/RoundingMode;
    :pswitch_1c1
    invoke-static/range {v27 .. v27}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v10

    .line 190
    .local v10, "d1":D
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v12

    .line 191
    .local v12, "d2":D
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v29, v0

    packed-switch v29, :pswitch_data_326

    goto/16 :goto_f5

    .line 195
    :pswitch_1d4
    div-double v30, v10, v12

    invoke-static/range {v30 .. v31}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v27

    .line 196
    goto/16 :goto_f5

    .line 198
    :pswitch_1dc
    div-double v30, v10, v12

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v29

    move-wide/from16 v0, v30

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v27

    .line 199
    goto/16 :goto_f5

    .line 201
    :pswitch_1f0
    div-double v30, v10, v12

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v29

    move-wide/from16 v0, v30

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object v27

    .line 202
    const/16 v28, 0x4

    move/from16 v7, v28

    .line 203
    goto/16 :goto_f5

    .line 205
    :pswitch_204
    const-wide/16 v30, 0x0

    cmpl-double v29, v12, v30

    if-eqz v29, :cond_21c

    .line 206
    div-double v30, v10, v12

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v29

    move-wide/from16 v0, v30

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide v30

    mul-double v30, v30, v12

    sub-double v10, v10, v30

    .line 207
    :cond_21c
    invoke-static {v10, v11}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v27

    goto/16 :goto_f5

    .line 217
    .end local v10    # "d1":D
    .end local v12    # "d2":D
    .restart local v24    # "num1":Lgnu/math/Numeric;
    .restart local v25    # "num2":Lgnu/math/Numeric;
    :cond_222
    invoke-virtual/range {v24 .. v25}, Lgnu/math/Numeric;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v26

    .line 218
    .local v26, "numr":Lgnu/math/Numeric;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v29, v0

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_252

    .line 219
    check-cast v26, Lgnu/math/RealNum;

    .end local v26    # "numr":Lgnu/math/Numeric;
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v29

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lgnu/math/RealNum;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/math/Numeric;->sub(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v26

    .line 220
    .restart local v26    # "numr":Lgnu/math/Numeric;
    :cond_252
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v29, v0

    packed-switch v29, :pswitch_data_334

    .line 233
    move-object/from16 v27, v26

    goto/16 :goto_f5

    .line 223
    :pswitch_25f
    check-cast v26, Lgnu/math/RealNum;

    .end local v26    # "numr":Lgnu/math/Numeric;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    move/from16 v29, v0

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/math/RealNum;->toExactInt(I)Lgnu/math/IntNum;

    move-result-object v27

    .line 224
    const/4 v7, 0x4

    move/from16 v28, v7

    .line 225
    goto/16 :goto_f5

    .line 227
    .restart local v26    # "numr":Lgnu/math/Numeric;
    :pswitch_274
    check-cast v26, Lgnu/math/RealNum;

    .end local v26    # "numr":Lgnu/math/Numeric;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    move/from16 v29, v0

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v27

    .line 228
    goto/16 :goto_f5

    .line 230
    .restart local v26    # "numr":Lgnu/math/Numeric;
    :pswitch_286
    invoke-virtual/range {v26 .. v26}, Lgnu/math/Numeric;->toInexact()Lgnu/math/Numeric;

    move-result-object v27

    .line 231
    goto/16 :goto_f5

    .line 241
    .end local v24    # "num1":Lgnu/math/Numeric;
    .end local v25    # "num2":Lgnu/math/Numeric;
    .end local v26    # "numr":Lgnu/math/Numeric;
    :pswitch_28c
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Number;->intValue()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 242
    goto/16 :goto_fc

    .line 244
    :pswitch_296
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Number;->longValue()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    .line 245
    goto/16 :goto_fc

    .line 247
    :pswitch_2a0
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Number;->floatValue()F

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    .line 248
    goto/16 :goto_fc

    .line 250
    :pswitch_2aa
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v27

    .line 251
    goto/16 :goto_fc

    .line 253
    :pswitch_2b4
    invoke-static/range {v27 .. v27}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v27

    goto/16 :goto_fc

    .end local v4    # "arg2":Ljava/lang/Object;
    .end local v8    # "code2":I
    .end local v28    # "scode":I
    :cond_2ba
    move-object/from16 v24, v27

    .line 257
    goto/16 :goto_b

    .line 65
    :pswitch_data_2be
    .packed-switch 0x4
        :pswitch_b5
        :pswitch_b5
    .end packed-switch

    .line 92
    :pswitch_data_2c6
    .packed-switch 0x1
        :pswitch_df
        :pswitch_102
        :pswitch_8d
        :pswitch_11d
        :pswitch_163
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_1c1
    .end packed-switch

    .line 97
    :pswitch_data_2dc
    .packed-switch 0x8
        :pswitch_100
    .end packed-switch

    .line 238
    :pswitch_data_2e2
    .packed-switch 0x1
        :pswitch_28c
        :pswitch_296
        :pswitch_2b4
        :pswitch_fc
        :pswitch_fc
        :pswitch_fc
        :pswitch_2a0
        :pswitch_2aa
    .end packed-switch

    .line 111
    :pswitch_data_2f6
    .packed-switch 0x8
        :pswitch_11a
    .end packed-switch

    .line 123
    :pswitch_data_2fc
    .packed-switch 0x4
        :pswitch_127
        :pswitch_126
        :pswitch_13f
        :pswitch_13f
        :pswitch_150
    .end packed-switch

    .line 151
    :pswitch_data_30a
    .packed-switch 0x1
        :pswitch_18c
        :pswitch_18f
        :pswitch_192
        :pswitch_174
        :pswitch_195
    .end packed-switch

    .line 169
    :pswitch_data_318
    .packed-switch 0x4
        :pswitch_186
        :pswitch_184
        :pswitch_1a1
        :pswitch_1a9
        :pswitch_1b9
    .end packed-switch

    .line 191
    :pswitch_data_326
    .packed-switch 0x4
        :pswitch_1d4
        :pswitch_1d4
        :pswitch_1dc
        :pswitch_1f0
        :pswitch_204
    .end packed-switch

    .line 220
    :pswitch_data_334
    .packed-switch 0x5
        :pswitch_286
        :pswitch_274
        :pswitch_25f
    .end packed-switch
.end method

.method public getRoundingMode()I
    .registers 2

    .prologue
    .line 16
    iget v0, p0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    return v0
.end method

.method public numArgs()I
    .registers 3

    .prologue
    .line 262
    iget v0, p0, Lgnu/kawa/functions/DivideOp;->op:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    const/16 v0, -0xfff

    :goto_7
    return v0

    :cond_8
    const/16 v0, 0x2002

    goto :goto_7
.end method
