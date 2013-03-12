.class Lcom/android/server/wm/DimAnimator$Parameters;
.super Ljava/lang/Object;
.source "DimAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DimAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Parameters"
.end annotation


# instance fields
.field final mDimHeight:I

.field final mDimTarget:F

.field final mDimWidth:I

.field final mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowStateAnimator;IIF)V
    .locals 0
    .parameter "dimWinAnimator"
    .parameter "dimWidth"
    .parameter "dimHeight"
    .parameter "dimTarget"

    .prologue
    .line 208
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 210
    iput p2, p0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWidth:I

    .line 211
    iput p3, p0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimHeight:I

    .line 212
    iput p4, p0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimTarget:F

    .line 213
    return-void
.end method
