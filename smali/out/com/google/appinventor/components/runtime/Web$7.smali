.class Lcom/google/appinventor/components/runtime/Web$7;
.super Ljava/lang/Object;
.source "Web.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web;->performRequest(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Web;

.field final synthetic val$responseCode:I

.field final synthetic val$responseContent:Ljava/lang/String;

.field final synthetic val$responseType:Ljava/lang/String;

.field final synthetic val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Web;

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$7;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Web$7;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iput p3, p0, Lcom/google/appinventor/components/runtime/Web$7;->val$responseCode:I

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Web$7;->val$responseType:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/Web$7;->val$responseContent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$7;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$7;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    iget v2, p0, Lcom/google/appinventor/components/runtime/Web$7;->val$responseCode:I

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web$7;->val$responseType:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Web$7;->val$responseContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Web;->GotText(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1136
    return-void
.end method
