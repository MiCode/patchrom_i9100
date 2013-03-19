.class public abstract Lcom/sec/android/glview/TwGLView;
.super Ljava/lang/Object;
.source "TwGLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;,
        Lcom/sec/android/glview/TwGLView$OnClickListener;,
        Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;,
        Lcom/sec/android/glview/TwGLView$OnFocusListener;,
        Lcom/sec/android/glview/TwGLView$OnKeyListener;,
        Lcom/sec/android/glview/TwGLView$OnTouchListener;,
        Lcom/sec/android/glview/TwGLView$OnDragListener;
    }
.end annotation


# static fields
.field public static final CLICKABLE:I = 0x4000

.field public static final DISABLED:I = 0x20

.field private static final DRAG_HOLD_TIME_ABSOLUTE:I = 0x0

.field private static final DRAG_HOLD_TIME_HIGH:I = 0x12c

.field private static final DRAG_HOLD_TIME_NORMAL:I = 0x1f4

.field public static final DRAG_SENSITIVITY_ABSOLUTE:I = 0x0

.field public static final DRAG_SENSITIVITY_HIGH:I = 0x1

.field public static final DRAG_SENSITIVITY_NORMAL:I = 0x2

.field public static final FOCUSABLE:I = 0x1

.field private static final FOCUSABLE_MASK:I = 0x1

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field public static final GONE:I = 0x8

.field public static final H_ALIGN_CENTER:I = 0x2

.field public static final H_ALIGN_LEFT:I = 0x1

.field public static final H_ALIGN_NONE:I = 0x0

.field public static final H_ALIGN_RIGHT:I = 0x3

.field public static final INVISIBLE:I = 0x4

.field public static final NOT_FOCUSABLE:I = 0x0

.field private static final NO_ID:I = -0x1

.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0x2

.field public static final ORIENTATION_270:I = 0x3

.field public static final ORIENTATION_90:I = 0x1

.field public static final VISIBLE:I = 0x0

.field public static final V_ALIGN_BOTTOM:I = 0x3

.field public static final V_ALIGN_MIDDLE:I = 0x2

.field public static final V_ALIGN_NONE:I = 0x0

.field public static final V_ALIGN_TOP:I = 0x1


