.class public Lgnu/kawa/slib/pregexp$frame4;
.super Lgnu/expr/ModuleBody;
.source "pregexp.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/pregexp$frame0;->lambda8loupP(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame4"
.end annotation


# instance fields
.field i:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field final lambda$Fn17:Lgnu/expr/ModuleMethod;

.field q:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/pregexp$frame0;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/16 v3, 0x1001

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:602"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/pregexp$frame4;->lambda$Fn17:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 602
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/pregexp$frame4;->lambda25(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method public lambda24loupQ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "i"    # Ljava/lang/Object;

    .prologue
    new-instance v1, Lgnu/kawa/slib/pregexp$frame5;

    invoke-direct {v1}, Lgnu/kawa/slib/pregexp$frame5;-><init>()V

    iput-object p0, v1, Lgnu/kawa/slib/pregexp$frame5;->staticLink:Lgnu/kawa/slib/pregexp$frame4;

    iput-object p1, v1, Lgnu/kawa/slib/pregexp$frame5;->k:Ljava/lang/Object;

    iput-object p2, v1, Lgnu/kawa/slib/pregexp$frame5;->i:Ljava/lang/Object;

    .line 612
    iget-object v2, v1, Lgnu/kawa/slib/pregexp$frame5;->fk:Lgnu/mapping/Procedure;

    iput-object v2, v1, Lgnu/kawa/slib/pregexp$frame5;->fk:Lgnu/mapping/Procedure;

    .line 614
    iget-object v2, p0, Lgnu/kawa/slib/pregexp$frame4;->q:Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_28

    sget-object v2, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v3, v1, Lgnu/kawa/slib/pregexp$frame5;->k:Ljava/lang/Object;

    iget-object v4, p0, Lgnu/kawa/slib/pregexp$frame4;->q:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_2e

    :cond_23
    invoke-virtual {v1}, Lgnu/kawa/slib/pregexp$frame5;->lambda26fk()Ljava/lang/Object;

    move-result-object v0

    .line 626
    :cond_27
    :goto_27
    return-object v0

    .line 614
    :cond_28
    iget-object v2, p0, Lgnu/kawa/slib/pregexp$frame4;->q:Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_23

    .line 615
    :cond_2e
    iget-object v2, p0, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iget-boolean v2, v2, Lgnu/kawa/slib/pregexp$frame0;->maximal$Qu:Z

    if-eqz v2, :cond_47

    .line 616
    iget-object v2, p0, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iget-object v2, v2, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    iget-object v3, p0, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iget-object v3, v3, Lgnu/kawa/slib/pregexp$frame0;->re:Ljava/lang/Object;

    iget-object v4, v1, Lgnu/kawa/slib/pregexp$frame5;->i:Ljava/lang/Object;

    iget-object v5, v1, Lgnu/kawa/slib/pregexp$frame5;->lambda$Fn18:Lgnu/expr/ModuleMethod;

    iget-object v1, v1, Lgnu/kawa/slib/pregexp$frame5;->fk:Lgnu/mapping/Procedure;

    invoke-virtual {v2, v3, v4, v5, v1}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_27

    .line 626
    :cond_47
    invoke-virtual {v1}, Lgnu/kawa/slib/pregexp$frame5;->lambda26fk()Ljava/lang/Object;

    move-result-object v0

    .local v0, "x":Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v2, :cond_27

    iget-object v2, p0, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iget-object v2, v2, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    iget-object v3, p0, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iget-object v3, v3, Lgnu/kawa/slib/pregexp$frame0;->re:Ljava/lang/Object;

    iget-object v4, v1, Lgnu/kawa/slib/pregexp$frame5;->i:Ljava/lang/Object;

    iget-object v5, v1, Lgnu/kawa/slib/pregexp$frame5;->lambda$Fn19:Lgnu/expr/ModuleMethod;

    iget-object v1, v1, Lgnu/kawa/slib/pregexp$frame5;->fk:Lgnu/mapping/Procedure;

    invoke-virtual {v2, v3, v4, v5, v1}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_27
.end method

.method lambda25(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "i1"    # Ljava/lang/Object;

    .prologue
    .line 602
    iget-object v0, p0, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iget-boolean v0, v0, Lgnu/kawa/slib/pregexp$frame0;->could$Mnloop$Mninfinitely$Qu:Z

    if-eqz v0, :cond_33

    sget-object v0, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 604
    iget-object v1, p0, Lgnu/kawa/slib/pregexp$frame4;->i:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_22

    .line 605
    :goto_12
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lgnu/kawa/slib/pregexp;->Lit101:Lgnu/mapping/SimpleSymbol;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lgnu/kawa/slib/pregexp;->Lit110:Lgnu/mapping/SimpleSymbol;

    aput-object v2, v0, v1

    invoke-static {v0}, Lgnu/kawa/slib/pregexp;->pregexpError$V([Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    :cond_22
    iget-object v0, p0, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v2, p0, Lgnu/kawa/slib/pregexp$frame4;->k:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/pregexp;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lgnu/kawa/slib/pregexp$frame0;->lambda8loupP(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 603
    :cond_33
    iget-object v0, p0, Lgnu/kawa/slib/pregexp$frame4;->staticLink:Lgnu/kawa/slib/pregexp$frame0;

    iget-boolean v0, v0, Lgnu/kawa/slib/pregexp$frame0;->could$Mnloop$Mninfinitely$Qu:Z

    if-eqz v0, :cond_22

    goto :goto_12
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 6

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_f

    .line 602
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x1

    iput v0, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_e
.end method