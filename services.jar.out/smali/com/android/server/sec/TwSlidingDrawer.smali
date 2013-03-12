.class public Lcom/android/server/sec/TwSlidingDrawer;
.super Landroid/widget/SlidingDrawer;
.source "TwSlidingDrawer.java"


# instance fields
.field private mHandle:Landroid/view/View;

.field private mHandleId:I

.field public mTouched:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/sec/TwSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-boolean v3, p0, Lcom/android/server/sec/TwSlidingDrawer;->mTouched:Z

    .line 58
    sget-object v2, Lcom/android/internal/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 60
    .local v1, handleId:I
    if-nez v1, :cond_0

    .line 61
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_0
    iput v1, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandleId:I

    .line 66
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/android/server/sec/TwSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    invoke-super {p0}, Landroid/widget/SlidingDrawer;->onFinishInflate()V

    .line 77
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 82
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 84
    .local v2, y:F
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/sec/TwSlidingDrawer;->getTop()I

    move-result v5

    iget-object v3, p0, Lcom/android/server/sec/TwSlidingDrawer;->mHandle:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/sec/TwSlidingDrawer;->getBottom()I

    move-result v6

    invoke-direct {v0, v4, v5, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 86
    .local v0, frame:Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardServiceEx"

    const-string v4, "Clear button was clicked..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    const/4 v3, 0x0

    .line 91
    :goto_0
    return v3

    .line 90
    :cond_1
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "ClipboardServiceEx"

    const-string v4, "Clear button was NOT clicked..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/SlidingDrawer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method
