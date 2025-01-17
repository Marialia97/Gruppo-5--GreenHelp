.class public final Landroid/support/v4/widget/ListViewCompat;
.super Ljava/lang/Object;
.source "ListViewCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canScrollList(Landroid/widget/ListView;I)Z
    .registers 11
    .param p0, "listView"    # Landroid/widget/ListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "direction"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v7, v8, :cond_d

    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->canScrollList(I)Z

    move-result v5

    .line 85
    :cond_c
    :goto_c
    return v5

    .line 72
    :cond_d
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 73
    .local v0, "childCount":I
    if-eqz v0, :cond_c

    .line 77
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 78
    .local v1, "firstPosition":I
    if-lez p1, :cond_38

    .line 79
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 80
    .local v3, "lastBottom":I
    add-int v4, v1, v0

    .line 81
    .local v4, "lastPosition":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v7

    if-lt v4, v7, :cond_36

    .line 82
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    if-le v3, v7, :cond_c

    :cond_36
    move v5, v6

    goto :goto_c

    .line 84
    .end local v3    # "lastBottom":I
    .end local v4    # "lastPosition":I
    :cond_38
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    .line 85
    .local v2, "firstTop":I
    if-gtz v1, :cond_48

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v7

    if-ge v2, v7, :cond_c

    :cond_48
    move v5, v6

    goto :goto_c
.end method

.method public static scrollListBy(Landroid/widget/ListView;I)V
    .registers 7
    .param p0, "listView"    # Landroid/widget/ListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "y"    # I

    .prologue
    .line 37
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_a

    .line 39
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->scrollListBy(I)V

    .line 55
    :cond_9
    :goto_9
    return-void

    .line 42
    :cond_a
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 43
    .local v0, "firstPosition":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_9

    .line 47
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, "firstView":Landroid/view/View;
    if-eqz v1, :cond_9

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v2, v3, p1

    .line 53
    .local v2, "newTop":I
    invoke-virtual {p0, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_9
.end method
