.class abstract Lcom/google/common/cache/Striped64;
.super Ljava/lang/Number;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/Striped64$ThreadHashCode;,
        Lcom/google/common/cache/Striped64$HashCode;,
        Lcom/google/common/cache/Striped64$Cell;
    }
.end annotation


# static fields
.field static final NCPU:I

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final baseOffset:J

.field private static final busyOffset:J

.field static final threadHashCode:Lcom/google/common/cache/Striped64$ThreadHashCode;


# instance fields
.field volatile transient base:J

.field volatile transient busy:I

.field volatile transient cells:[Lcom/google/common/cache/Striped64$Cell;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 145
    new-instance v2, Lcom/google/common/cache/Striped64$ThreadHashCode;

    invoke-direct {v2}, Lcom/google/common/cache/Striped64$ThreadHashCode;-><init>()V

    sput-object v2, Lcom/google/common/cache/Striped64;->threadHashCode:Lcom/google/common/cache/Striped64$ThreadHashCode;

    .line 148
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    sput v2, Lcom/google/common/cache/Striped64;->NCPU:I

    .line 306
    :try_start_11
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    .line 307
    const-class v1, Lcom/google/common/cache/Striped64;

    .line 308
    .local v1, "sk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "base"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/cache/Striped64;->baseOffset:J

    .line 310
    sget-object v2, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "busy"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/cache/Striped64;->busyOffset:J
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_35} :catch_36

    .line 315
    return-void

    .line 312
    :catch_36
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 170
    return-void
.end method

.method static synthetic access$000()Lsun/misc/Unsafe;
    .registers 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .registers 4

    .prologue
    .line 326
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 329
    :goto_4
    return-object v1

    .line 327
    :catch_5
    move-exception v1

    .line 329
    :try_start_6
    new-instance v1, Lcom/google/common/cache/Striped64$1;

    invoke-direct {v1}, Lcom/google/common/cache/Striped64$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_11
    .catch Ljava/security/PrivilegedActionException; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_4

    .line 341
    :catch_12
    move-exception v0

    .line 342
    .local v0, "e":Ljava/security/PrivilegedActionException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method final casBase(JJ)Z
    .registers 14
    .param p1, "cmp"    # J
    .param p3, "val"    # J

    .prologue
    .line 176
    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->baseOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method final casBusy()Z
    .registers 7

    .prologue
    .line 183
    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->busyOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method abstract fn(JJ)J
.end method

