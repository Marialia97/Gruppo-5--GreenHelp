.class Lcom/google/common/reflect/TypeToken$2;
.super Lcom/google/common/reflect/Invokable$ConstructorInvokable;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeToken;->constructor(Ljava/lang/reflect/Constructor;)Lcom/google/common/reflect/Invokable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/Invokable$ConstructorInvokable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken;Ljava/lang/reflect/Constructor;)V
    .registers 3

    .prologue
    .line 491
    .local p0, "this":Lcom/google/common/reflect/TypeToken$2;, "Lcom/google/common/reflect/TypeToken.2;"
    .local p2, "x0":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$2;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-direct {p0, p2}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;-><init>(Ljava/lang/reflect/Constructor;)V

    return-void
.end method


# virtual methods
.method getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .registers 3

    .prologue
    .line 499
    .local p0, "this":Lcom/google/common/reflect/TypeToken$2;, "Lcom/google/common/reflect/TypeToken.2;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$2;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-super {p0}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/reflect/TypeToken;->access$000(Lcom/google/common/reflect/TypeToken;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .registers 3

    .prologue
    .line 496
    .local p0, "this":Lcom/google/common/reflect/TypeToken$2;, "Lcom/google/common/reflect/TypeToken.2;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$2;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-super {p0}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/reflect/TypeToken;->access$000(Lcom/google/common/reflect/TypeToken;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method getGenericReturnType()Ljava/lang/reflect/Type;
    .registers 3

    .prologue
    .line 493
    .local p0, "this":Lcom/google/common/reflect/TypeToken$2;, "Lcom/google/common/reflect/TypeToken.2;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$2;->this$0:Lcom/google/common/reflect/TypeToken;

    invoke-super {p0}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken;->resolveType(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerType()Lcom/google/common/reflect/TypeToken;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 502
    .local p0, "this":Lcom/google/common/reflect/TypeToken$2;, "Lcom/google/common/reflect/TypeToken.2;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$2;->this$0:Lcom/google/common/reflect/TypeToken;

    return-object v0
.end method
