.class public final Landroid/view/MotionEvent$PointerProperties;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerProperties"
.end annotation


# instance fields
.field public id:I

.field public toolType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3844
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3845
    invoke-virtual {p0}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 3846
    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerProperties;)V
    .locals 0
    .parameter "other"

    .prologue
    .line 3853
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3854
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerProperties;->copyFrom(Landroid/view/MotionEvent$PointerProperties;)V

    .line 3855
    return-void
.end method

.method static synthetic access$000(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3840
    invoke-direct {p0, p1}, Landroid/view/MotionEvent$PointerProperties;->equals(Landroid/view/MotionEvent$PointerProperties;)Z

    move-result v0

    return v0
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 3
    .parameter "size"

    .prologue
    .line 3859
    new-array v0, p0, [Landroid/view/MotionEvent$PointerProperties;

    .line 3860
    .local v0, array:[Landroid/view/MotionEvent$PointerProperties;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 3861
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v0, v1

    .line 3860
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3863
    :cond_0
    return-object v0
.end method

.method private equals(Landroid/view/MotionEvent$PointerProperties;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 3909
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    iget v1, p1, Landroid/view/MotionEvent$PointerProperties;->id:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iget v1, p1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 3886
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 3887
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 3888
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerProperties;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 3896
    iget v0, p1, Landroid/view/MotionEvent$PointerProperties;->id:I

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 3897
    iget v0, p1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 3898
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 3902
    instance-of v0, p1, Landroid/view/MotionEvent$PointerProperties;

    if-eqz v0, :cond_0

    .line 3903
    check-cast p1, Landroid/view/MotionEvent$PointerProperties;

    .end local p1
    invoke-direct {p0, p1}, Landroid/view/MotionEvent$PointerProperties;->equals(Landroid/view/MotionEvent$PointerProperties;)Z

    move-result v0

    .line 3905
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 3914
    iget v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    iget v1, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method
