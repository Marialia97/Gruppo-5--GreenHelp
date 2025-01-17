.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPropertyAnimatorListenerApi14"
.end annotation


# instance fields
.field mAnimEndCalled:Z

.field mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .registers 2
    .param p1, "vpa"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 47
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 100
    const/high16 v2, 0x7e000000

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 101
    .local v1, "listenerTag":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 102
    .local v0, "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    instance-of v2, v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_e

    move-object v0, v1

    .line 103
    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 105
    :cond_e
    if-eqz v0, :cond_13

    .line 106
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    .line 108
    :cond_13
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 74
    iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v3, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    if-le v3, v4, :cond_13

    .line 75
    iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v3, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    invoke-virtual {p1, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 76
    iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput v4, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    .line 78
    :cond_13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1d

    iget-boolean v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    if-nez v3, :cond_44

    .line 81
    :cond_1d
    iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v3, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    if-eqz v3, :cond_2e

    .line 82
    iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 83
    .local v0, "endAction":Ljava/lang/Runnable;
    iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object v5, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 84
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 86
    .end local v0    # "endAction":Ljava/lang/Runnable;
    :cond_2e
    const/high16 v3, 0x7e000000

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 87
    .local v2, "listenerTag":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 88
    .local v1, "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    instance-of v3, v2, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v3, :cond_3c

    move-object v1, v2

    .line 89
    check-cast v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 91
    :cond_3c
    if-eqz v1, :cond_41

    .line 92
    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 94
    :cond_41
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    .line 96
    .end local v1    # "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    .end local v2    # "listenerTag":Ljava/lang/Object;
    :cond_44
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 52
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    .line 54
    iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v3, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_f

    .line 55
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 57
    :cond_f
    iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v3, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    if-eqz v3, :cond_20

    .line 58
    iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v2, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 59
    .local v2, "startAction":Ljava/lang/Runnable;
    iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object v5, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 60
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 62
    .end local v2    # "startAction":Ljava/lang/Runnable;
    :cond_20
    const/high16 v3, 0x7e000000

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 63
    .local v1, "listenerTag":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 64
    .local v0, "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    instance-of v3, v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v3, :cond_2e

    move-object v0, v1

    .line 65
    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 67
    :cond_2e
    if-eqz v0, :cond_33

    .line 68
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    .line 70
    :cond_33
    return-void
.end method
