.class final Landroid/widget/BounceController$BOUNCETWEENER$2;
.super Ljava/lang/Object;
.source "BounceController.java"

# interfaces
.implements Landroid/widget/BounceController$Tweener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BounceController$BOUNCETWEENER;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 439
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(ZF)F
    .locals 7
    .parameter "isStartFromDrag"
    .parameter "t"

    .prologue
    const v6, 0x3f23d70a

    const/high16 v5, 0x3f00

    const v4, 0x3ea3d70a

    const v3, 0x3e23d70a

    const v2, 0x3da3d70a

    .line 441
    const/4 v0, 0x0

    .line 443
    .local v0, ret:F
    if-eqz p1, :cond_4

    .line 444
    const v1, 0x400ccccd

    mul-float/2addr p2, v1

    .line 446
    const v1, 0x3f4ccccd

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 447
    mul-float v1, p2, p2

    div-float v0, v1, v6

    .line 469
    :goto_0
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-lez v1, :cond_8

    .line 470
    const/high16 v0, 0x3f80

    .line 474
    :cond_0
    :goto_1
    const/high16 v1, 0x3f80

    sub-float/2addr v1, v0

    return v1

    .line 448
    :cond_1
    const v1, 0x3fcccccd

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    .line 449
    const v1, 0x3f99999a

    sub-float/2addr p2, v1

    mul-float v1, p2, p2

    div-float/2addr v1, v4

    add-float v0, v1, v5

    goto :goto_0

    .line 450
    :cond_2
    const/high16 v1, 0x4000

    cmpg-float v1, p2, v1

    if-gez v1, :cond_3

    .line 451
    const v1, 0x3fe66666

    sub-float/2addr p2, v1

    mul-float v1, p2, p2

    div-float/2addr v1, v3

    const/high16 v2, 0x3f40

    add-float v0, v1, v2

    goto :goto_0

    .line 453
    :cond_3
    const v1, 0x40066666

    sub-float/2addr p2, v1

    mul-float v1, p2, p2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f60

    add-float v0, v1, v2

    goto :goto_0

    .line 456
    :cond_4
    const/high16 v1, 0x4040

    mul-float/2addr p2, v1

    .line 458
    const v1, 0x3fcccccd

    cmpg-float v1, p2, v1

    if-gez v1, :cond_5

    .line 459
    const v1, 0x3f4ccccd

    sub-float/2addr p2, v1

    mul-float v1, p2, p2

    div-float v0, v1, v6

    goto :goto_0

    .line 460
    :cond_5
    const v1, 0x4019999a

    cmpg-float v1, p2, v1

    if-gez v1, :cond_6

    .line 461
    const/high16 v1, 0x4000

    sub-float/2addr p2, v1

    mul-float v1, p2, p2

    div-float/2addr v1, v4

    add-float v0, v1, v5

    goto :goto_0

    .line 462
    :cond_6
    const v1, 0x40333333

    cmpg-float v1, p2, v1

    if-gez v1, :cond_7

    .line 463
    const v1, 0x40266666

    sub-float/2addr p2, v1

    mul-float v1, p2, p2

    div-float/2addr v1, v3

    const/high16 v2, 0x3f40

    add-float v0, v1, v2

    goto :goto_0

    .line 465
    :cond_7
    const v1, 0x4039999a

    sub-float/2addr p2, v1

    mul-float v1, p2, p2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f60

    add-float v0, v1, v2

    goto :goto_0

    .line 471
    :cond_8
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 472
    const/4 v0, 0x0

    goto :goto_1
.end method
