.class Landroid/support/v7/graphics/drawable/DrawableContainer;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableContainer.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/graphics/drawable/DrawableContainer$BlockInvalidateCallback;,
        Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DITHER:Z = true

.field private static final TAG:Ljava/lang/String; = "DrawableContainer"


# instance fields
.field private mAlpha:I

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mBlockInvalidateCallback:Landroid/support/v7/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

.field private mCurIndex:I

.field private mCurrDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

.field private mEnterAnimationEnd:J

.field private mExitAnimationEnd:J

.field private mHasAlpha:Z

.field private mHotspotBounds:Landroid/graphics/Rect;

.field private mLastDrawable:Landroid/graphics/drawable/Drawable;

.field private mLastIndex:I

.field private mMutated:Z


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 55
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 73
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 76
    iput v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 77
    iput v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 1172
    return-void
.end method

.method private initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 494
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroid/support/v7/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    if-nez v1, :cond_b

    .line 495
    new-instance v1, Landroid/support/v7/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-direct {v1}, Landroid/support/v7/graphics/drawable/DrawableContainer$BlockInvalidateCallback;-><init>()V

    iput-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroid/support/v7/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    .line 500
    :cond_b
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroid/support/v7/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->wrap(Landroid/graphics/drawable/Drawable$Callback;)Landroid/support/v7/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 502
    :try_start_18
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    if-gtz v1, :cond_27

    iget-boolean v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v1, :cond_27

    .line 503
    iget v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 505
    :cond_27
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    if-eqz v1, :cond_91

    .line 507
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v1, v1, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 516
    :cond_34
    :goto_34
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->isVisible()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 517
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 518
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->getState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 519
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->getLevel()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 520
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 521
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_65

    .line 522
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 524
    :cond_65
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_72

    .line 525
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 527
    :cond_72
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    .line 528
    .local v0, "hotspotBounds":Landroid/graphics/Rect;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_87

    if-eqz v0, :cond_87

    .line 529
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V
    :try_end_87
    .catchall {:try_start_18 .. :try_end_87} :catchall_ac

    .line 533
    :cond_87
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroid/support/v7/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-virtual {v1}, Landroid/support/v7/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->unwrap()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 535
    return-void

    .line 509
    .end local v0    # "hotspotBounds":Landroid/graphics/Rect;
    :cond_91
    :try_start_91
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    if-eqz v1, :cond_9e

    .line 510
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v1, v1, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 512
    :cond_9e
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    if-eqz v1, :cond_34

    .line 513
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v1, v1, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_ab
    .catchall {:try_start_91 .. :try_end_ab} :catchall_ac

    goto :goto_34

    .line 533
    :catchall_ac
    move-exception v1

    iget-object v2, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Landroid/support/v7/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-virtual {v2}, Landroid/support/v7/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->unwrap()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    throw v1
.end method

.method private needsMirroring()Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 106
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->isAutoMirrored()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static resolveDensity(Landroid/content/res/Resources;I)I
    .registers 4
    .param p0, "r"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "parentDensity"    # I

    .prologue
    .line 1207
    if-nez p0, :cond_8

    move v0, p1

    .line 1208
    .local v0, "densityDpi":I
    :goto_3
    if-nez v0, :cond_7

    const/16 v0, 0xa0

    .end local v0    # "densityDpi":I
    :cond_7
    return v0

    .line 1207
    :cond_8
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_3
.end method


