.class public Lgnu/kawa/slib/srfi13$frame18;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13$frame17;->lambda41(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame18"
.end annotation


# instance fields
.field end1:Ljava/lang/Object;

.field final lambda$Fn42:Lgnu/expr/ModuleMethod;

.field final lambda$Fn43:Lgnu/expr/ModuleMethod;

.field rest:Ljava/lang/Object;

.field start1:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/srfi13$frame17;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame18;->lambda$Fn42:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x25

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame18;->lambda$Fn43:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame18;->lambda42()Ljava/lang/Object;

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

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x25

    if-ne v0, v1, :cond_f

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame18;->lambda43(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_e
.end method

.method lambda42()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 629
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnsuffix$Mnlength$Mnci:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame18;->staticLink:Lgnu/kawa/slib/srfi13$frame17;

    iget-object v1, v1, Lgnu/kawa/slib/srfi13$frame17;->s2:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame18;->rest:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda43(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 10
    .param p1, "start2"    # Ljava/lang/Object;
    .param p2, "end2"    # Ljava/lang/Object;

    .prologue
    .line 631
    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame18;->staticLink:Lgnu/kawa/slib/srfi13$frame17;

    iget-object v1, v1, Lgnu/kawa/slib/srfi13$frame17;->s1:Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame18;->start1:Ljava/lang/Object;

    :try_start_6
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_d} :catch_31

    move-result v2

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame18;->end1:Ljava/lang/Object;

    :try_start_10
    move-object v0, v4

    check-cast v0, Ljava/lang/Number;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_17} :catch_3b

    move-result v3

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame18;->staticLink:Lgnu/kawa/slib/srfi13$frame17;

    iget-object v4, v4, Lgnu/kawa/slib/srfi13$frame17;->s2:Ljava/lang/Object;

    :try_start_1c
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
    :try_end_23
    .catch Ljava/lang/ClassCastException; {:try_start_1c .. :try_end_23} :catch_45

    move-result v5

    :try_start_24
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I
    :try_end_2b
    .catch Ljava/lang/ClassCastException; {:try_start_24 .. :try_end_2b} :catch_4f

    move-result v6

    invoke-static/range {v1 .. v6}, Lgnu/kawa/slib/srfi13;->$PcStringSuffixLengthCi(Ljava/lang/Object;IILjava/lang/Object;II)I

    move-result v1

    return v1

    :catch_31
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v4, "%string-suffix-length-ci"

    const/4 v5, 0x1

    invoke-direct {v2, v1, v4, v5, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_3b
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "%string-suffix-length-ci"

    const/4 v5, 0x2

    invoke-direct {v2, v1, v3, v5, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_45
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "%string-suffix-length-ci"

    const/4 v4, 0x4

    invoke-direct {v2, v1, v3, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_4f
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "%string-suffix-length-ci"

    const/4 v4, 0x5

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 6

    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v2, 0x24

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

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x25

    if-ne v0, v1, :cond_11

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
