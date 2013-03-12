.class abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x5

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private mActionPopupShower:Ljava/lang/Runnable;

.field protected mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field protected mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mNumberPreviousOffsets:I

.field private mOnTop:Z

.field protected mPositionHasChanged:Z

.field protected mPositionX:I

.field protected mPositionY:I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field protected mbSwitchCursor:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V
    .locals 7
    .parameter
    .parameter "drawableLtr"
    .parameter "drawableRtl"
    .parameter "onTop"

    .prologue
    const/4 v2, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3308
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 3309
    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3297
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 3299
    iput-boolean v6, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 3304
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mOnTop:Z

    .line 3354
    new-array v1, v2, [J

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    .line 3355
    new-array v1, v2, [I

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    .line 3356
    iput v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 3357
    iput v5, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 3310
    new-instance v1, Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x10102c8

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 3312
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 3313
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3316
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 3320
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3322
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 3323
    iput-object p3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 3325
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 3327
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 3329
    .local v0, handleHeight:I
    iput-boolean p4, p0, Landroid/widget/Editor$HandleView;->mOnTop:Z

    .line 3331
    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mOnTop:Z

    if-nez v1, :cond_0

    .line 3332
    const v1, -0x41666666

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 3333
    const v1, 0x3f333333

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    .line 3339
    :goto_0
    return-void

    .line 3335
    :cond_0
    const v1, 0x3e99999a

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 3336
    const v1, -0x40cccccd

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    goto :goto_0
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 3365
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 3366
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 3367
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 3368
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 3369
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 9

    .prologue
    .line 3372
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 3373
    .local v3, now:J
    const/4 v0, 0x0

    .line 3374
    .local v0, i:I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 3375
    .local v2, index:I
    iget v5, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3376
    .local v1, iMax:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x96

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 3377
    add-int/lit8 v0, v0, 0x1

    .line 3378
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x5

    rem-int/lit8 v2, v5, 0x5

    goto :goto_0

    .line 3381
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x15e

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 3383
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 3385
    :cond_1
    return-void
.end method

.method private isVisible()Z
    .locals 3

    .prologue
    .line 3454
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 3455
    const/4 v0, 0x1

    .line 3462
    :goto_0
    return v0

    .line 3458
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3459
    const/4 v0, 0x0

    goto :goto_0

    .line 3462
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    #calls: Landroid/widget/Editor;->isPositionVisible(II)Z
    invoke-static {v0, v1, v2}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;II)Z

    move-result v0

    goto :goto_0
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 3360
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 3361
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 3362
    return-void
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .locals 1

    .prologue
    .line 3654
    const/4 v0, 0x1

    return v0
.end method

.method protected dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3411
    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 3412
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3413
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 3414
    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mbSwitchCursor:Z

    .line 3415
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 3418
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 3420
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 3421
    return-void
.end method

.method protected hideActionPopupWindow()V
    .locals 2

    .prologue
    .line 3440
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3441
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3443
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 3444
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    .line 3446
    :cond_1
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 3640
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 3449
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3388
    iget v1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 3648
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 3649
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 3555
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/Editor$HandleView;->mRight:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Editor$HandleView;->mBottom:I

    iget v3, p0, Landroid/widget/Editor$HandleView;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3556
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3557
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 3644
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 3645
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 3393
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    .line 3394
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 3561
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 3636
    :goto_0
    return v13

    .line 3563
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v11

    invoke-direct {p0, v11}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    .line 3564
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    iget v12, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iput v11, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 3565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    iget v12, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iput v11, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 3567
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v11}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v5

    .line 3568
    .local v5, positionListener:Landroid/widget/Editor$PositionListener;
    invoke-virtual {v5}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v11

    iput v11, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 3569
    invoke-virtual {v5}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v11

    iput v11, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 3570
    iput-boolean v13, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    goto :goto_0

    .line 3575
    .end local v5           #positionListener:Landroid/widget/Editor$PositionListener;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    .line 3576
    .local v7, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    .line 3579
    .local v8, rawY:F
    iget v11, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v12, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v12, v12

    sub-float v6, v11, v12

    .line 3580
    .local v6, previousVerticalOffset:F
    iget v11, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v11, v11

    sub-float v11, v8, v11

    iget v12, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v12, v12

    sub-float v1, v11, v12

    .line 3582
    .local v1, currentVerticalOffset:F
    iget v11, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v11, v6, v11

    if-gez v11, :cond_0

    .line 3583
    iget v11, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v1, v11}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 3584
    .local v4, newVerticalOffset:F
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 3594
    :goto_1
    iget v11, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v11, v11

    add-float/2addr v11, v4

    iput v11, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 3596
    iget v11, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float v11, v7, v11

    iget v12, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v12, v12

    add-float v2, v11, v12

    .line 3597
    .local v2, newPosX:F
    iget v11, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    sub-float v11, v8, v11

    iget v12, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float v3, v11, v12

    .line 3599
    .local v3, newPosY:F
    invoke-virtual {p0, v2, v3}, Landroid/widget/Editor$HandleView;->updatePosition(FF)V

    goto :goto_0

    .line 3586
    .end local v2           #newPosX:F
    .end local v3           #newPosY:F
    .end local v4           #newVerticalOffset:F
    :cond_0
    cmpg-float v11, v1, v6

    if-gez v11, :cond_1

    .line 3587
    iget v11, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v1, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 3588
    .restart local v4       #newVerticalOffset:F
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_1

    .line 3591
    .end local v4           #newVerticalOffset:F
    :cond_1
    iget v11, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v1, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 3592
    .restart local v4       #newVerticalOffset:F
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_1

    .line 3604
    .end local v1           #currentVerticalOffset:F
    .end local v4           #newVerticalOffset:F
    .end local v6           #previousVerticalOffset:F
    .end local v7           #rawX:F
    .end local v8           #rawY:F
    :pswitch_2
    const/4 v0, 0x0

    .line 3606
    .local v0, bRefreshCursor:Z
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->hasSelection()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3607
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v10

    .line 3608
    .local v10, selectionStart:I
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v9

    .line 3610
    .local v9, selectionEnd:I
    if-le v10, v9, :cond_4

    .line 3611
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v11}, Landroid/widget/Editor;->swapSelectionControllers()V

    .line 3612
    const/4 v0, 0x1

    .line 3621
    .end local v9           #selectionEnd:I
    .end local v10           #selectionStart:I
    :cond_2
    :goto_2
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v11}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3622
    if-nez v0, :cond_3

    .line 3623
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->refreshForSwitchingCursor()Z

    .line 3628
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp()V

    .line 3629
    iput-boolean v12, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 3615
    .restart local v9       #selectionEnd:I
    .restart local v10       #selectionStart:I
    :cond_4
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v11}, Landroid/widget/Editor;->switchStartHandle()Z

    move-result v0

    goto :goto_2

    .line 3633
    .end local v0           #bRefreshCursor:Z
    .end local v9           #selectionEnd:I
    .end local v10           #selectionStart:I
    :pswitch_3
    iput-boolean v12, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 3561
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 6
    .parameter "offset"
    .parameter "parentScrolled"

    .prologue
    const/4 v3, 0x1

    .line 3473
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 3474
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 3476
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 3506
    :cond_0
    :goto_0
    return-void

    .line 3480
    :cond_1
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    if-eq p1, v4, :cond_4

    move v2, v3

    .line 3481
    .local v2, offsetChanged:Z
    :goto_1
    if-nez v2, :cond_2

    if-eqz p2, :cond_0

    .line 3482
    :cond_2
    if-eqz v2, :cond_3

    .line 3483
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    .line 3484
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 3486
    :cond_3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 3488
    .local v1, line:I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    const/high16 v5, 0x3f00

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 3489
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 3492
    iget-boolean v4, p0, Landroid/widget/Editor$HandleView;->mOnTop:Z

    if-nez v4, :cond_5

    .line 3493
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 3500
    :goto_2
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 3501
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 3503
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 3504
    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    goto :goto_0

    .line 3480
    .end local v1           #line:I
    .end local v2           #offsetChanged:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 3495
    .restart local v1       #line:I
    .restart local v2       #offsetChanged:Z
    :cond_5
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    goto :goto_2
.end method

