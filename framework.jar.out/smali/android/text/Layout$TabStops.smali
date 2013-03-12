.class Landroid/text/Layout$TabStops;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TabStops"
.end annotation


# instance fields
.field private mIncrement:I

.field private mNumStops:I

.field private mStops:[I


# direct methods
.method constructor <init>(I[Ljava/lang/Object;)V
    .locals 0
    .parameter "increment"
    .parameter "spans"

    .prologue
    .line 1605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1606
    invoke-virtual {p0, p1, p2}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    .line 1607
    return-void
.end method

.method public static nextDefaultStop(FI)F
    .locals 2
    .parameter "h"
    .parameter "inc"

    .prologue
    .line 1654
    int-to-float v0, p1

    add-float/2addr v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/2addr v0, p1

    int-to-float v0, v0

    return v0
.end method


# virtual methods
.method nextTab(F)F
    .locals 5
    .parameter "h"

    .prologue
    .line 1640
    iget v1, p0, Landroid/text/Layout$TabStops;->mNumStops:I

    .line 1641
    .local v1, ns:I
    if-lez v1, :cond_1

    .line 1642
    iget-object v3, p0, Landroid/text/Layout$TabStops;->mStops:[I

    .line 1643
    .local v3, stops:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1644
    aget v2, v3, v0

    .line 1645
    .local v2, stop:I
    int-to-float v4, v2

    cmpl-float v4, v4, p1

    if-lez v4, :cond_0

    .line 1646
    int-to-float v4, v2

    .line 1650
    .end local v0           #i:I
    .end local v2           #stop:I
    .end local v3           #stops:[I
    :goto_1
    return v4

    .line 1643
    .restart local v0       #i:I
    .restart local v2       #stop:I
    .restart local v3       #stops:[I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1650
    .end local v0           #i:I
    .end local v2           #stop:I
    .end local v3           #stops:[I
    :cond_1
    iget v4, p0, Landroid/text/Layout$TabStops;->mIncrement:I

    invoke-static {p1, v4}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v4

    goto :goto_1
.end method

.method reset(I[Ljava/lang/Object;)V
    .locals 10
    .parameter "increment"
    .parameter "spans"

    .prologue
    .line 1610
    iput p1, p0, Landroid/text/Layout$TabStops;->mIncrement:I

    .line 1612
    const/4 v4, 0x0

    .line 1613
    .local v4, ns:I
    if-eqz p2, :cond_6

    .line 1614
    iget-object v8, p0, Landroid/text/Layout$TabStops;->mStops:[I

    .line 1615
    .local v8, stops:[I
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v5, v4

    .end local v4           #ns:I
    .local v5, ns:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v7, v0, v2

    .line 1616
    .local v7, o:Ljava/lang/Object;
    instance-of v9, v7, Landroid/text/style/TabStopSpan;

    if-eqz v9, :cond_7

    .line 1617
    if-nez v8, :cond_1

    .line 1618
    const/16 v9, 0xa

    new-array v8, v9, [I

    .line 1626
    :cond_0
    :goto_1
    add-int/lit8 v4, v5, 0x1

    .end local v5           #ns:I
    .restart local v4       #ns:I
    check-cast v7, Landroid/text/style/TabStopSpan;

    .end local v7           #o:Ljava/lang/Object;
    invoke-interface {v7}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v9

    aput v9, v8, v5

    .line 1615
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4           #ns:I
    .restart local v5       #ns:I
    goto :goto_0

    .line 1619
    .restart local v7       #o:Ljava/lang/Object;
    :cond_1
    array-length v9, v8

    if-ne v5, v9, :cond_0

    .line 1620
    mul-int/lit8 v9, v5, 0x2

    new-array v6, v9, [I

    .line 1621
    .local v6, nstops:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v5, :cond_2

    .line 1622
    aget v9, v8, v1

    aput v9, v6, v1

    .line 1621
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1624
    :cond_2
    move-object v8, v6

    goto :goto_1

    .line 1629
    .end local v1           #i:I
    .end local v6           #nstops:[I
    .end local v7           #o:Ljava/lang/Object;
    :cond_3
    const/4 v9, 0x1

    if-le v5, v9, :cond_4

    .line 1630
    const/4 v9, 0x0

    invoke-static {v8, v9, v5}, Ljava/util/Arrays;->sort([III)V

    .line 1632
    :cond_4
    iget-object v9, p0, Landroid/text/Layout$TabStops;->mStops:[I

    if-eq v8, v9, :cond_5

    .line 1633
    iput-object v8, p0, Landroid/text/Layout$TabStops;->mStops:[I

    :cond_5
    move v4, v5

    .line 1636
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #ns:I
    .end local v8           #stops:[I
    .restart local v4       #ns:I
    :cond_6
    iput v4, p0, Landroid/text/Layout$TabStops;->mNumStops:I

    .line 1637
    return-void

    .end local v4           #ns:I
    .restart local v0       #arr$:[Ljava/lang/Object;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #ns:I
    .restart local v7       #o:Ljava/lang/Object;
    .restart local v8       #stops:[I
    :cond_7
    move v4, v5

    .end local v5           #ns:I
    .restart local v4       #ns:I
    goto :goto_2
.end method
