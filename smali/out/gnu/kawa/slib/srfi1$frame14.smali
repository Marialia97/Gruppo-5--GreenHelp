.class public Lgnu/kawa/slib/srfi1$frame14;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1$frame13;->lambda23recur(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame14"
.end annotation


# instance fields
.field final lambda$Fn12:Lgnu/expr/ModuleMethod;

.field final lambda$Fn13:Lgnu/expr/ModuleMethod;

.field lists:Ljava/lang/Object;

.field res:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/srfi1$frame13;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi1$frame14;->lambda$Fn12:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xd

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:969"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi1$frame14;->lambda$Fn13:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi1$frame14;->lambda24()Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_b

    .line 969
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi1$frame14;->lambda25(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method lambda24()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 969
    iget-object v0, p0, Lgnu/kawa/slib/srfi1$frame14;->lists:Ljava/lang/Object;

    invoke-static {v0}, Lgnu/kawa/slib/srfi1;->$PcCars$PlCdrs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda25(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "cars"    # Ljava/lang/Object;
    .param p2, "cdrs"    # Ljava/lang/Object;

    .prologue
    .line 969
    invoke-static {p1}, Lgnu/kawa/slib/srfi1;->isNotPair(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 971
    iget-object v1, p0, Lgnu/kawa/slib/srfi1$frame14;->res:Ljava/lang/Object;

    :try_start_8
    check-cast v1, Lgnu/lists/LList;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_a} :catch_33

    invoke-static {v1}, Lkawa/lib/lists;->reverse$Ex(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v1

    .line 975
    :goto_e
    return-object v1

    .line 972
    :cond_f
    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    iget-object v2, p0, Lgnu/kawa/slib/srfi1$frame14;->staticLink:Lgnu/kawa/slib/srfi1$frame13;

    iget-object v2, v2, Lgnu/kawa/slib/srfi1$frame13;->f:Lgnu/mapping/Procedure;

    invoke-virtual {v1, v2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 973
    .local v0, "head":Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_2a

    .line 974
    iget-object v1, p0, Lgnu/kawa/slib/srfi1$frame14;->staticLink:Lgnu/kawa/slib/srfi1$frame13;

    iget-object v2, p0, Lgnu/kawa/slib/srfi1$frame14;->res:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lgnu/kawa/slib/srfi1$frame13;->lambda23recur(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_e

    .line 975
    :cond_2a
    iget-object v1, p0, Lgnu/kawa/slib/srfi1$frame14;->staticLink:Lgnu/kawa/slib/srfi1$frame13;

    iget-object v2, p0, Lgnu/kawa/slib/srfi1$frame14;->res:Ljava/lang/Object;

    invoke-virtual {v1, p2, v2}, Lgnu/kawa/slib/srfi1$frame13;->lambda23recur(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_e

    .line 971
    .end local v0    # "head":Ljava/lang/Object;
    :catch_33
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "reverse!"

    const/4 v5, 0x1

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 6

    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_c

    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_b
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_11

    .line 969
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x2

    iput v0, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_10
.end method