.method public refreshForSwitchingCursor()Z
    .locals 1

    .prologue
    .line 3657
    const/4 v0, 0x1

    return v0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 3397
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3408
    :goto_0
    return-void

    .line 3399
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 3402
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 3405
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 3407
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    goto :goto_0
.end method

.method showActionPopupWindow(I)V
    .locals 4
    .parameter "delay"

    .prologue
    .line 3424
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-nez v0, :cond_0

    .line 3425
    new-instance v0, Landroid/widget/Editor$ActionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    .line 3427
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 3428
    new-instance v0, Landroid/widget/Editor$HandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$HandleView$1;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    .line 3436
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3437
    return-void

    .line 3434
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 3342
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 3343
    .local v1, offset:I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 3344
    .local v0, isRtlCharAtOffset:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 3345
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 3346
    return-void

    .line 3344
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 6
    .parameter "parentPositionX"
    .parameter "parentPositionY"
    .parameter "parentPositionChanged"
    .parameter "parentScrolled"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 3510
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    invoke-virtual {p0, v2, p4}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 3511
    if-nez p3, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v2, :cond_4

    .line 3512
    :cond_0
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v2, :cond_3

    .line 3514
    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v2, :cond_1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v2, :cond_2

    .line 3515
    :cond_1
    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 3516
    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 3517
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 3518
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 3521
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 3524
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3525
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    add-int v0, p1, v2

    .line 3528
    .local v0, positionX:I
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mOnTop:Z

    if-nez v2, :cond_5

    .line 3529
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    add-int v1, p2, v2

    .line 3535
    .local v1, positionY:I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3536
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 3549
    .end local v0           #positionX:I
    .end local v1           #positionY:I
    :goto_1
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 3551
    :cond_4
    return-void

    .line 3531
    .restart local v0       #positionX:I
    :cond_5
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    add-int/2addr v2, p2

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int v1, v2, v3

    .restart local v1       #positionY:I
    goto :goto_0

    .line 3538
    :cond_6
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 3542
    .end local v0           #positionX:I
    .end local v1           #positionY:I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3543
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    goto :goto_1

    .line 3545
    :cond_8
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->hideInsertionPointCursorController()V
    invoke-static {v2}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)V

    goto :goto_1
.end method

.method protected abstract updateSelection(I)V
.end method
