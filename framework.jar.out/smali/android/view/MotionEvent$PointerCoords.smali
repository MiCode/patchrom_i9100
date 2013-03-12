.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field public SumSize:F

.field public angle:F

.field public eccen:F

.field private mPackedAxisBits:J

.field private mPackedAxisValues:[F

.field public orientation:F

.field public palm:F

.field public pressure:F

.field public size:F

.field public surfaceMajor:F

.field public surfaceMinor:F

.field public surfaceSize:F

.field public toolMajor:F

.field public toolMinor:F

.field public touchMajor:F

.field public touchMinor:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3455
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3456
    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 0
    .parameter "other"

    .prologue
    .line 3464
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3465
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    .line 3466
    return-void
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 3
    .parameter "size"

    .prologue
    .line 3470
    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    .line 3471
    .local v0, array:[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 3472
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    .line 3471
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3474
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3592
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3594
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3595
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3596
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3597
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3598
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3599
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3600
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3601
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3602
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3604
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->SumSize:F

    .line 3607
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->angle:F

    .line 3608
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->eccen:F

    .line 3611
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 8
    .parameter "other"

    .prologue
    const/4 v7, 0x0

    .line 3619
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3620
    .local v0, bits:J
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3621
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_2

    .line 3622
    iget-object v3, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3623
    .local v3, otherValues:[F
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    .line 3624
    .local v2, count:I
    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3625
    .local v4, values:[F
    if-eqz v4, :cond_0

    array-length v5, v4

    if-le v2, v5, :cond_1

    .line 3626
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 3627
    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3629
    :cond_1
    invoke-static {v3, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3632
    .end local v2           #count:I
    .end local v3           #otherValues:[F
    .end local v4           #values:[F
    :cond_2
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3633
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3634
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3635
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3636
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3637
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3638
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3639
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3640
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3654
    const-string/jumbo v5, "ro.revision"

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_3

    .line 3667
    :cond_3
    return-void
.end method

.method public getAxisValue(I)F
    .locals 11
    .parameter "axis"

    .prologue
    const-wide/16 v9, 0x1

    .line 3679
    sparse-switch p1, :sswitch_data_0

    .line 3720
    if-ltz p1, :cond_0

    const/16 v5, 0x3f

    if-le p1, v5, :cond_1

    .line 3721
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Axis out of range."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3681
    :sswitch_0
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3729
    :goto_0
    return v5

    .line 3683
    :sswitch_1
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_0

    .line 3685
    :sswitch_2
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_0

    .line 3687
    :sswitch_3
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_0

    .line 3689
    :sswitch_4
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_0

    .line 3691
    :sswitch_5
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_0

    .line 3693
    :sswitch_6
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_0

    .line 3695
    :sswitch_7
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_0

    .line 3697
    :sswitch_8
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_0

    .line 3700
    :sswitch_9
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceSize:F

    goto :goto_0

    .line 3702
    :sswitch_a
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceMajor:F

    goto :goto_0

    .line 3704
    :sswitch_b
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceMinor:F

    goto :goto_0

    .line 3706
    :sswitch_c
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->angle:F

    goto :goto_0

    .line 3708
    :sswitch_d
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    goto :goto_0

    .line 3713
    :sswitch_e
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->SumSize:F

    goto :goto_0

    .line 3717
    :sswitch_f
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->eccen:F

    goto :goto_0

    .line 3723
    :cond_1
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3724
    .local v2, bits:J
    shl-long v0, v9, p1

    .line 3725
    .local v0, axisBit:J
    and-long v5, v2, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 3726
    const/4 v5, 0x0

    goto :goto_0

    .line 3728
    :cond_2
    sub-long v5, v0, v9

    and-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 3729
    .local v4, index:I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget v5, v5, v4

    goto :goto_0

    .line 3679
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x30 -> :sswitch_9
        0x31 -> :sswitch_a
        0x32 -> :sswitch_b
        0x33 -> :sswitch_c
        0x34 -> :sswitch_d
        0x35 -> :sswitch_f
        0x36 -> :sswitch_e
    .end sparse-switch
.end method

.method public setAxisValue(IF)V
    .locals 13
    .parameter "axis"
    .parameter "value"

    .prologue
    const-wide/16 v9, 0x1

    const/4 v12, 0x0

    .line 3744
    sparse-switch p1, :sswitch_data_0

    .line 3799
    :goto_0
    if-ltz p1, :cond_0

    const/16 v8, 0x3f

    if-le p1, v8, :cond_1

    .line 3800
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Axis out of range."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3746
    :sswitch_0
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3831
    :goto_1
    return-void

    .line 3749
    :sswitch_1
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_1

    .line 3752
    :sswitch_2
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_1

    .line 3755
    :sswitch_3
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_1

    .line 3758
    :sswitch_4
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_1

    .line 3761
    :sswitch_5
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_1

    .line 3764
    :sswitch_6
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_1

    .line 3767
    :sswitch_7
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_1

    .line 3770
    :sswitch_8
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_1

    .line 3774
    :sswitch_9
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceSize:F

    goto :goto_1

    .line 3777
    :sswitch_a
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceMajor:F

    goto :goto_1

    .line 3780
    :sswitch_b
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->surfaceMinor:F

    goto :goto_1

    .line 3783
    :sswitch_c
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->angle:F

    goto :goto_1

    .line 3786
    :sswitch_d
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    goto :goto_1

    .line 3792
    :sswitch_e
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->SumSize:F

    .line 3796
    :sswitch_f
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->eccen:F

    goto :goto_0

    .line 3802
    :cond_1
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3803
    .local v2, bits:J
    shl-long v0, v9, p1

    .line 3804
    .local v0, axisBit:J
    sub-long v8, v0, v9

    and-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    .line 3805
    .local v5, index:I
    iget-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3806
    .local v7, values:[F
    and-long v8, v2, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 3807
    if-nez v7, :cond_4

    .line 3808
    const/16 v8, 0x8

    new-array v7, v8, [F

    .line 3809
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3826
    :cond_2
    :goto_2
    or-long v8, v2, v0

    iput-wide v8, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3828
    :cond_3
    aput p2, v7, v5

    goto :goto_1

    .line 3811
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 3812
    .local v4, count:I
    array-length v8, v7

    if-ge v4, v8, :cond_5

    .line 3813
    if-eq v5, v4, :cond_2

    .line 3814
    add-int/lit8 v8, v5, 0x1

    sub-int v9, v4, v5

    invoke-static {v7, v5, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 3818
    :cond_5
    mul-int/lit8 v8, v4, 0x2

    new-array v6, v8, [F

    .line 3819
    .local v6, newValues:[F
    invoke-static {v7, v12, v6, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3820
    add-int/lit8 v8, v5, 0x1

    sub-int v9, v4, v5

    invoke-static {v7, v5, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3822
    move-object v7, v6

    .line 3823
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_2

    .line 3744
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x30 -> :sswitch_9
        0x31 -> :sswitch_a
        0x32 -> :sswitch_b
        0x33 -> :sswitch_c
        0x34 -> :sswitch_d
        0x35 -> :sswitch_f
        0x36 -> :sswitch_e
    .end sparse-switch
.end method
