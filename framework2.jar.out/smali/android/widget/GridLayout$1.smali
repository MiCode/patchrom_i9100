.class final Landroid/widget/GridLayout$1;
.super Landroid/widget/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2530
    invoke-direct {p0}, Landroid/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .locals 1
    .parameter "view"
    .parameter "viewSize"
    .parameter "mode"

    .prologue
    .line 2538
    const/high16 v0, -0x8000

    return v0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 1
    .parameter "view"
    .parameter "cellDelta"

    .prologue
    .line 2533
    const/high16 v0, -0x8000

    return v0
.end method