# virtual methods
.method animate(Z)V
    .registers 14
    .param p1, "schedule"    # Z

    .prologue
    const-wide/16 v10, 0xff

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 538
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    .line 539
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 540
    .local v2, "now":J
    const/4 v1, 0x0

    .line 541
    .local v1, "animating":Z
    iget-object v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_69

    .line 542
    iget-wide v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_26

    .line 543
    iget-wide v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_50

    .line 544
    iget-object v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 545
    iput-wide v8, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 556
    :cond_26
    :goto_26
    iget-object v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_83

    .line 557
    iget-wide v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_43

    .line 558
    iget-wide v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_6c

    .line 559
    iget-object v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7, v7}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 560
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 561
    const/4 v4, -0x1

    iput v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 562
    iput-wide v8, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 573
    :cond_43
    :goto_43
    if-eqz p1, :cond_4f

    if-eqz v1, :cond_4f

    .line 574
    iget-object v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x10

    add-long/2addr v6, v2

    invoke-virtual {p0, v4, v6, v7}, Landroid/support/v7/graphics/drawable/DrawableContainer;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 576
    :cond_4f
    return-void

    .line 547
    :cond_50
    iget-wide v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    sub-long/2addr v4, v2

    mul-long/2addr v4, v10

    long-to-int v4, v4

    iget-object v5, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v5, v5, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    div-int v0, v4, v5

    .line 549
    .local v0, "animAlpha":I
    iget-object v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    rsub-int v5, v0, 0xff

    iget v6, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mAlpha:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 550
    const/4 v1, 0x1

    .line 551
    goto :goto_26

    .line 554
    .end local v0    # "animAlpha":I
    :cond_69
    iput-wide v8, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    goto :goto_26

    .line 564
    :cond_6c
    iget-wide v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    sub-long/2addr v4, v2

    mul-long/2addr v4, v10

    long-to-int v4, v4

    iget-object v5, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v5, v5, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    div-int v0, v4, v5

    .line 566
    .restart local v0    # "animAlpha":I
    iget-object v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mAlpha:I

    mul-int/2addr v5, v0

    div-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 567
    const/4 v1, 0x1

    .line 568
    goto :goto_43

    .line 571
    .end local v0    # "animAlpha":I
    :cond_83
    iput-wide v8, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_43
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 3
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 598
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0, p1}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 599
    return-void
.end method

.method public canApplyTheme()Z
    .registers 2
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 604
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method clearMutated()V
    .registers 2

    .prologue
    .line 639
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->clearMutated()V

    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mMutated:Z

    .line 641
    return-void
.end method

