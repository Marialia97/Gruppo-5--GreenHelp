.class public final Landroid/support/v4/graphics/PathSegment;
.super Ljava/lang/Object;
.source "PathSegment.java"


# instance fields
.field private final mEnd:Landroid/graphics/PointF;

.field private final mEndFraction:F

.field private final mStart:Landroid/graphics/PointF;

.field private final mStartFraction:F


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;FLandroid/graphics/PointF;F)V
    .registers 6
    .param p1, "start"    # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startFraction"    # F
    .param p3, "end"    # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "endFraction"    # F

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "start == null"

    invoke-static {p1, v0}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iput-object v0, p0, Landroid/support/v4/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    .line 39
    iput p2, p0, Landroid/support/v4/graphics/PathSegment;->mStartFraction:F

    .line 40
    const-string v0, "end == null"

    invoke-static {p3, v0}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iput-object v0, p0, Landroid/support/v4/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    .line 41
    iput p4, p0, Landroid/support/v4/graphics/PathSegment;->mEndFraction:F

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    if-ne p0, p1, :cond_5

    .line 78
    :cond_4
    :goto_4
    return v1

    .line 73
    :cond_5
    instance-of v3, p1, Landroid/support/v4/graphics/PathSegment;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 74
    check-cast v0, Landroid/support/v4/graphics/PathSegment;

    .line 75
    .local v0, "that":Landroid/support/v4/graphics/PathSegment;
    iget v3, p0, Landroid/support/v4/graphics/PathSegment;->mStartFraction:F

    iget v4, v0, Landroid/support/v4/graphics/PathSegment;->mStartFraction:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_36

    iget v3, p0, Landroid/support/v4/graphics/PathSegment;->mEndFraction:F

    iget v4, v0, Landroid/support/v4/graphics/PathSegment;->mEndFraction:F

    .line 76
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, p0, Landroid/support/v4/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    iget-object v4, v0, Landroid/support/v4/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    .line 77
    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/support/v4/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    iget-object v4, v0, Landroid/support/v4/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    .line 78
    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_36
    move v1, v2

    goto :goto_4
.end method

.method public getEnd()Landroid/graphics/PointF;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Landroid/support/v4/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getEndFraction()F
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Landroid/support/v4/graphics/PathSegment;->mEndFraction:F

    return v0
.end method

.method public getStart()Landroid/graphics/PointF;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v4/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getStartFraction()F
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Landroid/support/v4/graphics/PathSegment;->mStartFraction:F

    return v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 83
    iget-object v1, p0, Landroid/support/v4/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/graphics/PointF;->hashCode()I

    move-result v0

    .line 84
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget v1, p0, Landroid/support/v4/graphics/PathSegment;->mStartFraction:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_33

    iget v1, p0, Landroid/support/v4/graphics/PathSegment;->mStartFraction:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :goto_16
    add-int v0, v3, v1

    .line 85
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/support/v4/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    invoke-virtual {v3}, Landroid/graphics/PointF;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 86
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/support/v4/graphics/PathSegment;->mEndFraction:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_30

    iget v2, p0, Landroid/support/v4/graphics/PathSegment;->mEndFraction:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :cond_30
    add-int v0, v1, v2

    .line 87
    return v0

    :cond_33
    move v1, v2

    .line 84
    goto :goto_16
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PathSegment{start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/graphics/PathSegment;->mStart:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startFraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/graphics/PathSegment;->mStartFraction:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/graphics/PathSegment;->mEnd:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endFraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/graphics/PathSegment;->mEndFraction:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
