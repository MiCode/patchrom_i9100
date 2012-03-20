.class public final Landroid/view/VelocityTracker$Estimator;
.super Ljava/lang/Object;
.source "VelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VelocityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Estimator"
.end annotation


# static fields
.field private static final MAX_DEGREE:I = 0x2


# instance fields
.field public confidence:F

.field public degree:I

.field public final xCoeff:[F

.field public final yCoeff:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 311
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/view/VelocityTracker$Estimator;->xCoeff:[F

    .line 323
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/view/VelocityTracker$Estimator;->yCoeff:[F

    return-void
.end method

.method private estimate(F[F)F
    .locals 4
    .parameter "time"
    .parameter "c"

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, a:F
    const/high16 v2, 0x3f80

    .line 356
    .local v2, scale:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Landroid/view/VelocityTracker$Estimator;->degree:I

    if-gt v1, v3, :cond_0

    .line 357
    aget v3, p2, v1

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    .line 358
    mul-float/2addr v2, p1

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :cond_0
    return v0
.end method


# virtual methods
.method public estimateX(F)F
    .locals 1
    .parameter "time"

    .prologue
    .line 341
    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->xCoeff:[F

    invoke-direct {p0, p1, v0}, Landroid/view/VelocityTracker$Estimator;->estimate(F[F)F

    move-result v0

    return v0
.end method

.method public estimateY(F)F
    .locals 1
    .parameter "time"

    .prologue
    .line 350
    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->yCoeff:[F

    invoke-direct {p0, p1, v0}, Landroid/view/VelocityTracker$Estimator;->estimate(F[F)F

    move-result v0

    return v0
.end method