# instance fields
.field private glCoordinate:[F

.field private glTransformedCoordinate:[F

.field private isNinePatchBackground:Z

.field protected mAlpha:F

.field protected mAlphaChanged:Z

.field private mAnimGLMatrix:[F

.field private mAnimMatrix:[F

.field private mAnimation:Landroid/view/animation/Animation;

.field private mAnimationFinished:Z

.field private mAnimationPending:Z

.field private mAnimationStarted:Z

.field private mAnimationStartedEvent:Z

.field private mAnimationTimeSet:Z

.field protected mAsyncLoad:Z

.field private mBackground:Lcom/sec/android/glview/TwGLView;

.field private mBackgroundResId:I

.field protected mBaseLeft:F

.field protected mBaseTop:F

.field private mBound:Landroid/graphics/RectF;

.field private mBypassTouch:Z

.field private mCenterPivot:Z

.field private mClipRect:Landroid/graphics/Rect;

.field private mClipping:Z

.field private mCombinedMatrix:[F

.field private mContinuousDrawMode:Z

.field private mDefaultOrientation:I

.field private mDragSensitivity:I

.field private mDragVibration:Z

.field private mDraggable:Z

.field protected mDragging:Z

.field protected mDrawFirstTime:Z

.field private mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

.field private mFocused:Z

.field protected final mGLContext:Lcom/sec/android/glview/TwGLContext;

.field protected mHasExtraDescription:Z

.field private mHideAfterAnimation:Z

.field private mHoverFocused:Z

.field private mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

.field protected mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

.field protected mHoverPopupGravity:I

.field protected mHoverPopupOffsetX:I

.field protected mHoverPopupOffsetY:I

.field protected mInScreen:Z

.field private mInternalFocus:Z

.field protected mIsClipped:Z

.field private mLastOrientation:I

.field protected mLayoutUpdated:Z

.field private mLeft:F

.field private mLeftBottom:[F

.field private mLeftTop:[F

.field private mLeftTopCoordinates:[Landroid/graphics/RectF;

.field public mLoaded:Z

.field private mLoading:Z

.field protected mManualClip:Z

.field private mMatrix:[F

.field private mNextFocusDownId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field private mOldClipRect:Landroid/graphics/Rect;

.field protected mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

.field protected mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

.field protected mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

.field protected mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

.field protected mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

.field private mOnOrientationChangedListener:Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

.field protected mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

.field private mOrientation:I

.field protected mOriginalLeft:F

.field protected mOriginalTop:F

.field protected mPaddings:Landroid/graphics/Rect;

.field public mParent:Lcom/sec/android/glview/TwGLView;

.field protected mParentClipRect:Landroid/graphics/Rect;

.field private mParentHAlign:I

.field private mParentVAlign:I

.field protected mPositionChanged:Z

.field private mPreviousDragX:F

.field private mPreviousDragY:F

.field private mRightBottom:[F

.field private mRightTop:[F

.field private mRotatable:Z

.field private mRotateAnimation:Z

.field private mRotateAnimationDuration:I

.field private mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mRotationMatrix:[F

.field private mScaleMatrix:[F

.field private mScaleX:F

.field private mScaleY:F

.field protected mSizeGiven:Z

.field protected mSizeSpecified:Z

.field public mSubTitle:Ljava/lang/String;

.field private mTempMatrix:[F

.field private mTempOrientation:I

.field protected mThis:Lcom/sec/android/glview/TwGLView;

.field public mTitle:Ljava/lang/String;

.field private mToggleButton:Z

.field private mTop:F

.field private mTransformation:Landroid/view/animation/Transformation;

.field protected mTransformedScreenCoordinate:[F

.field private mTranslateX:F

.field private mTranslateY:F

.field private mTranslationMatrix:[F

.field protected mViewFlags:I

.field private mViewId:I

.field private mViewTag:I

.field private mVisibility:I

.field private setDragging:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"

    .prologue
    const/4 v6, 0x2

    const/16 v2, 0x10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 696
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 76
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 79
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 82
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 85
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 88
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 91
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    .line 94
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 97
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    .line 100
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 102
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 120
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 130
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    .line 132
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 167
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    .line 170
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    .line 173
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    .line 176
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    .line 179
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .line 182
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    .line 185
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 188
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    .line 191
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    .line 194
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    .line 197
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    .line 200
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 203
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 206
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    .line 209
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 212
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 215
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    .line 218
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z

    .line 233
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 236
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    .line 239
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 242
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    .line 245
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    .line 248
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    .line 250
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 252
    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I

    .line 279
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    .line 282
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    .line 285
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 287
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 297
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 299
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 309
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 312
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->isNinePatchBackground:Z

    .line 315
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 318
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 324
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAlphaChanged:Z

    .line 327
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    .line 330
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    .line 333
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    .line 336
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    .line 339
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 342
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 344
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 346
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 351
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    .line 354
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    .line 366
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    .line 369
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    .line 372
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    .line 375
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    .line 377
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mAsyncLoad:Z

    .line 379
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    .line 382
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    .line 389
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 391
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 393
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 395
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 397
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 399
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    .line 403
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 405
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 409
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 410
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetX:I

    .line 411
    iput v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetY:I

    .line 412
    const/16 v1, 0x5053

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupGravity:I

    .line 413
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mHasExtraDescription:Z

    .line 416
    new-instance v1, Lcom/sec/android/glview/TwGLView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$1;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    .line 457
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    .line 524
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 552
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 571
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 577
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 609
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 635
    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    .line 697
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    .line 698
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iput p2, v1, Landroid/graphics/RectF;->left:F

    .line 699
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iput p3, v1, Landroid/graphics/RectF;->top:F

    .line 701
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 702
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 704
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 705
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 707
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 708
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetTransformMatrix()V

    .line 710
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    .line 711
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 713
    invoke-virtual {p0, v3, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 714
    invoke-virtual {p0, v5, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 715
    invoke-virtual {p0, v6, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 716
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 718
    iput-object p0, p0, Lcom/sec/android/glview/TwGLView;->mThis:Lcom/sec/android/glview/TwGLView;

    .line 720
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 721
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x2

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 737
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 76
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 79
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 82
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 85
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 88
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 91
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    .line 94
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 97
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    .line 100
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 102
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 120
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 130
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    .line 132
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 167
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    .line 170
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    .line 173
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    .line 176
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    .line 179
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .line 182
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    .line 185
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 188
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    .line 191
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    .line 194
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    .line 197
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    .line 200
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    .line 203
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 206
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    .line 209
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 212
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 215
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    .line 218
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z

    .line 233
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 236
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    .line 239
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 242
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    .line 245
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    .line 248
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    .line 250
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 252
    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I

    .line 279
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    .line 282
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    .line 285
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    .line 287
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 297
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 299
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 309
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 312
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->isNinePatchBackground:Z

    .line 315
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 318
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 324
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mAlphaChanged:Z

    .line 327
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    .line 330
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    .line 333
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    .line 336
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    .line 339
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 342
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 344
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 346
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 351
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    .line 354
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    .line 366
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    .line 369
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    .line 372
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    .line 375
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    .line 377
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mAsyncLoad:Z

    .line 379
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    .line 382
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    .line 389
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 391
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 393
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 395
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 397
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 399
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    .line 403
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 405
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 409
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 410
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetX:I

    .line 411
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetY:I

    .line 412
    const/16 v1, 0x5053

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupGravity:I

    .line 413
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mHasExtraDescription:Z

    .line 416
    new-instance v1, Lcom/sec/android/glview/TwGLView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLView$1;-><init>(Lcom/sec/android/glview/TwGLView;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    .line 457
    iput v6, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    .line 524
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 552
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 571
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 577
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 609
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 635
    iput-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    .line 738
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, p2, p4

    add-float v3, p3, p5

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    .line 740
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 741
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetTransformMatrix()V

    .line 743
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    .line 744
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    .line 746
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 747
    iput p3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 749
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    .line 750
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    .line 752
    invoke-virtual {p0, v4, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 753
    invoke-virtual {p0, v5, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 754
    invoke-virtual {p0, v6, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 755
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 757
    iput-object p0, p0, Lcom/sec/android/glview/TwGLView;->mThis:Lcom/sec/android/glview/TwGLView;

    .line 758
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    .line 759
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/glview/TwGLView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragX:F

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/glview/TwGLView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragY:F

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/glview/TwGLView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private declared-synchronized combineMatrices()V
    .locals 6

    .prologue
    .line 2147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2148
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mTempMatrix:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2152
    :goto_0
    monitor-exit p0

    return-void

    .line 2147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2149
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1581
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1582
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 1583
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 1584
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 1587
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 1588
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->onLayoutUpdated()V

    .line 1590
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 1591
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->onLayoutUpdated()V

    .line 1593
    :cond_2
    return-void
.end method


# virtual methods
.method public addView(ILcom/sec/android/glview/TwGLView;)V
    .locals 0
    .parameter "position"
    .parameter "view"

    .prologue
    .line 3097
    return-void
.end method

.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 3094
    return-void
.end method

.method public final bringToFront()V
    .locals 1

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1712
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 1713
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 1715
    :cond_0
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .line 1626
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    .line 1627
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    .line 1628
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    .line 1630
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 1631
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 1632
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 1634
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_1

    .line 1635
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    .line 1636
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 1638
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_2

    .line 1639
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    .line 1640
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 1642
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v1, :cond_3

    .line 1643
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {v1}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    .line 1644
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 1646
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 1648
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v1, :cond_4

    .line 1649
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 1653
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    if-eqz v1, :cond_5

    .line 1654
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 1658
    :cond_5
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v1, :cond_7

    .line 1659
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_6

    .line 1660
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1659
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1661
    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1663
    .end local v0           #i:I
    :cond_7
    monitor-exit p0

    return-void

    .line 1626
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected final clearClip(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    .line 2614
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v1

    invoke-interface {p1, v2, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    .line 2615
    return-void
.end method

.method protected final declared-synchronized clip(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 5
    .parameter "gl"

    .prologue
    .line 2588
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    if-nez v0, :cond_0

    .line 2589
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLView;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2605
    :goto_0
    monitor-exit p0

    return-void

    .line 2595
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2588
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 1439
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 1440
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 1451
    :cond_0
    :goto_0
    return v0

    .line 1443
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 1447
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    if-eqz v1, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected dispatchDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 3086
    return-void
.end method

.method public final declared-synchronized draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V
    .locals 11
    .parameter "gl"
    .parameter "parentMatrix"
    .parameter "parentClipRect"

    .prologue
    const/4 v2, 0x4

    .line 1981
    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v8, v0

    .line 1983
    .local v8, gl11:Ljavax/microedition/khronos/opengles/GL11;
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    if-nez v1, :cond_1

    .line 1984
    invoke-virtual {p0, v8}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1985
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2127
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1992
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    if-eq v1, v2, :cond_0

    .line 1996
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    if-eqz v1, :cond_2

    .line 1997
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 2000
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z

    if-eqz v1, :cond_3

    .line 2001
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 2003
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getAlpha()F

    move-result v7

    .line 2004
    .local v7, alpha:F
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/high16 v3, 0x4604

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 2005
    invoke-interface {p1, v7, v7, v7, v7}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 2007
    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .line 2009
    .local v5, currentMatrix:[F
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_8

    .line 2010
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    if-nez v1, :cond_6

    .line 2011
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 2012
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getCurrentDrawTime()J

    move-result-wide v9

    .line 2013
    .local v9, timeMillis:J
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    if-eqz v1, :cond_4

    .line 2014
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1981
    .end local v5           #currentMatrix:[F
    .end local v7           #alpha:F
    .end local v8           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    .end local v9           #timeMillis:J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2018
    .restart local v5       #currentMatrix:[F
    .restart local v7       #alpha:F
    .restart local v8       #gl11:Ljavax/microedition/khronos/opengles/GL11;
    .restart local v9       #timeMillis:J
    :cond_4
    :try_start_2
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    if-eqz v1, :cond_9

    .line 2019
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 2020
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 2021
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 2022
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v9, v10}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 2031
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v9, v10, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2032
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2035
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    const/4 v6, 0x2

    aget v4, v4, v6

    invoke-static {v3, v4}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    aput v3, v1, v2

    .line 2036
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    const/4 v6, 0x5

    aget v4, v4, v6

    invoke-static {v3, v4}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    aput v3, v1, v2

    .line 2038
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    invoke-static {v1}, Lcom/sec/android/glview/TwGLUtil;->toGLMatrix([F)[F

    .line 2039
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .end local v5           #currentMatrix:[F
    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2041
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v7

    .line 2042
    iput v7, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 2045
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/high16 v3, 0x4604

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 2046
    invoke-interface {p1, v7, v7, v7, v7}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 2048
    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 2067
    .end local v9           #timeMillis:J
    .restart local v5       #currentMatrix:[F
    :cond_6
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    if-eqz v1, :cond_7

    .line 2068
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    .line 2069
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2070
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mAnimMatrix:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    .end local v5           #currentMatrix:[F
    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2071
    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mAnimGLMatrix:[F

    .line 2077
    .restart local v5       #currentMatrix:[F
    :cond_7
    :goto_2
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    if-eqz v1, :cond_8

    .line 2078
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    .line 2079
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    if-eqz v1, :cond_8

    .line 2080
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sec/android/glview/TwGLView$3;

    invoke-direct {v2, p0}, Lcom/sec/android/glview/TwGLView$3;-><init>(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2088
    :cond_8
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLayoutUpdated:Z

    if-eqz v1, :cond_f

    .line 2089
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2090
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V

    .line 2091
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenGeometry()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2092
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    if-eqz v1, :cond_d

    .line 2093
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 2094
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onOutOfScreen()V

    goto/16 :goto_0

    .line 2023
    .restart local v9       #timeMillis:J
    :cond_9
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    if-eqz v1, :cond_5

    .line 2024
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationTimeSet:Z

    .line 2025
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 2026
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v9, v10}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 2028
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStartedEvent:Z

    goto/16 :goto_1

    .line 2050
    :cond_a
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    if-eqz v1, :cond_b

    .line 2051
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sec/android/glview/TwGLView$2;

    invoke-direct {v2, p0}, Lcom/sec/android/glview/TwGLView$2;-><init>(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2058
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 2060
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    if-eqz v1, :cond_6

    .line 2061
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2073
    .end local v9           #timeMillis:J
    :cond_c
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    goto :goto_2

    .line 2098
    :cond_d
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    if-nez v1, :cond_e

    .line 2099
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2100
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    .line 2108
    :cond_e
    :goto_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 2111
    :cond_f
    if-eqz v5, :cond_10

    .line 2112
    const/4 v1, 0x0

    invoke-interface {p1, v5, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 2114
    :cond_10
    invoke-virtual {p0, v8}, Lcom/sec/android/glview/TwGLView;->dispatchDraw(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 2116
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_11

    .line 2117
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 2119
    :cond_11
    invoke-virtual {p0, v8}, Lcom/sec/android/glview/TwGLView;->onDraw(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 2120
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    .line 2121
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_12

    .line 2122
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/glview/TwGLNinePatch;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 2124
    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_0

    .line 2125
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/glview/TwGLNinePatch;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 2101
    :cond_13
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, p3}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    goto :goto_3

    .line 2104
    :cond_14
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public dumpViewHierarchy(I)V
    .locals 5
    .parameter "level"

    .prologue
    .line 3168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3169
    .local v1, s:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 3170
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3172
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    .line 3173
    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Clip(Manual:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    :goto_1
    return-void

    .line 3175
    :cond_1
    const-string v2, "DUMP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;
    .locals 8
    .parameter "focusedView"
    .parameter "direction"

    .prologue
    .line 2835
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez p1, :cond_2

    .line 2836
    :cond_0
    const/4 v4, 0x0

    .line 2881
    :cond_1
    :goto_0
    return-object v4

    .line 2839
    :cond_2
    const/4 v4, 0x0

    .line 2842
    .local v4, resultView:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v3

    .line 2843
    .local v3, left:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v5

    .line 2844
    .local v5, top:F
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getCurrentLeft()F

    move-result v0

    .line 2845
    .local v0, focusedViewLeft:F
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v1

    .line 2846
    .local v1, focusedViewTop:F
    sub-float v7, v0, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 2847
    .local v2, horizontalOffset:F
    sub-float v7, v1, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 2849
    .local v6, verticalOffset:F
    sparse-switch p2, :sswitch_data_0

    .line 2879
    const/4 v4, 0x0

    goto :goto_0

    .line 2851
    :sswitch_0
    cmpl-float v7, v0, v3

    if-lez v7, :cond_1

    .line 2852
    cmpl-float v7, v2, v6

    if-lez v7, :cond_1

    .line 2853
    move-object v4, p0

    goto :goto_0

    .line 2858
    :sswitch_1
    cmpg-float v7, v0, v3

    if-gez v7, :cond_1

    .line 2859
    cmpl-float v7, v2, v6

    if-lez v7, :cond_1

    .line 2860
    move-object v4, p0

    goto :goto_0

    .line 2865
    :sswitch_2
    cmpl-float v7, v1, v5

    if-lez v7, :cond_1

    .line 2866
    cmpg-float v7, v2, v6

    if-gez v7, :cond_1

    .line 2867
    move-object v4, p0

    goto :goto_0

    .line 2872
    :sswitch_3
    cmpg-float v7, v1, v5

    if-gez v7, :cond_1

    .line 2873
    cmpg-float v7, v2, v6

    if-gez v7, :cond_1

    .line 2874
    move-object v4, p0

    goto :goto_0

    .line 2849
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 2896
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    if-eqz v1, :cond_1

    move-object p0, v0

    .line 2906
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 2899
    .restart local p0
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    if-eqz v1, :cond_2

    move-object p0, v0

    .line 2900
    goto :goto_0

    .line 2903
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 2906
    goto :goto_0
.end method

.method public findViewById(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .parameter "id"

    .prologue
    .line 2814
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    if-ne v0, p1, :cond_0

    .line 2817
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewByTag(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .parameter "tag"

    .prologue
    .line 2828
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewTag:I

    if-ne v0, p1, :cond_0

    .line 2831
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final getAlpha()F
    .locals 2

    .prologue
    .line 853
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 854
    const v0, 0x3e4ccccd

    .line 859
    :goto_0
    return v0

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 857
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0

    .line 859
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    goto :goto_0
.end method

.method public getArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 1405
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final getBottom()F
    .locals 2

    .prologue
    .line 1303
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1304
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->initSize()V

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1307
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    .line 1309
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public getBypassTouch()Z
    .locals 1

    .prologue
    .line 1873
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z

    return v0
.end method

.method public final getCenterPivot()Z
    .locals 1

    .prologue
    .line 915
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    return v0
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1917
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V

    .line 1919
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getClipRectArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 1923
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getContentArea()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 1381
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaLeft()F

    move-result v0

    .line 1382
    .local v0, left:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaTop()F

    move-result v1

    .line 1383
    .local v1, top:F
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v4

    add-float/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method public getContentAreaHeight()F
    .locals 2

    .prologue
    .line 1401
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaLeft()F
    .locals 2

    .prologue
    .line 1373
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaTop()F
    .locals 2

    .prologue
    .line 1377
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getContentAreaWidth()F
    .locals 2

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getContext()Lcom/sec/android/glview/TwGLContext;
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    return-object v0
.end method

.method public getCurrentArea()Landroid/graphics/RectF;
    .locals 8

    .prologue
    .line 1414
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v7

    add-float v4, v6, v7

    .line 1415
    .local v4, offsetX:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutY()F

    move-result v7

    add-float v5, v6, v7

    .line 1416
    .local v5, offsetY:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v6

    add-float v1, v6, v4

    .line 1417
    .local v1, currentLeft:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v6

    add-float v3, v6, v5

    .line 1418
    .local v3, currentTop:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    add-float v2, v1, v6

    .line 1419
    .local v2, currentRight:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    add-float v0, v3, v6

    .line 1421
    .local v0, currentBottom:F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v1, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v6
.end method

.method public getCurrentBottom()F
    .locals 2

    .prologue
    .line 1369
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentContentArea()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 1425
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getCurrentArea()Landroid/graphics/RectF;

    move-result-object v0

    .line 1426
    .local v0, current:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public getCurrentLeft()F
    .locals 2

    .prologue
    .line 1342
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentRight()F
    .locals 2

    .prologue
    .line 1351
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentTop()F
    .locals 2

    .prologue
    .line 1360
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getDraggable()Z
    .locals 1

    .prologue
    .line 823
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    return v0
.end method

.method public final getHeight()F
    .locals 2

    .prologue
    .line 1330
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1331
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->initSize()V

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method protected getHoverPopupWindow()Lcom/sec/android/glview/HoverPopupWindow;
    .locals 1

    .prologue
    .line 3188
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 1095
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewId:I

    return v0
.end method

.method public getInternalFocus()Z
    .locals 2

    .prologue
    .line 2914
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 2915
    .local v0, result:Z
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 2916
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getInternalFocus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2918
    :cond_0
    return v0
.end method

.method public getInternalFocusParent()Lcom/sec/android/glview/TwGLView;
    .locals 1

    .prologue
    .line 2922
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    if-eqz v0, :cond_0

    .line 2927
    .end local p0
    :goto_0
    return-object p0

    .line 2924
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 2925
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getInternalFocusParent()Lcom/sec/android/glview/TwGLView;

    move-result-object p0

    goto :goto_0

    .line 2927
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getLayoutX()F
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public getLayoutY()F
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public final getLeft()F
    .locals 2

    .prologue
    .line 1241
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    if-eqz v0, :cond_1

    .line 1242
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1244
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    .line 1249
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 1250
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1252
    :goto_1
    return v0

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1247
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    goto :goto_0

    .line 1252
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    goto :goto_1
.end method

.method public final getLeftTop(I)[F
    .locals 7
    .parameter "orientation"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 1021
    const/4 v2, 0x3

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 1022
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1024
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    if-eqz v2, :cond_3

    .line 1025
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    add-float/2addr v2, v3

    div-float v0, v2, v4

    .line 1026
    .local v0, centerX:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float v1, v2, v4

    .line 1028
    .local v1, centerY:F
    packed-switch p1, :pswitch_data_0

    .line 1056
    .end local v0           #centerX:F
    .end local v1           #centerY:F
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    return-object v2

    .line 1030
    .restart local v0       #centerX:F
    .restart local v1       #centerY:F
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    aput v3, v2, v5

    .line 1031
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    aput v3, v2, v6

    goto :goto_0

    .line 1034
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    aput v3, v2, v5

    .line 1035
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v3, v1, v3

    aput v3, v2, v6

    goto :goto_0

    .line 1038
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v2, v5

    .line 1039
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v2, v6

    goto :goto_0

    .line 1042
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    aput v3, v2, v5

    .line 1043
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    aput v3, v2, v6

    goto :goto_0

    .line 1050
    .end local v0           #centerX:F
    .end local v1           #centerY:F
    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v2, :cond_2

    .line 1051
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/graphics/RectF;->left:F

    aput v3, v2, v5

    .line 1052
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/graphics/RectF;->top:F

    aput v3, v2, v6

    goto :goto_0

    .line 1028
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getLoaded()Z
    .locals 1

    .prologue
    .line 831
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    return v0
.end method

.method public getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 1967
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    return v0
.end method

.method protected getMatrix()[F
    .locals 1

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    return-object v0
.end method

.method public getMoveLayoutX()F
    .locals 2

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1488
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    .line 1490
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public getMoveLayoutY()F
    .locals 2

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    .line 1497
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getNextFocusDownId()I
    .locals 1

    .prologue
    .line 1127
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    return v0
.end method

.method public final getNextFocusLeftId()I
    .locals 1

    .prologue
    .line 1115
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    return v0
.end method

.method public final getNextFocusRightId()I
    .locals 1

    .prologue
    .line 1119
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    return v0
.end method

.method public final getNextFocusUpId()I
    .locals 1

    .prologue
    .line 1123
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    return v0
.end method

.method public getOnClickListener()Lcom/sec/android/glview/TwGLView$OnClickListener;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    return-object v0
.end method

.method public getOnFocusListener()Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method public getOnTouchListener()Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method public final getOrientation()I
    .locals 2

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1194
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    .line 1197
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    goto :goto_0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getParentHAlign()I
    .locals 1

    .prologue
    .line 981
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    return v0
.end method

.method public final getParentVAlign()I
    .locals 1

    .prologue
    .line 990
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    return v0
.end method

.method public final getRight()F
    .locals 2

    .prologue
    .line 1288
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1289
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->initSize()V

    .line 1291
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1292
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    .line 1294
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method public final getRotatable()Z
    .locals 1

    .prologue
    .line 952
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    return v0
.end method

.method public final getRotateAnimation()Z
    .locals 1

    .prologue
    .line 934
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    return v0
.end method

.method public getScrollHint()Z
    .locals 1

    .prologue
    .line 3066
    const/4 v0, 0x0

    return v0
.end method

.method public final getSizeGiven()Z
    .locals 1

    .prologue
    .line 1210
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeGiven:Z

    return v0
.end method

.method protected final getSizeSpecified()Z
    .locals 1

    .prologue
    .line 1206
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    return v0
.end method

.method public final getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTag()I
    .locals 1

    .prologue
    .line 1091
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewTag:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getToggleButton()Z
    .locals 1

    .prologue
    .line 3184
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    return v0
.end method

.method public final getTop()F
    .locals 2

    .prologue
    .line 1267
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    if-eqz v0, :cond_1

    .line 1268
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1270
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    .line 1275
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 1276
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    .line 1278
    :goto_1
    return v0

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLeft:F

    .line 1273
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    goto :goto_0

    .line 1278
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTop:F

    goto :goto_1
.end method

.method public final getTranslateX()F
    .locals 2

    .prologue
    .line 2293
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 2294
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    add-float/2addr v0, v1

    .line 2296
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    goto :goto_0
.end method

.method public final getTranslateY()F
    .locals 2

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 2306
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v1

    add-float/2addr v0, v1

    .line 2308
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    goto :goto_0
.end method

.method public final getVisibility()I
    .locals 1

    .prologue
    .line 1674
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    return v0
.end method

.method public final getWidth()F
    .locals 2

    .prologue
    .line 1318
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-nez v0, :cond_0

    .line 1319
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->initSize()V

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public abstract initSize()V
.end method

.method public isAnimationFinished()Z
    .locals 1

    .prologue
    .line 1774
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    return v0
.end method

.method public final isClickable()Z
    .locals 2

    .prologue
    .line 2941
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClipped()Z
    .locals 1

    .prologue
    .line 3116
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mIsClipped:Z

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 2746
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    return v0
.end method

.method public final isFocusable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2937
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocused()Z
    .locals 1

    .prologue
    .line 2932
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    return v0
.end method

.method public isInScreen()Z
    .locals 1

    .prologue
    .line 3112
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    return v0
.end method

.method public final isVisible()I
    .locals 1

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1679
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 1681
    :goto_0
    return v0

    .line 1679
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 1681
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    goto :goto_0
.end method

.method public keyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2711
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-eqz v0, :cond_0

    .line 2712
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2713
    const/4 v0, 0x1

    .line 2715
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public keyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2719
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-eqz v0, :cond_0

    .line 2720
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2721
    const/4 v0, 0x1

    .line 2723
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final declared-synchronized load(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 3
    .parameter "gl"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1934
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    if-eqz v2, :cond_2

    .line 1935
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLView;->getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1936
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 1937
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1956
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v0, v1

    .line 1940
    goto :goto_0

    .line 1943
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    if-nez v2, :cond_0

    .line 1946
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLView;->onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1947
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 1948
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 1950
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_3

    .line 1951
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 1956
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    goto :goto_0

    .line 1953
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 1954
    goto :goto_0

    .line 1934
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final mapPoint([FFF)V
    .locals 7
    .parameter "transformedScreenCoordinate"
    .parameter "screenX"
    .parameter "screenY"

    .prologue
    const/4 v3, 0x3

    const/high16 v2, 0x3f80

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 2479
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    aput p2, v0, v1

    .line 2480
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    aput p3, v0, v6

    .line 2481
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    aput v2, v0, v3

    .line 2482
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    aput v2, v0, v3

    .line 2483
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mMatrix:[F

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->glCoordinate:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 2485
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    aget v0, v0, v1

    aput v0, p1, v1

    .line 2486
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->glTransformedCoordinate:[F

    aget v0, v0, v6

    aput v0, p1, v6

    .line 2488
    return-void
.end method

.method protected final mapPointReverse([FFF)V
    .locals 11
    .parameter "transformedScreenCoordinate"
    .parameter "screenX"
    .parameter "screenY"

    .prologue
    .line 2414
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v10, v2, 0x4

    .line 2415
    .local v10, orientation:I
    if-nez v10, :cond_0

    .line 2416
    const/4 v2, 0x0

    aput p2, p1, v2

    .line 2417
    const/4 v2, 0x1

    aput p3, p1, v2

    .line 2457
    :goto_0
    return-void

    .line 2421
    :cond_0
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 2425
    .local v0, coordinateTransformMatrix:[F
    invoke-virtual {p0, v10}, Lcom/sec/android/glview/TwGLView;->getLeftTop(I)[F

    move-result-object v9

    .line 2426
    .local v9, leftTop:[F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v2, :cond_1

    .line 2427
    const/4 v2, 0x0

    aget v3, v9, v2

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v9, v2

    .line 2428
    const/4 v2, 0x1

    aget v3, v9, v2

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v9, v2

    .line 2431
    :cond_1
    const/4 v2, 0x4

    new-array v7, v2, [F

    .line 2432
    .local v7, glLeftTopCoordinate:[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f80

    aput v3, v7, v2

    .line 2433
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    invoke-static {v2, v7, v3, v4}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2435
    const/4 v2, 0x4

    new-array v8, v2, [F

    .line 2436
    .local v8, glRotatedLeftTopCoordinate:[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f80

    aput v3, v8, v2

    .line 2437
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x1

    aget v4, v9, v4

    invoke-static {v2, v8, v3, v4}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2439
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2440
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, 0x1

    aget v4, v7, v4

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2441
    const/4 v1, 0x0

    mul-int/lit8 v2, v10, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x4080

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 2442
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v8, v3

    neg-float v3, v3

    const/4 v4, 0x1

    aget v4, v8, v4

    neg-float v4, v4

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2447
    const/4 v2, 0x4

    new-array v5, v2, [F

    .line 2448
    .local v5, glCoordinate:[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f80

    aput v3, v5, v2

    .line 2449
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, v5, p2, p3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2451
    const/4 v2, 0x4

    new-array v1, v2, [F

    .line 2452
    .local v1, glTransformedCoordinate:[F
    const/4 v2, 0x3

    const/high16 v3, 0x3f80

    aput v3, v1, v2

    .line 2453
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 2455
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-static {v2, p1, v3, v4}, Lcom/sec/android/glview/TwGLUtil;->getScreenCoordinateFromGLCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    goto/16 :goto_0
.end method

.method public final declared-synchronized moveBaseLayout(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1530
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1531
    .local v1, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1533
    .local v0, height:F
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 1534
    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v2, p2

    iput v2, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 1536
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1537
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1538
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1539
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1541
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1542
    monitor-exit p0

    return-void

    .line 1530
    .end local v0           #height:F
    .end local v1           #width:F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized moveBaseLayoutAbsolute(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1545
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    .line 1546
    .local v3, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1547
    .local v0, height:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    .line 1548
    .local v1, moveX:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutY()F

    move-result v2

    .line 1550
    .local v2, moveY:F
    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 1551
    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 1553
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 1554
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 1555
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 1556
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 1558
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1559
    monitor-exit p0

    return-void

    .line 1545
    .end local v0           #height:F
    .end local v1           #moveX:F
    .end local v2           #moveY:F
    .end local v3           #width:F
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public final declared-synchronized moveBaseLayoutAbsolute(FFZ)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "update"

    .prologue
    .line 1562
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    .line 1563
    .local v3, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1564
    .local v0, height:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutX()F

    move-result v1

    .line 1565
    .local v1, moveX:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMoveLayoutY()F

    move-result v2

    .line 1567
    .local v2, moveY:F
    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    .line 1568
    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    .line 1570
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 1571
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 1572
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 1573
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 1575
    if-eqz p3, :cond_0

    .line 1576
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1578
    :cond_0
    monitor-exit p0

    return-void

    .line 1562
    .end local v0           #height:F
    .end local v1           #moveX:F
    .end local v2           #moveY:F
    .end local v3           #width:F
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public final declared-synchronized moveLayout(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1509
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1510
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1511
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1512
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1514
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1515
    monitor-exit p0

    return-void

    .line 1509
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized moveLayoutAbsolute(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1518
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1519
    .local v1, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1521
    .local v0, height:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    add-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1522
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1523
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1524
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1526
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1527
    monitor-exit p0

    return-void

    .line 1518
    .end local v0           #height:F
    .end local v1           #width:F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected onAlphaUpdated()V
    .locals 1

    .prologue
    .line 3077
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAlphaChanged:Z

    .line 3078
    return-void
.end method

.method protected abstract onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
.end method

.method public onFocusStatusChanged(I)V
    .locals 9
    .parameter "focusStatus"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3016
    if-ne p1, v7, :cond_2

    .line 3017
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    .line 3018
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_0

    .line 3024
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getFocusResourceId()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 3026
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLNinePatch;->setBypassTouch(Z)V

    .line 3027
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setClipping(Z)V

    .line 3028
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 3033
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    if-eqz v0, :cond_1

    .line 3034
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/glview/TwGLView$OnFocusListener;->onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z

    .line 3036
    :cond_1
    return-void

    .line 3031
    :cond_2
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLView;->mFocused:Z

    goto :goto_0
.end method

.method public onHoverStatusChanged(I)V
    .locals 9
    .parameter "hoverStatus"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3039
    if-nez p1, :cond_1

    .line 3040
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 3041
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_0

    .line 3042
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getHoverResourceId()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 3044
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setBypassTouch(Z)V

    .line 3045
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLNinePatch;->setClipping(Z)V

    .line 3046
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 3057
    :cond_0
    :goto_0
    return-void

    .line 3049
    :cond_1
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLView;->mHoverFocused:Z

    .line 3051
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isHoveringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3052
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v0, :cond_0

    .line 3053
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2738
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2742
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayoutUpdated()V
    .locals 1

    .prologue
    .line 3073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mPositionChanged:Z

    .line 3074
    return-void
.end method

.method protected abstract onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
.end method

.method protected onOrientationChanged(I)V
    .locals 10
    .parameter "orientation"

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/high16 v9, 0x4000

    .line 2764
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z

    if-eqz v1, :cond_5

    .line 2765
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 2766
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    if-ne v1, p1, :cond_1

    .line 2804
    :cond_0
    :goto_0
    return-void

    .line 2770
    :cond_1
    move v8, p1

    .line 2771
    .local v8, tempOrientation:I
    if-nez v8, :cond_6

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    if-ne v1, v2, :cond_6

    .line 2772
    const/4 v8, 0x4

    .line 2777
    :cond_2
    :goto_1
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    sub-int/2addr v1, v8

    mul-int/lit8 v7, v1, 0x5a

    .line 2778
    .local v7, degree:I
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 2780
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 2781
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z

    if-nez v1, :cond_7

    .line 2782
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    if-eqz v1, :cond_3

    .line 2783
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 2784
    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    if-eqz v1, :cond_4

    .line 2785
    invoke-virtual {p0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 2787
    :cond_4
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2788
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 2801
    .end local v7           #degree:I
    .end local v8           #tempOrientation:I
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v1, :cond_0

    .line 2802
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    mul-int/lit8 v2, p1, 0x5a

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/HoverPopupWindow;->setRotation(I)V

    goto :goto_0

    .line 2773
    .restart local v8       #tempOrientation:I
    :cond_6
    if-ne v8, v2, :cond_2

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    if-nez v1, :cond_2

    .line 2774
    iput v4, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    goto :goto_1

    .line 2790
    .restart local v7       #degree:I
    :cond_7
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v9

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    div-float/2addr v6, v9

    add-float/2addr v6, v5

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 2791
    .local v0, anim:Landroid/view/animation/RotateAnimation;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 2792
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 2793
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_8

    .line 2794
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2795
    :cond_8
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2796
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto :goto_2
.end method

.method protected onOutOfScreen()V
    .locals 1

    .prologue
    .line 3108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    .line 3109
    return-void
.end method

.method protected abstract onReset()V
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 2734
    const/4 v0, 0x0

    return v0
.end method

.method protected declared-synchronized refreshClipRect()V
    .locals 7

    .prologue
    .line 2525
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 2579
    :goto_0
    monitor-exit p0

    return-void

    .line 2529
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v1, v4, v5

    .line 2530
    .local v1, left:I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v3, v4, v5

    .line 2531
    .local v3, top:I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 2532
    .local v2, right:I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    .line 2534
    .local v0, bottom:I
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    int-to-float v5, v1

    int-to-float v6, v3

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->mapPoint([FFF)V

    .line 2535
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    int-to-float v5, v1

    int-to-float v6, v0

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->mapPoint([FFF)V

    .line 2536
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->mapPoint([FFF)V

    .line 2537
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    int-to-float v5, v2

    int-to-float v6, v0

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->mapPoint([FFF)V

    .line 2539
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v1, v4

    .line 2540
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 2541
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 2542
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v0, v4

    .line 2544
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x4

    packed-switch v4, :pswitch_data_0

    .line 2568
    :goto_1
    if-gt v1, v2, :cond_1

    if-le v3, v0, :cond_2

    .line 2569
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v1, v4, v5

    .line 2570
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v3, v4, v5

    .line 2571
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 2572
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    .line 2575
    :cond_2
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v4, :cond_3

    .line 2576
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    .line 2578
    :cond_3
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2525
    .end local v0           #bottom:I
    .end local v1           #left:I
    .end local v2           #right:I
    .end local v3           #top:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 2546
    .restart local v0       #bottom:I
    .restart local v1       #left:I
    .restart local v2       #right:I
    .restart local v3       #top:I
    :pswitch_0
    :try_start_2
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v1, v4

    .line 2547
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 2548
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 2549
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v0, v4

    .line 2550
    goto :goto_1

    .line 2552
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v1, v4

    .line 2553
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftBottom:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 2554
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 2555
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightTop:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v0, v4

    .line 2556
    goto :goto_1

    .line 2558
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v1, v4

    .line 2559
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mRightBottom:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    .line 2560
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v2, v4

    .line 2561
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v5, 0x1

    aget v4, v4, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    float-to-int v0, v4

    .line 2562
    goto/16 :goto_1

    .line 2544
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public removeView(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 3105
    return-void
.end method

.method public final requestFocus()Z
    .locals 1

    .prologue
    .line 2953
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .locals 1
    .parameter "direction"

    .prologue
    .line 2957
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILcom/sec/android/glview/TwGLView;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedView"

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 2961
    if-nez p2, :cond_0

    .line 2962
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_5

    .line 2963
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLContext;->onFocusChanged(Lcom/sec/android/glview/TwGLView;)V

    move v1, v2

    .line 3012
    :goto_0
    return v1

    .line 2967
    :cond_0
    const/4 v0, 0x0

    .line 2970
    .local v0, nextViewToFocus:Lcom/sec/android/glview/TwGLView;
    sparse-switch p1, :sswitch_data_0

    .line 2995
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 2996
    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    if-eqz v1, :cond_2

    move v1, v2

    .line 2997
    goto :goto_0

    .line 2972
    :sswitch_0
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    if-eq v1, v3, :cond_1

    .line 2973
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLContext;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_1

    .line 2977
    :sswitch_1
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    if-eq v1, v3, :cond_1

    .line 2978
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLContext;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_1

    .line 2982
    :sswitch_2
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    if-eq v1, v3, :cond_1

    .line 2983
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLContext;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_1

    .line 2987
    :sswitch_3
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    if-eq v1, v3, :cond_1

    .line 2988
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLContext;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_1

    .line 2999
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getInternalFocus()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3000
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getInternalFocusParent()Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v1, p2, p1}, Lcom/sec/android/glview/TwGLContext;->findNextFocusFromView(Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 3006
    :cond_3
    :goto_2
    if-eqz v0, :cond_5

    .line 3007
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLContext;->onFocusChanged(Lcom/sec/android/glview/TwGLView;)V

    move v1, v2

    .line 3008
    goto :goto_0

    .line 3002
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p2, p1}, Lcom/sec/android/glview/TwGLContext;->findNextFocusFromView(Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_2

    .line 3012
    .end local v0           #nextViewToFocus:Lcom/sec/android/glview/TwGLView;
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 2970
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .prologue
    .line 3123
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    .line 3124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoading:Z

    .line 3125
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 3126
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 3128
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 3129
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->reset()V

    .line 3131
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 3132
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->reset()V

    .line 3134
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3135
    monitor-exit p0

    return-void

    .line 3123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resetBaseLayout()V
    .locals 4

    .prologue
    .line 1611
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1612
    .local v1, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1614
    .local v0, height:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalLeft:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1615
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mOriginalTop:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1616
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1617
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1619
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1620
    monitor-exit p0

    return-void

    .line 1611
    .end local v0           #height:F
    .end local v1           #width:F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized resetClipRect()V
    .locals 1

    .prologue
    .line 2514
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z

    .line 2515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    .line 2516
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2517
    monitor-exit p0

    return-void

    .line 2514
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected resetDrag()V
    .locals 2

    .prologue
    .line 2753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    .line 2754
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2755
    return-void
.end method

.method public final declared-synchronized resetLayout()V
    .locals 4

    .prologue
    .line 1599
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1600
    .local v1, width:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1602
    .local v0, height:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseLeft:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1603
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mBaseTop:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1604
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1605
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1607
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1608
    monitor-exit p0

    return-void

    .line 1599
    .end local v0           #height:F
    .end local v1           #width:F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized resetScale()V
    .locals 2

    .prologue
    .line 2158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2160
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2162
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 2163
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2164
    monitor-exit p0

    return-void

    .line 2158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resetTransformMatrix()V
    .locals 2

    .prologue
    .line 2133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2140
    :goto_0
    monitor-exit p0

    return-void

    .line 2136
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2137
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2138
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mCombinedMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2139
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resetTranslate()V
    .locals 2

    .prologue
    .line 2195
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2197
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2199
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2200
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    .line 2202
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2203
    monitor-exit p0

    return-void

    .line 2195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized rotateDegree(I)V
    .locals 7
    .parameter "degree"

    .prologue
    const/high16 v4, 0x4000

    .line 2387
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2401
    :goto_0
    monitor-exit p0

    return-void

    .line 2390
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2392
    const/4 v0, 0x2

    new-array v6, v0, [F

    .line 2394
    .local v6, currentPivot:[F
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-static {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2396
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2397
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x4080

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 2398
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2400
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2387
    .end local v6           #currentPivot:[F
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized scale(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v5, 0x4000

    .line 2175
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    aput v3, v1, v2

    .line 2176
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    aput v3, v1, v2

    .line 2178
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 2179
    .local v0, currentPivot:[F
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mLeftTop:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2181
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2182
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-static {v1, v2, p1, p2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 2183
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    neg-float v3, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    neg-float v4, v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2185
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleX:F

    .line 2186
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/sec/android/glview/TwGLView;->mScaleY:F

    .line 2188
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2189
    monitor-exit p0

    return-void

    .line 2175
    .end local v0           #currentPivot:[F
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 841
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 842
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mAlpha:F

    .line 843
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->updateAlpha()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    :cond_0
    monitor-exit p0

    return-void

    .line 841
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 1737
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1738
    monitor-exit p0

    return-void

    .line 1737
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAnimation(Landroid/view/animation/Animation;Z)V
    .locals 1
    .parameter "animation"
    .parameter "hideAfterAnimation"

    .prologue
    .line 1749
    monitor-enter p0

    :try_start_0
    iput-boolean p2, p0, Lcom/sec/android/glview/TwGLView;->mHideAfterAnimation:Z

    .line 1750
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1751
    monitor-exit p0

    return-void

    .line 1749
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAsyncLoad(Z)V
    .locals 0
    .parameter "async"

    .prologue
    .line 827
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mAsyncLoad:Z

    .line 828
    return-void
.end method

.method public declared-synchronized setBackground(I)Z
    .locals 7
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    .line 1794
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    .line 1805
    :goto_0
    monitor-exit p0

    return v0

    .line 1797
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1798
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 1799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 1801
    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 1802
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 1803
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->isNinePatchBackground:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1805
    const/4 v0, 0x1

    goto :goto_0

    .line 1794
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBackgroundAlpha(I)Z
    .locals 2
    .parameter "alpha"

    .prologue
    .line 1861
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1862
    const/4 v0, 0x0

    .line 1865
    :goto_0
    monitor-exit p0

    return v0

    .line 1864
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1865
    const/4 v0, 0x1

    goto :goto_0

    .line 1861
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBypassTouch(Z)V
    .locals 1
    .parameter "bypass"

    .prologue
    .line 1869
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mBypassTouch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1870
    monitor-exit p0

    return-void

    .line 1869
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCenterPivot(Z)V
    .locals 1
    .parameter "centerPivot"

    .prologue
    .line 906
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    monitor-exit p0

    return-void

    .line 906
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setClickable(Z)V
    .locals 2
    .parameter "clickable"

    .prologue
    .line 2949
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit16 v1, v0, -0x4001

    if-eqz p1, :cond_0

    const/16 v0, 0x4000

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    .line 2950
    return-void

    .line 2949
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setClipRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "clipRect"

    .prologue
    .line 2504
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2505
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V

    .line 2507
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    .line 2508
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOldClipRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2509
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mManualClip:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2511
    monitor-exit p0

    return-void

    .line 2504
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setClipping(Z)V
    .locals 1
    .parameter "clipping"

    .prologue
    .line 2497
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    .line 2498
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mClipping:Z

    if-eqz v0, :cond_0

    .line 2499
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->refreshClipRect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2501
    :cond_0
    monitor-exit p0

    return-void

    .line 2497
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setContinuousDrawMode(Z)V
    .locals 1
    .parameter "continuousDrawMode"

    .prologue
    .line 1784
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mContinuousDrawMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1785
    monitor-exit p0

    return-void

    .line 1784
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setDefaultOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 2318
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    .line 2319
    rsub-int/lit8 v0, p1, 0x4

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 2320
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2321
    monitor-exit p0

    return-void

    .line 2318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDim(Z)V
    .locals 1
    .parameter "dimmed"

    .prologue
    .line 1724
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1725
    const/16 v0, 0x20

    :try_start_0
    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1728
    :goto_0
    monitor-exit p0

    return-void

    .line 1727
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1724
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDragSensitivity(I)V
    .locals 1
    .parameter "sensitivity"

    .prologue
    .line 466
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 469
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 472
    :cond_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    .line 473
    return-void
.end method

.method public setDragVibration(Z)V
    .locals 0
    .parameter "vibration"

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mDragVibration:Z

    .line 441
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0
    .parameter "draggable"

    .prologue
    .line 819
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    .line 820
    return-void
.end method

.method public setExtraDescription(Z)V
    .locals 0
    .parameter "hasExtraDescription"

    .prologue
    .line 3192
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mHasExtraDescription:Z

    .line 3193
    return-void
.end method

.method public setFocusable(Z)V
    .locals 2
    .parameter "focusable"

    .prologue
    .line 2945
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    and-int/lit8 v1, v0, -0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mViewFlags:I

    .line 2946
    return-void

    .line 2945
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHoverPopupGravity(I)V
    .locals 0
    .parameter "gravity"

    .prologue
    .line 3201
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupGravity:I

    .line 3202
    return-void
.end method

.method public setHoverPopupOffset(II)V
    .locals 0
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 3196
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetX:I

    .line 3197
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetY:I

    .line 3198
    return-void
.end method

.method public setInternalFocus(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 2910
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mInternalFocus:Z

    .line 2911
    return-void
.end method

.method public final setLeftTop(IFF)V
    .locals 1
    .parameter "orientation"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 1004
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1005
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1007
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    .line 1008
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/RectF;->left:F

    .line 1009
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    iput p3, v0, Landroid/graphics/RectF;->top:F

    .line 1011
    :cond_2
    return-void
.end method

.method public final setLeftTop(I[F)V
    .locals 2
    .parameter "orientation"
    .parameter "leftTops"

    .prologue
    .line 1068
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1069
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1071
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1072
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mLeftTopCoordinates:[Landroid/graphics/RectF;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1073
    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1143
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 1144
    return-void
.end method

.method public setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1171
    if-eqz p1, :cond_0

    .line 1172
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusDownId:I

    .line 1173
    const/4 v0, 0x1

    .line 1175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusLeftId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1131
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 1132
    return-void
.end method

.method public setNextFocusLeftView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1147
    if-eqz p1, :cond_0

    .line 1148
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusLeftId:I

    .line 1149
    const/4 v0, 0x1

    .line 1151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusRightId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1135
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 1136
    return-void
.end method

.method public setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1155
    if-eqz p1, :cond_0

    .line 1156
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusRightId:I

    .line 1157
    const/4 v0, 0x1

    .line 1159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextFocusUpId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1139
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 1140
    return-void
.end method

.method public setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1163
    if-eqz p1, :cond_0

    .line 1164
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mNextFocusUpId:I

    .line 1165
    const/4 v0, 0x1

    .line 1167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setNinePatchBackground(I)Z
    .locals 8
    .parameter "resId"

    .prologue
    const/4 v7, 0x1

    .line 1815
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 1816
    const/4 v0, 0x0

    .line 1827
    :goto_0
    monitor-exit p0

    return v0

    .line 1818
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1819
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 1820
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 1822
    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 1823
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 1824
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1825
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->isNinePatchBackground:Z

    .line 1826
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v7

    .line 1827
    goto :goto_0

    .line 1815
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNinePatchBackground(II)Z
    .locals 9
    .parameter "resId"
    .parameter "alpha"

    .prologue
    const/4 v8, 0x1

    .line 1839
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 1840
    const/4 v0, 0x0

    .line 1851
    :goto_0
    monitor-exit p0

    return v0

    .line 1842
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 1843
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 1844
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 1846
    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mBackgroundResId:I

    .line 1847
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    int-to-float v7, p2

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    .line 1848
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->isNinePatchBackground:Z

    .line 1850
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v8

    .line 1851
    goto :goto_0

    .line 1839
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 799
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 800
    return-void
.end method

.method public setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 644
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    .line 645
    return-void
.end method

.method public setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 809
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    .line 810
    return-void
.end method

.method public setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 785
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 786
    return-void
.end method

.method public setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 781
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 782
    return-void
.end method

.method public setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 683
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnOrientationChangedListener:Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

    .line 684
    return-void
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 768
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 769
    return-void
.end method

.method public final declared-synchronized setOrientation(I)V
    .locals 9
    .parameter "orientation"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 2330
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 2332
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2335
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 2378
    :goto_0
    monitor-exit p0

    return-void

    .line 2339
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mLastOrientation:I

    .line 2340
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    .line 2342
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2344
    const/4 v0, 0x2

    new-array v6, v0, [F

    .line 2345
    .local v6, currentPivot:[F
    const/4 v0, 0x2

    new-array v8, v0, [F

    .line 2347
    .local v8, rotationPivot:[F
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->getLeftTop(I)[F

    move-result-object v7

    .line 2349
    .local v7, leftTop:[F
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mCenterPivot:Z

    if-eqz v0, :cond_3

    .line 2350
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    aput v1, v7, v0

    .line 2351
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    aput v1, v7, v0

    .line 2353
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-static {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2355
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2356
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x4

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x4080

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 2357
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2372
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2374
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnOrientationChangedListener:Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

    if-eqz v0, :cond_2

    .line 2375
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnOrientationChangedListener:Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;->onOrientationChanged(I)V

    .line 2377
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto/16 :goto_0

    .line 2359
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_4

    .line 2360
    const/4 v0, 0x0

    aget v1, v7, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    add-float/2addr v1, v2

    aput v1, v7, v0

    .line 2361
    const/4 v0, 0x1

    aget v1, v7, v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    add-float/2addr v1, v2

    aput v1, v7, v0

    .line 2364
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-static {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2365
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x0

    aget v1, v7, v1

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-static {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/sec/android/glview/TwGLContext;[FFF)V

    .line 2367
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2368
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mOrientation:I

    iget v3, p0, Lcom/sec/android/glview/TwGLView;->mDefaultOrientation:I

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x4

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x4080

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 2369
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mRotationMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v6, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, v6, v3

    neg-float v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setPaddings(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "paddings"

    .prologue
    .line 1883
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 1884
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    .line 1885
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1887
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 1888
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1890
    :cond_1
    monitor-exit p0

    return-void

    .line 1883
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setParentHAlign(I)V
    .locals 0
    .parameter "halign"

    .prologue
    .line 962
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mParentHAlign:I

    .line 963
    return-void
.end method

.method public final setParentVAlign(I)V
    .locals 0
    .parameter "valign"

    .prologue
    .line 972
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mParentVAlign:I

    .line 973
    return-void
.end method

.method public declared-synchronized setRotatable(Z)V
    .locals 1
    .parameter "rotatable"

    .prologue
    .line 896
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mRotatable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    monitor-exit p0

    return-void

    .line 896
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRotateAnimation(Z)V
    .locals 1
    .parameter "rotateAnimation"

    .prologue
    .line 925
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    monitor-exit p0

    return-void

    .line 925
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRotateAnimationDuration(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 943
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationDuration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    monitor-exit p0

    return-void

    .line 943
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRotateAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "interpolator"

    .prologue
    .line 938
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 939
    :try_start_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mRotateAnimationInterpolator:Landroid/view/animation/Interpolator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    :cond_0
    monitor-exit p0

    return-void

    .line 938
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSize(FF)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1463
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1464
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    .line 1468
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 1469
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->isNinePatchBackground:Z

    if-eqz v0, :cond_3

    .line 1470
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1475
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 1476
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mFocusIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1479
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 1480
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverIndicator:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1483
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1484
    monitor-exit p0

    return-void

    .line 1472
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1463
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mSubTitle:Ljava/lang/String;

    .line 1104
    return-void
.end method

.method public final setTag(I)V
    .locals 0
    .parameter "viewId"

    .prologue
    .line 1082
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mViewTag:I

    .line 1083
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    .line 1100
    return-void
.end method

.method public setToggleButton()V
    .locals 1

    .prologue
    .line 3180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mToggleButton:Z

    .line 3181
    return-void
.end method

.method public final declared-synchronized setVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 1691
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 1692
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1694
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1695
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1697
    :cond_0
    monitor-exit p0

    return-void

    .line 1691
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setVisibility(IZ)V
    .locals 2
    .parameter "visibility"
    .parameter "update"

    .prologue
    .line 1700
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mVisibility:I

    .line 1701
    if-eqz p2, :cond_0

    .line 1702
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1705
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1706
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1708
    :cond_1
    monitor-exit p0

    return-void

    .line 1700
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized startAnimation()V
    .locals 2

    .prologue
    .line 1757
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1771
    :goto_0
    monitor-exit p0

    return-void

    .line 1760
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mLoaded:Z

    if-eqz v0, :cond_1

    .line 1761
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 1762
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 1763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z

    .line 1768
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationFinished:Z

    .line 1770
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1757
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1765
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationPending:Z

    .line 1766
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mAnimationStarted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public touchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "e"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 2626
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    packed-switch v0, :pswitch_data_0

    .line 2635
    const/16 v6, 0x1f4

    .line 2638
    .local v6, dragHoldTime:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 2639
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    .line 2640
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    if-eqz v0, :cond_0

    .line 2641
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    .line 2642
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mDragSensitivity:I

    if-nez v0, :cond_2

    .line 2643
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2648
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragX:F

    .line 2649
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragY:F

    .line 2699
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-eqz v0, :cond_e

    .line 2700
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v7

    .line 2707
    :goto_3
    return v0

    .line 2628
    .end local v6           #dragHoldTime:I
    :pswitch_0
    const/4 v6, 0x0

    .line 2629
    .restart local v6       #dragHoldTime:I
    goto :goto_0

    .line 2631
    .end local v6           #dragHoldTime:I
    :pswitch_1
    const/16 v6, 0x12c

    .line 2632
    .restart local v6       #dragHoldTime:I
    goto :goto_0

    .line 2645
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->setDragging:Ljava/lang/Runnable;

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 2650
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 2651
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    if-eqz v0, :cond_1

    .line 2652
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-eqz v0, :cond_7

    .line 2653
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTempOrientation:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 2654
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_4

    .line 2655
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    .line 2657
    :cond_4
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2658
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    move v0, v7

    .line 2659
    goto :goto_3

    .line 2661
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_6

    .line 2662
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragX:F

    sub-float v4, v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v5, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragY:F

    sub-float v5, v1, v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V

    .line 2664
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragX:F

    .line 2665
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mPreviousDragY:F

    .line 2666
    if-eqz v6, :cond_1

    move v0, v7

    .line 2667
    goto :goto_3

    .line 2668
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2669
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    goto/16 :goto_2

    .line 2672
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_c

    .line 2673
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    if-eqz v0, :cond_b

    .line 2674
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-eqz v0, :cond_a

    .line 2675
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_9

    .line 2676
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    .line 2678
    :cond_9
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2683
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    goto/16 :goto_2

    .line 2685
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2686
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_2

    .line 2688
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 2689
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDraggable:Z

    if-eqz v0, :cond_1

    .line 2690
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-eqz v0, :cond_d

    .line 2691
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_d

    .line 2692
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    .line 2695
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    goto/16 :goto_2

    .line 2704
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2705
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2707
    :cond_f
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_3

    .line 2626
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized translate(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    .line 2258
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, p1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v3, p2}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2263
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2265
    cmpl-float v0, p1, v5

    if-nez v0, :cond_0

    cmpl-float v0, p2, v5

    if-eqz v0, :cond_1

    .line 2266
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V

    .line 2268
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2269
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2270
    monitor-exit p0

    return-void

    .line 2258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized translate(FFZ)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "update"

    .prologue
    const/4 v5, 0x0

    .line 2273
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, p1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v3, p2}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2278
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2280
    cmpl-float v0, p1, v5

    if-nez v0, :cond_0

    cmpl-float v0, p2, v5

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    .line 2281
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V

    .line 2283
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2284
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2285
    monitor-exit p0

    return-void

    .line 2273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized translateAbsolute(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2207
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2208
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2211
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, p1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v3, p2}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2216
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2218
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 2219
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V

    .line 2221
    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2222
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2223
    monitor-exit p0

    return-void

    .line 2207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized translateAbsolute(FFZ)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "update"

    .prologue
    .line 2226
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 2247
    :goto_0
    monitor-exit p0

    return-void

    .line 2231
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2232
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2235
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslationMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v2, p1}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceX(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-static {v3, p2}, Lcom/sec/android/glview/TwGLUtil;->getGLDistanceFromScreenDistanceY(Lcom/sec/android/glview/TwGLContext;F)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2240
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->combineMatrices()V

    .line 2242
    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p3, :cond_2

    .line 2243
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLView;->updateLayout()V

    .line 2245
    :cond_2
    iput p1, p0, Lcom/sec/android/glview/TwGLView;->mTranslateX:F

    .line 2246
    iput p2, p0, Lcom/sec/android/glview/TwGLView;->mTranslateY:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateAlpha()V
    .locals 2

    .prologue
    .line 882
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 883
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 884
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mBackground:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 887
    :cond_0
    return-void
.end method
