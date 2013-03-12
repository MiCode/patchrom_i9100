.class Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;
.super Ljava/lang/Object;
.source "RelativeLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopToBottomLeftToRightComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1018
    iput-object p1, p0, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;->this$0:Landroid/widget/RelativeLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1018
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;)V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 6
    .parameter "first"
    .parameter "second"

    .prologue
    .line 1021
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v2, v4, v5

    .line 1022
    .local v2, topDifference:I
    if-eqz v2, :cond_0

    .line 1040
    .end local v2           #topDifference:I
    :goto_0
    return v2

    .line 1026
    .restart local v2       #topDifference:I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v4, v5

    .line 1027
    .local v1, leftDifference:I
    if-eqz v1, :cond_1

    move v2, v1

    .line 1028
    goto :goto_0

    .line 1031
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v0, v4, v5

    .line 1032
    .local v0, heightDiference:I
    if-eqz v0, :cond_2

    move v2, v0

    .line 1033
    goto :goto_0

    .line 1036
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int v3, v4, v5

    .line 1037
    .local v3, widthDiference:I
    if-eqz v3, :cond_3

    move v2, v3

    .line 1038
    goto :goto_0

    .line 1040
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1018
    check-cast p1, Landroid/view/View;

    .end local p1
    check-cast p2, Landroid/view/View;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