.method final internalReset(J)V
    .registers 8
    .param p1, "initialValue"    # J

    .prologue
    .line 288
    iget-object v1, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 289
    .local v1, "as":[Lcom/google/common/cache/Striped64$Cell;
    iput-wide p1, p0, Lcom/google/common/cache/Striped64;->base:J

    .line 290
    if-eqz v1, :cond_13

    .line 291
    array-length v3, v1

    .line 292
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v3, :cond_13

    .line 293
    aget-object v0, v1, v2

    .line 294
    .local v0, "a":Lcom/google/common/cache/Striped64$Cell;
    if-eqz v0, :cond_10

    .line 295
    iput-wide p1, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    .line 292
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 298
    .end local v0    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_13
    return-void
.end method

.method final retryUpdate(JLcom/google/common/cache/Striped64$HashCode;Z)V
    .registers 28
    .param p1, "x"    # J
    .param p3, "hc"    # Lcom/google/common/cache/Striped64$HashCode;
    .param p4, "wasUncontended"    # Z

    .prologue
    .line 209
    move-object/from16 v0, p3

    iget v10, v0, Lcom/google/common/cache/Striped64$HashCode;->code:I

    .line 210
    .local v10, "h":I
    const/4 v8, 0x0

    .line 213
    .local v8, "collide":Z
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .local v7, "as":[Lcom/google/common/cache/Striped64$Cell;
    if-eqz v7, :cond_ed

    array-length v15, v7

    .local v15, "n":I
    if-lez v15, :cond_ed

    .line 214
    add-int/lit8 v20, v15, -0x1

    and-int v20, v20, v10

    aget-object v6, v7, v20

    .local v6, "a":Lcom/google/common/cache/Striped64$Cell;
    if-nez v6, :cond_75

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v20, v0

    if-nez v20, :cond_67

    .line 216
    new-instance v16, Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    .line 217
    .local v16, "r":Lcom/google/common/cache/Striped64$Cell;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v20, v0

    if-nez v20, :cond_67

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v20

    if-eqz v20, :cond_67

    .line 218
    const/4 v9, 0x0

    .line 221
    .local v9, "created":Z
    :try_start_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v17, v0

    .local v17, "rs":[Lcom/google/common/cache/Striped64$Cell;
    if-eqz v17, :cond_4e

    move-object/from16 v0, v17

    array-length v14, v0

    .local v14, "m":I
    if-lez v14, :cond_4e

    add-int/lit8 v20, v14, -0x1

    and-int v13, v20, v10

    .local v13, "j":I
    aget-object v20, v17, v13

    if-nez v20, :cond_4e

    .line 224
    aput-object v16, v17, v13
    :try_end_4d
    .catchall {:try_start_36 .. :try_end_4d} :catchall_5d

    .line 225
    const/4 v9, 0x1

    .line 228
    .end local v13    # "j":I
    .end local v14    # "m":I
    :cond_4e
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 230
    if-eqz v9, :cond_5

    .line 281
    .end local v6    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v9    # "created":Z
    .end local v15    # "n":I
    .end local v16    # "r":Lcom/google/common/cache/Striped64$Cell;
    .end local v17    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    :cond_58
    :goto_58
    move-object/from16 v0, p3

    iput v10, v0, Lcom/google/common/cache/Striped64$HashCode;->code:I

    .line 282
    return-void

    .line 228
    .restart local v6    # "a":Lcom/google/common/cache/Striped64$Cell;
    .restart local v9    # "created":Z
    .restart local v15    # "n":I
    .restart local v16    # "r":Lcom/google/common/cache/Striped64$Cell;
    :catchall_5d
    move-exception v20

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v20

    .line 235
    .end local v9    # "created":Z
    .end local v16    # "r":Lcom/google/common/cache/Striped64$Cell;
    :cond_67
    const/4 v8, 0x0

    .line 259
    :cond_68
    :goto_68
    shl-int/lit8 v20, v10, 0xd

    xor-int v10, v10, v20

    .line 260
    ushr-int/lit8 v20, v10, 0x11

    xor-int v10, v10, v20

    .line 261
    shl-int/lit8 v20, v10, 0x5

    xor-int v10, v10, v20

    goto :goto_5

    .line 237
    :cond_75
    if-nez p4, :cond_7a

    .line 238
    const/16 p4, 0x1

    goto :goto_68

    .line 239
    :cond_7a
    iget-wide v0, v6, Lcom/google/common/cache/Striped64$Cell;->value:J

    move-wide/from16 v18, v0

    .local v18, "v":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v20

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v20

    if-nez v20, :cond_58

    .line 241
    sget v20, Lcom/google/common/cache/Striped64;->NCPU:I

    move/from16 v0, v20

    if-ge v15, v0, :cond_a2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-eq v0, v7, :cond_a4

    .line 242
    :cond_a2
    const/4 v8, 0x0

    goto :goto_68

    .line 243
    :cond_a4
    if-nez v8, :cond_a8

    .line 244
    const/4 v8, 0x1

    goto :goto_68

    .line 245
    :cond_a8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v20, v0

    if-nez v20, :cond_68

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v20

    if-eqz v20, :cond_68

    .line 247
    :try_start_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v0, v7, :cond_d8

    .line 248
    shl-int/lit8 v20, v15, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v17, v0

    .line 249
    .restart local v17    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_c9
    if-ge v11, v15, :cond_d2

    .line 250
    aget-object v20, v7, v11

    aput-object v20, v17, v11

    .line 249
    add-int/lit8 v11, v11, 0x1

    goto :goto_c9

    .line 251
    :cond_d2
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_d8
    .catchall {:try_start_b6 .. :try_end_d8} :catchall_e3

    .line 254
    .end local v11    # "i":I
    .end local v17    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    :cond_d8
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 256
    const/4 v8, 0x0

    .line 257
    goto/16 :goto_5

    .line 254
    :catchall_e3
    move-exception v20

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v20

    .line 263
    .end local v6    # "a":Lcom/google/common/cache/Striped64$Cell;
    .end local v15    # "n":I
    .end local v18    # "v":J
    :cond_ed
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/Striped64;->busy:I

    move/from16 v20, v0

    if-nez v20, :cond_142

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v0, v7, :cond_142

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v20

    if-eqz v20, :cond_142

    .line 264
    const/4 v12, 0x0

    .line 266
    .local v12, "init":Z
    :try_start_106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v0, v7, :cond_12c

    .line 267
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v17, v0

    .line 268
    .restart local v17    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    and-int/lit8 v20, v10, 0x1

    new-instance v21, Lcom/google/common/cache/Striped64$Cell;

    move-object/from16 v0, v21

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    aput-object v21, v17, v20

    .line 269
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_12b
    .catchall {:try_start_106 .. :try_end_12b} :catchall_138

    .line 270
    const/4 v12, 0x1

    .line 273
    .end local v17    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    :cond_12c
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 275
    if-eqz v12, :cond_5

    goto/16 :goto_58

    .line 273
    :catchall_138
    move-exception v20

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v20

    .line 278
    .end local v12    # "init":Z
    :cond_142
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/common/cache/Striped64;->base:J

    move-wide/from16 v18, v0

    .restart local v18    # "v":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/Striped64;->casBase(JJ)Z

    move-result v20

    if-eqz v20, :cond_5

    goto/16 :goto_58
.end method
