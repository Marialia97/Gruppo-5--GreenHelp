.class public Landroid/support/v7/app/AppCompatDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AppCompatDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    new-instance v0, Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "style"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 47
    instance-of v1, p1, Landroid/support/v7/app/AppCompatDialog;

    if-eqz v1, :cond_19

    move-object v0, p1

    .line 49
    check-cast v0, Landroid/support/v7/app/AppCompatDialog;

    .line 50
    .local v0, "acd":Landroid/support/v7/app/AppCompatDialog;
    packed-switch p2, :pswitch_data_1e

    .line 64
    .end local v0    # "acd":Landroid/support/v7/app/AppCompatDialog;
    :goto_a
    return-void

    .line 52
    .restart local v0    # "acd":Landroid/support/v7/app/AppCompatDialog;
    :pswitch_b
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 58
    :pswitch_14
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    goto :goto_a

    .line 62
    .end local v0    # "acd":Landroid/support/v7/app/AppCompatDialog;
    :cond_19
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    goto :goto_a

    .line 50
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_14
        :pswitch_b
    .end packed-switch
.end method
