.class Lcom/google/appinventor/components/runtime/FusiontablesControl$1;
.super Ljava/lang/Object;
.source "FusiontablesControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FusiontablesControl;->showNoticeAndDie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$1;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$1;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$000(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 267
    return-void
.end method
