.class public Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;
.super Ljava/lang/Object;
.source "IceCreamSandwichThemeHelper.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;


# instance fields
.field private final activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;)V
    .registers 2
    .param p1, "activity"    # Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    .line 23
    return-void
.end method


# virtual methods
.method public hasActionBar()Z
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public requestActionBar()V
    .registers 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 28
    return-void
.end method

.method public setActionBarAnimation(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 61
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 62
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_b

    .line 63
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 65
    :cond_b
    return-void
.end method

.method public setActionBarVisible(Z)Z
    .registers 9
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x0

    .line 32
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 33
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-nez v0, :cond_22

    .line 34
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    instance-of v1, v1, Lcom/google/appinventor/components/runtime/Form;

    if-eqz v1, :cond_20

    .line 35
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    check-cast v1, Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    check-cast v2, Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "ActionBar"

    const/16 v5, 0x38b

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_20
    move v1, v3

    .line 43
    :goto_21
    return v1

    .line 38
    :cond_22
    if-eqz p1, :cond_29

    .line 39
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 43
    :goto_27
    const/4 v1, 0x1

    goto :goto_21

    .line 41
    :cond_29
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    goto :goto_27
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 54
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_b

    .line 55
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    :cond_b
    return-void
.end method

.method public setTitle(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "black"    # Z

    .prologue
    .line 69
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 70
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_31

    .line 71
    if-eqz p2, :cond_32

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<font color=\"black\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    const/high16 v2, -0x1000000

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/ImageViewUtil;->setMenuButtonColor(Landroid/app/Activity;I)V

    .line 79
    :cond_31
    :goto_31
    return-void

    .line 75
    :cond_32
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/ImageViewUtil;->setMenuButtonColor(Landroid/app/Activity;I)V

    goto :goto_31
.end method
