.class final enum Lcom/google/common/primitives/Chars$LexicographicalComparator;
.super Ljava/lang/Enum;
.source "Chars.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Chars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LexicographicalComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/primitives/Chars$LexicographicalComparator;",
        ">;",
        "Ljava/util/Comparator",
        "<[C>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/primitives/Chars$LexicographicalComparator;

.field public static final enum INSTANCE:Lcom/google/common/primitives/Chars$LexicographicalComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 400
    new-instance v0, Lcom/google/common/primitives/Chars$LexicographicalComparator;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/Chars$LexicographicalComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/primitives/Chars$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Chars$LexicographicalComparator;

    .line 399
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/primitives/Chars$LexicographicalComparator;

    sget-object v1, Lcom/google/common/primitives/Chars$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Chars$LexicographicalComparator;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/primitives/Chars$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/Chars$LexicographicalComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 399
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/Chars$LexicographicalComparator;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 399
    const-class v0, Lcom/google/common/primitives/Chars$LexicographicalComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/Chars$LexicographicalComparator;

    return-object v0
.end method

.method public static values()[Lcom/google/common/primitives/Chars$LexicographicalComparator;
    .registers 1

    .prologue
    .line 399
    sget-object v0, Lcom/google/common/primitives/Chars$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/Chars$LexicographicalComparator;

    invoke-virtual {v0}, [Lcom/google/common/primitives/Chars$LexicographicalComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/Chars$LexicographicalComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 399
    check-cast p1, [C

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [C

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Chars$LexicographicalComparator;->compare([C[C)I

    move-result v0

    return v0
.end method

.method public compare([C[C)I
    .registers 8
    .param p1, "left"    # [C
    .param p2, "right"    # [C

    .prologue
    .line 404
    array-length v3, p1

    array-length v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 405
    .local v1, "minLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 406
    aget-char v3, p1, v0

    aget-char v4, p2, v0

    invoke-static {v3, v4}, Lcom/google/common/primitives/Chars;->compare(CC)I

    move-result v2

    .line 407
    .local v2, "result":I
    if-eqz v2, :cond_14

    .line 411
    .end local v2    # "result":I
    :goto_13
    return v2

    .line 405
    .restart local v2    # "result":I
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 411
    .end local v2    # "result":I
    :cond_17
    array-length v3, p1

    array-length v4, p2

    sub-int v2, v3, v4

    goto :goto_13
.end method