.method cloneConstantState()Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;
    .registers 2

    .prologue
    .line 635
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 90
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    :cond_9
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 93
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 95
    :cond_12
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mAlpha:I

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    .prologue
    .line 99
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 100
    invoke-virtual {v1}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .prologue
    .line 609
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 610
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 611
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 613
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 581
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getCurrentIndex()I
    .registers 2

    .prologue
    .line 417
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurIndex:I

    return v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 299
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    .line 300
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 304
    :goto_9
    return-void

    .line 302
    :cond_a
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    goto :goto_9
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 346
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantHeight()I

    move-result v0

    .line 348
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_e

    :cond_1a
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 338
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantWidth()I

    move-result v0

    .line 340
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_e

    :cond_1a
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public getMinimumHeight()I
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 362
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumHeight()I

    move-result v0

    .line 364
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_e

    :cond_1a
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getMinimumWidth()I
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 354
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumWidth()I

    move-result v0

    .line 356
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_e

    :cond_1a
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, -0x2

    .line 409
    :goto_d
    return v0

    .line 408
    :cond_e
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 409
    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->getOpacity()I

    move-result v0

    goto :goto_d
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 3
    .param p1, "outline"    # Landroid/graphics/Outline;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 136
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 138
    :cond_9
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "padding"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    iget-object v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v4}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    move-result-object v1

    .line 113
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz v1, :cond_2a

    .line 114
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 115
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    or-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->right:I

    or-int/2addr v4, v5

    if-eqz v4, :cond_28

    const/4 v2, 0x1

    .line 123
    .local v2, "result":Z
    :goto_19
    invoke-direct {p0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->needsMirroring()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 124
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 125
    .local v0, "left":I
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 126
    .local v3, "right":I
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 127
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 129
    .end local v0    # "left":I
    .end local v3    # "right":I
    :cond_27
    return v2

    .line 115
    .end local v2    # "result":Z
    :cond_28
    const/4 v2, 0x0

    goto :goto_19

    .line 117
    :cond_2a
    iget-object v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_35

    .line 118
    iget-object v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    .restart local v2    # "result":Z
    goto :goto_19

    .line 120
    .end local v2    # "result":Z
    :cond_35
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    .restart local v2    # "result":Z
    goto :goto_19
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 372
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v0, :cond_9

    .line 373
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->invalidateCache()V

    .line 375
    :cond_9
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1a

    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 376
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    :cond_1a
    return-void
.end method

.method public isAutoMirrored()Z
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    return v0
.end method

.method public isStateful()Z
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_13

    .line 254
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 255
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 256
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 257
    const/4 v0, 0x1

    .line 259
    :cond_13
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_27

    .line 260
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 261
    iget-boolean v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v1, :cond_27

    .line 262
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 265
    :cond_27
    iget-wide v2, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_30

    .line 266
    iput-wide v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 267
    const/4 v0, 0x1

    .line 269
    :cond_30
    iget-wide v2, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_39

    .line 270
    iput-wide v4, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 271
    const/4 v0, 0x1

    .line 273
    :cond_39
    if-eqz v0, :cond_3e

    .line 274
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->invalidateSelf()V

    .line 276
    :cond_3e
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 619
    iget-boolean v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mMutated:Z

    if-nez v1, :cond_17

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v1, p0, :cond_17

    .line 620
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->cloneConstantState()Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    move-result-object v0

    .line 621
    .local v0, "clone":Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;
    invoke-virtual {v0}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mutate()V

    .line 622
    invoke-virtual {p0, v0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->setConstantState(Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 623
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mMutated:Z

    .line 625
    .end local v0    # "clone":Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;
    :cond_17
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 222
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 224
    :cond_9
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 225
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 227
    :cond_12
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .registers 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 332
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->setLayoutDirection(II)Z

    move-result v0

    return v0
.end method

.method protected onLevelChange(I)Z
    .registers 3
    .param p1, "level"    # I

    .prologue
    .line 319
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 320
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    .line 325
    :goto_a
    return v0

    .line 322
    :cond_b
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 323
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    goto :goto_a

    .line 325
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected onStateChange([I)Z
    .registers 3
    .param p1, "state"    # [I

    .prologue
    .line 308
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 309
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 314
    :goto_a
    return v0

    .line 311
    :cond_b
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 312
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    goto :goto_a

    .line 314
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "what"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "when"    # J

    .prologue
    .line 382
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 383
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 385
    :cond_11
    return-void
.end method

.method selectDrawable(I)Z
    .registers 14
    .param p1, "index"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x1

    const/4 v10, -0x1

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 430
    iget v5, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurIndex:I

    if-ne p1, v5, :cond_b

    .line 485
    :goto_a
    return v1

    .line 433
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 439
    .local v2, "now":J
    iget-object v5, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v5, v5, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    if-lez v5, :cond_7d

    .line 440
    iget-object v5, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1e

    .line 441
    iget-object v5, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 443
    :cond_1e
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_76

    .line 444
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 445
    iget v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurIndex:I

    iput v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 446
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    int-to-long v6, v1

    add-long/2addr v6, v2

    iput-wide v6, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 455
    :cond_32
    :goto_32
    if-ltz p1, :cond_87

    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    if-ge p1, v1, :cond_87

    .line 456
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v1, p1}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 457
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 458
    iput p1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 459
    if-eqz v0, :cond_57

    .line 460
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    if-lez v1, :cond_54

    .line 461
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    int-to-long v6, v1

    add-long/2addr v6, v2

    iput-wide v6, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 463
    :cond_54
    invoke-direct {p0, v0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    .line 469
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_57
    :goto_57
    iget-wide v6, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v1, v6, v8

    if-nez v1, :cond_63

    iget-wide v6, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_71

    .line 470
    :cond_63
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_8c

    .line 471
    new-instance v1, Landroid/support/v7/graphics/drawable/DrawableContainer$1;

    invoke-direct {v1, p0}, Landroid/support/v7/graphics/drawable/DrawableContainer$1;-><init>(Landroid/support/v7/graphics/drawable/DrawableContainer;)V

    iput-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 482
    :goto_6e
    invoke-virtual {p0, v4}, Landroid/support/v7/graphics/drawable/DrawableContainer;->animate(Z)V

    .line 484
    :cond_71
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->invalidateSelf()V

    move v1, v4

    .line 485
    goto :goto_a

    .line 448
    :cond_76
    iput-object v11, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 449
    iput v10, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 450
    iput-wide v8, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_32

    .line 452
    :cond_7d
    iget-object v5, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_32

    .line 453
    iget-object v5, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_32

    .line 466
    :cond_87
    iput-object v11, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 467
    iput v10, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurIndex:I

    goto :goto_57

    .line 479
    :cond_8c
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/graphics/drawable/DrawableContainer;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_6e
.end method

.method public setAlpha(I)V
    .registers 6
    .param p1, "alpha"    # I

    .prologue
    .line 142
    iget-boolean v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mAlpha:I

    if-eq v0, p1, :cond_1e

    .line 143
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    .line 144
    iput p1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 145
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    .line 146
    iget-wide v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    .line 147
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 153
    :cond_1e
    :goto_1e
    return-void

    .line 149
    :cond_1f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->animate(Z)V

    goto :goto_1e
.end method

.method public setAutoMirrored(Z)V
    .registers 4
    .param p1, "mirrored"    # Z

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    if-eq v0, p1, :cond_17

    .line 237
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-boolean p1, v0, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    .line 238
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 239
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    .line 243
    :cond_17
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 4
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 172
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    .line 173
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_18

    .line 174
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-object p1, v0, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 175
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    .line 176
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 179
    :cond_18
    return-void
.end method

.method protected setConstantState(Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .registers 3
    .param p1, "state"    # Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    .prologue
    .line 1155
    iput-object p1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 1157
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurIndex:I

    if-ltz v0, :cond_17

    .line 1158
    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurIndex:I

    invoke-virtual {p1, v0}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 1159
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 1160
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->initializeDrawableForDisplay(Landroid/graphics/drawable/Drawable;)V

    .line 1165
    :cond_17
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastIndex:I

    .line 1166
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 1167
    return-void
.end method

.method setCurrentIndex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    .line 414
    return-void
.end method

.method public setDither(Z)V
    .registers 4
    .param p1, "dither"    # Z

    .prologue
    .line 162
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    if-eq v0, p1, :cond_17

    .line 163
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-boolean p1, v0, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 164
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 165
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 168
    :cond_17
    return-void
.end method

.method public setEnterFadeDuration(I)V
    .registers 3
    .param p1, "ms"    # I

    .prologue
    .line 206
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput p1, v0, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 207
    return-void
.end method

.method public setExitFadeDuration(I)V
    .registers 3
    .param p1, "ms"    # I

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput p1, v0, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 217
    return-void
.end method

.method public setHotspot(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 280
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 281
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 283
    :cond_9
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 287
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_15

    .line 288
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    .line 292
    :goto_b
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    .line 293
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 295
    :cond_14
    return-void

    .line 290
    :cond_15
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_b
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 183
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    .line 184
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_14

    .line 185
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-object p1, v0, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Landroid/content/res/ColorStateList;

    .line 186
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 188
    :cond_14
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 192
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    .line 193
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_14

    .line 194
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-object p1, v0, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 195
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 197
    :cond_14
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 5
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 396
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 397
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    .line 398
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 400
    :cond_d
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_16

    .line 401
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 403
    :cond_16
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "what"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 389
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 390
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 392
    :cond_11
    return-void
.end method

.method final updateDensity(Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 592
    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0, p1}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->updateDensity(Landroid/content/res/Resources;)V

    .line 593
    return-void
.end method
