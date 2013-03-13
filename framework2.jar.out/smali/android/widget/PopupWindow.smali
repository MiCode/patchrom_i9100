.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupViewContainer;,
        Landroid/widget/PopupWindow$OnDismissListener;,
        Landroid/widget/PopupWindow$Injector;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I = null

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnimationStyle:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDrawingLocation:[I

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsMultiWindowPopup:Z

.field private mIsShowing:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mStatusBarHeight:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 250
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 277
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 171
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    .line 188
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 91
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 92
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 93
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 94
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 95
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 98
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 99
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 114
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 115
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 116
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 123
    const/16 v7, 0x3e8

    iput v7, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 126
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 129
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 130
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    .line 131
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    .line 134
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 141
    new-instance v7, Landroid/widget/PopupWindow$1;

    invoke-direct {v7, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 189
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 190
    const-string v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iput-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 192
    sget-object v7, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 196
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 198
    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 199
    .local v2, animStyle:I
    const v7, 0x10301ea

    if-ne v2, v7, :cond_0

    const/4 v2, -0x1

    .end local v2           #animStyle:I
    :cond_0
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 211
    iget-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_2

    .line 212
    iget-object v3, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 215
    .local v3, background:Landroid/graphics/drawable/StateListDrawable;
    sget-object v7, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v1

    .line 219
    .local v1, aboveAnchorStateIndex:I
    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    .line 220
    .local v5, count:I
    const/4 v4, -0x1

    .line 221
    .local v4, belowAnchorStateIndex:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 222
    if-eq v6, v1, :cond_3

    .line 223
    move v4, v6

    .line 230
    :cond_1
    const/4 v7, -0x1

    if-eq v1, v7, :cond_4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    .line 231
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 232
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 239
    .end local v1           #aboveAnchorStateIndex:I
    .end local v3           #background:Landroid/graphics/drawable/StateListDrawable;
    .end local v4           #belowAnchorStateIndex:I
    .end local v5           #count:I
    .end local v6           #i:I
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    return-void

    .line 221
    .restart local v1       #aboveAnchorStateIndex:I
    .restart local v3       #background:Landroid/graphics/drawable/StateListDrawable;
    .restart local v4       #belowAnchorStateIndex:I
    .restart local v5       #count:I
    .restart local v6       #i:I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 234
    :cond_4
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 235
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "contentView"

    .prologue
    const/4 v0, 0x0

    .line 262
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .parameter "contentView"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 293
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 4
    .parameter "contentView"
    .parameter "width"
    .parameter "height"
    .parameter "focusable"

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 307
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 91
    iput v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 92
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 93
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 94
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 95
    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 98
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 99
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 114
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 115
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 123
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 126
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 129
    iput v1, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 130
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    .line 131
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    .line 134
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 141
    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 308
    if-eqz p1, :cond_0

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 310
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 312
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 313
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 314
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 315
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 316
    return-void
.end method

.method static synthetic access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/PopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/PopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/PopupWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$700()[I
    .locals 1

    .prologue
    .line 56
    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method private computeAnimationResource()I
    .locals 2

    .prologue
    .line 1093
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1094
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 1095
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    const v0, 0x10301e4

    .line 1101
    :goto_0
    return v0

    .line 1095
    :cond_0
    const v0, 0x10301e3

    goto :goto_0

    .line 1099
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1101
    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method private computeFlags(I)I
    .locals 3
    .parameter "curFlags"

    .prologue
    const/high16 v2, 0x2

    .line 1049
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1057
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1058
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1060
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    if-nez v0, :cond_9

    .line 1061
    or-int/lit8 p1, p1, 0x8

    .line 1062
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1063
    or-int/2addr p1, v2

    .line 1068
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_2

    .line 1069
    or-int/lit8 p1, p1, 0x10

    .line 1071
    :cond_2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    .line 1072
    const/high16 v0, 0x4

    or-int/2addr p1, v0

    .line 1074
    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    .line 1075
    or-int/lit16 p1, p1, 0x200

    .line 1077
    :cond_4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1078
    const/high16 v0, 0x80

    or-int/2addr p1, v0

    .line 1080
    :cond_5
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    .line 1081
    or-int/lit16 p1, p1, 0x100

    .line 1083
    :cond_6
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_7

    .line 1084
    const/high16 v0, 0x1

    or-int/2addr p1, v0

    .line 1086
    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_8

    .line 1087
    or-int/lit8 p1, p1, 0x20

    .line 1089
    :cond_8
    return p1

    .line 1065
    :cond_9
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1066
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .parameter "token"

    .prologue
    .line 1026
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1031
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1032
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1033
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1034
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1035
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1039
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1040
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1041
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1042
    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1043
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1045
    return-object v0

    .line 1037
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 30
    .parameter "anchor"
    .parameter "p"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 1121
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1122
    .local v4, anchorHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    add-int v27, v27, p3

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    add-int v27, v27, v4

    add-int v27, v27, p4

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1126
    const/4 v10, 0x0

    .line 1128
    .local v10, onTop:Z
    const/16 v27, 0x33

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1131
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1132
    .local v7, displayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    add-int v27, v27, v4

    add-int v16, v27, p4

    .line 1136
    .local v16, screenY:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v14

    .line 1139
    .local v14, root:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 1140
    .local v23, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/16 v24, 0x0

    .line 1142
    .local v24, wlp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v24, v23

    .line 1143
    check-cast v24, Landroid/view/WindowManager$LayoutParams;

    .line 1146
    :cond_0
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 1147
    .local v20, visibleDisplayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1149
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    if-gez v27, :cond_e

    const/16 v27, 0x1

    :goto_0
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    if-gez v28, :cond_f

    const/16 v28, 0x1

    :goto_1
    or-int v27, v27, v28

    if-eqz v27, :cond_1

    .line 1150
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1154
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v27, v0

    add-int v27, v27, v16

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v28, v0

    add-int v27, v27, v28

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v28

    sub-int v27, v27, v28

    if-lez v27, :cond_4

    .line 1159
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    .line 1160
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v17

    .line 1161
    .local v17, scrollX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v18

    .line 1162
    .local v18, scrollY:I
    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v27, v0

    add-int v27, v27, v17

    add-int v27, v27, p3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v28, v0

    add-int v28, v28, v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v29

    add-int v28, v28, v29

    add-int v28, v28, p4

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1164
    .local v12, r:Landroid/graphics/Rect;
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v12, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 1169
    .end local v12           #r:Landroid/graphics/Rect;
    .end local v17           #scrollX:I
    .end local v18           #scrollY:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    add-int v27, v27, p3

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v28

    add-int v27, v27, v28

    add-int v27, v27, p4

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1176
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    sub-int v27, v27, v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v28

    sub-int v27, v27, v28

    sub-int v27, v27, p4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    sub-int v28, v28, p4

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_10

    const/4 v10, 0x1

    .line 1178
    :goto_2
    if-eqz v10, :cond_11

    .line 1179
    const/16 v27, 0x53

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1180
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    sub-int v27, v27, v28

    add-int v27, v27, p4

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1187
    :goto_3
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v28, v0

    add-int v27, v27, v28

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v28

    sub-int v27, v27, v28

    if-lez v27, :cond_4

    .line 1188
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v28, v0

    add-int v27, v27, v28

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v28

    sub-int v6, v27, v28

    .line 1189
    .local v6, diff:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v27, v0

    sub-int v27, v27, v6

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1190
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v27, v0

    if-gtz v27, :cond_4

    .line 1191
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1197
    .end local v6           #diff:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 1198
    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    sub-int v8, v27, v28

    .line 1200
    .local v8, displayFrameWidth:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v27, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v28, v0

    add-int v13, v27, v28

    .line 1201
    .local v13, right:I
    if-le v13, v8, :cond_5

    .line 1202
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v27, v0

    sub-int v28, v13, v8

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1205
    :cond_5
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v27, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    .line 1206
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1207
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1210
    :cond_6
    if-eqz v10, :cond_12

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    add-int v27, v27, p4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v28, v0

    sub-int v11, v27, v28

    .line 1218
    .local v11, popupTop:I
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v11, v0, :cond_7

    .line 1219
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v27, v0

    add-int v27, v27, v11

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1221
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v27, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1229
    .end local v11           #popupTop:I
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    if-eqz v24, :cond_d

    .line 1232
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    sub-int v22, v27, v28

    .line 1233
    .local v22, visibleDisplayFrameWidth:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v21, v27, v28

    .line 1235
    .local v21, visibleDisplayFrameHeight:I
    const/16 v25, 0x0

    .line 1236
    .local v25, xRootInScreen:I
    const/16 v26, 0x0

    .line 1237
    .local v26, yRootInScreen:I
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v15, v0, [I

    .line 1239
    .local v15, rootLocation:[I
    invoke-virtual {v14, v15}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1241
    const/4 v13, 0x0

    .line 1242
    const/4 v9, 0x0

    .line 1243
    .local v9, left:I
    const/16 v19, 0x0

    .line 1244
    .local v19, top:I
    const/4 v5, 0x0

    .line 1247
    .local v5, bottom:I
    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x3

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_13

    .line 1248
    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v25, v0

    .line 1261
    :cond_8
    :goto_5
    const/16 v27, 0x0

    aget v27, v15, v27

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int v13, v27, p3

    .line 1262
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v13, v0, :cond_9

    .line 1263
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v28, v13, v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1266
    :cond_9
    const/16 v27, 0x0

    aget v27, v15, v27

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v28, v0

    add-int v9, v27, v28

    .line 1267
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v9, v0, :cond_a

    .line 1268
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    sub-int v28, v28, v9

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1272
    :cond_a
    const/16 v27, 0x33

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v28

    add-int v27, v27, v28

    add-int v27, v27, p4

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1275
    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x30

    const/16 v28, 0x30

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_15

    .line 1276
    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v26, v0

    .line 1283
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    move/from16 v27, v0

    if-eqz v27, :cond_17

    .line 1284
    const/16 v27, 0x1

    aget v27, v15, v27

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int v5, v27, p4

    .line 1285
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v5, v0, :cond_c

    .line 1286
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v28, v5, v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1287
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 1290
    :cond_c
    const/16 v27, 0x1

    aget v27, v15, v27

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v28, v0

    add-int v19, v27, v28

    .line 1291
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_d

    .line 1292
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v28, v28, v19

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1309
    .end local v5           #bottom:I
    .end local v8           #displayFrameWidth:I
    .end local v9           #left:I
    .end local v13           #right:I
    .end local v15           #rootLocation:[I
    .end local v19           #top:I
    .end local v21           #visibleDisplayFrameHeight:I
    .end local v22           #visibleDisplayFrameWidth:I
    .end local v25           #xRootInScreen:I
    .end local v26           #yRootInScreen:I
    :cond_d
    :goto_7
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v27, v0

    const/high16 v28, 0x1000

    or-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1311
    return v10

    .line 1149
    :cond_e
    const/16 v27, 0x0

    goto/16 :goto_0

    :cond_f
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 1176
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1182
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v28

    add-int v27, v27, v28

    add-int v27, v27, p4

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    .line 1225
    .restart local v8       #displayFrameWidth:I
    .restart local v13       #right:I
    :cond_12
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v27, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_4

    .line 1249
    .restart local v5       #bottom:I
    .restart local v9       #left:I
    .restart local v15       #rootLocation:[I
    .restart local v19       #top:I
    .restart local v21       #visibleDisplayFrameHeight:I
    .restart local v22       #visibleDisplayFrameWidth:I
    .restart local v25       #xRootInScreen:I
    .restart local v26       #yRootInScreen:I
    :cond_13
    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x5

    const/16 v28, 0x5

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_14

    .line 1250
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v28, v0

    sub-int v25, v27, v28

    goto/16 :goto_5

    .line 1251
    :cond_14
    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x1

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 1252
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v27, v0

    sub-int v27, v22, v27

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v28, v0

    add-int v25, v27, v28

    goto/16 :goto_5

    .line 1277
    :cond_15
    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x50

    const/16 v28, 0x50

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_16

    .line 1278
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v28, v0

    sub-int v26, v27, v28

    goto/16 :goto_6

    .line 1279
    :cond_16
    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x10

    const/16 v28, 0x10

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    .line 1280
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v27, v0

    sub-int v27, v21, v27

    div-int/lit8 v27, v27, 0x2

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v28, v0

    add-int v26, v27, v28

    goto/16 :goto_6

    .line 1295
    :cond_17
    const/16 v27, 0x1

    aget v27, v15, v27

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int v5, v27, p4

    .line 1296
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v5, v0, :cond_18

    .line 1297
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v28, v5, v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1300
    :cond_18
    const/16 v27, 0x1

    aget v27, v15, v27

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v28, v0

    add-int v19, v27, v28

    .line 1301
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_d

    .line 1302
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v28, v28, v19

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_7
.end method

.method private getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 11
    .parameter "anchor"
    .parameter "outRect"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1316
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1354
    :cond_0
    :goto_0
    return-void

    .line 1320
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1321
    .local v0, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1323
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 1325
    .local v2, root:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1326
    .local v5, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, 0x0

    .line 1328
    .local v6, wlp:Landroid/view/WindowManager$LayoutParams;
    instance-of v7, v5, Landroid/view/WindowManager$LayoutParams;

    if-eqz v7, :cond_2

    move-object v6, v5

    .line 1329
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1332
    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1333
    .local v4, visibleDisplayFrame:Landroid/graphics/Rect;
    iput v9, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 1335
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1336
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1338
    if-eqz v6, :cond_3

    .line 1339
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v7, v10

    .line 1340
    .local v3, systemUiVisibility:I
    and-int/lit8 v7, v3, 0x4

    if-nez v7, :cond_3

    .line 1341
    iget-object v7, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x105000a

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 1344
    .end local v3           #systemUiVisibility:I
    :cond_3
    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 1345
    iget v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 1346
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 1347
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 1349
    iget v7, v0, Landroid/graphics/Rect;->left:I

    if-gez v7, :cond_5

    move v7, v8

    :goto_1
    iget v10, v0, Landroid/graphics/Rect;->top:I

    if-gez v10, :cond_6

    :goto_2
    or-int/2addr v7, v8

    if-eqz v7, :cond_4

    .line 1350
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1353
    :cond_4
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_5
    move v7, v9

    .line 1349
    goto :goto_1

    :cond_6
    move v8, v9

    goto :goto_2
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 1009
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1012
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1013
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1014
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 9
    .parameter "p"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 970
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v4, :cond_1

    .line 971
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 975
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 976
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 977
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x1

    .line 978
    .local v0, height:I
    if-eqz v1, :cond_2

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 980
    const/4 v0, -0x2

    .line 985
    :cond_2
    new-instance v3, Landroid/widget/PopupWindow$PopupViewContainer;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/widget/PopupWindow$PopupViewContainer;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 986
    .local v3, popupViewContainer:Landroid/widget/PopupWindow$PopupViewContainer;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v2, listParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/widget/PopupWindow$PopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-boolean v5, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    iget-object v6, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v4, v5, v6, v7, v8}, Landroid/widget/PopupWindow$Injector;->updateBackground(Landroid/view/View;ZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .end local v0           #height:I
    .end local v1           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #listParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #popupViewContainer:Landroid/widget/PopupWindow$PopupViewContainer;
    :goto_0
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    .line 997
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 998
    return-void

    .line 994
    :cond_3
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    goto :goto_0
.end method

.method private registerForScrollChanged(Landroid/view/View;II)V
    .locals 2
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 1785
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1787
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1788
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1789
    .local v0, vto:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1790
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1793
    :cond_0
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 1794
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 1795
    return-void
.end method

.method private setMultiWindowPopup(Z)V
    .locals 0
    .parameter "isMultiWindowPopup"

    .prologue
    .line 1357
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    .line 1358
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 4

    .prologue
    .line 1772
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1773
    .local v1, anchorRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1774
    .local v0, anchor:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1775
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anchor:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 1777
    .restart local v0       #anchor:Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 1778
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1779
    .local v2, vto:Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1781
    .end local v2           #vto:Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1782
    return-void
.end method

.method private update(Landroid/view/View;ZIIZII)V
    .locals 24
    .parameter "anchor"
    .parameter "updateLocation"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "updateDimension"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1662
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1759
    :cond_0
    :goto_0
    return-void

    .line 1666
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1667
    .local v12, oldAnchor:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move/from16 v0, p3

    if-ne v4, v0, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v4, v0, :cond_b

    :cond_2
    const/4 v11, 0x1

    .line 1668
    .local v11, needsUpdate:Z
    :goto_1
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    if-ne v4, v0, :cond_3

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v4, :cond_c

    .line 1669
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 1676
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager$LayoutParams;

    .line 1678
    .local v13, p:Landroid/view/WindowManager$LayoutParams;
    if-eqz p5, :cond_5

    .line 1679
    const/4 v4, -0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_d

    .line 1680
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 p6, v0

    .line 1684
    :goto_3
    const/4 v4, -0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_e

    .line 1685
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 1691
    :cond_5
    :goto_4
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v21, v0

    .line 1692
    .local v21, x:I
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v22, v0

    .line 1694
    .local v22, y:I
    if-eqz p2, :cond_f

    .line 1695
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v13, v2, v3}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1701
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v4, :cond_9

    .line 1702
    const/16 v23, 0x0

    .line 1703
    .local v23, yRootInScreen:I
    const/16 v16, 0x0

    .line 1704
    .local v16, top:I
    const/4 v10, 0x0

    .line 1706
    .local v10, bottom:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v14

    .line 1708
    .local v14, root:Landroid/view/View;
    const/4 v4, 0x2

    new-array v15, v4, [I

    .line 1709
    .local v15, rootLocation:[I
    invoke-virtual {v14, v15}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1711
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .line 1712
    .local v19, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/16 v20, 0x0

    .line 1714
    .local v20, wlp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v19

    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_6

    move-object/from16 v20, v19

    .line 1715
    check-cast v20, Landroid/view/WindowManager$LayoutParams;

    .line 1718
    :cond_6
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 1719
    .local v17, visibleDisplayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1721
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int v18, v4, v5

    .line 1723
    .local v18, visibleDisplayFrameHeight:I
    if-eqz v20, :cond_9

    .line 1724
    move-object/from16 v0, v20

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v4, v4, 0x30

    const/16 v5, 0x30

    if-ne v4, v5, :cond_10

    .line 1725
    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v23, v0

    .line 1732
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    if-eqz v4, :cond_12

    .line 1733
    const/4 v4, 0x1

    aget v4, v15, v4

    iget v5, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v4, v5

    add-int v4, v4, p7

    add-int v10, v4, p4

    .line 1734
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    if-le v10, v4, :cond_8

    .line 1735
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v4

    sub-int p7, p7, v4

    .line 1736
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 1739
    :cond_8
    const/4 v4, 0x1

    aget v4, v15, v4

    iget v5, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v16, v4, v5

    .line 1740
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v16

    if-ge v0, v4, :cond_9

    .line 1741
    iget v4, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, v5, v16

    add-int/2addr v4, v5

    iput v4, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1758
    .end local v10           #bottom:I
    .end local v14           #root:Landroid/view/View;
    .end local v15           #rootLocation:[I
    .end local v16           #top:I
    .end local v17           #visibleDisplayFrame:Landroid/graphics/Rect;
    .end local v18           #visibleDisplayFrameHeight:I
    .end local v19           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v20           #wlp:Landroid/view/WindowManager$LayoutParams;
    .end local v23           #yRootInScreen:I
    :cond_9
    :goto_7
    iget v5, v13, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, v13, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v0, v21

    if-ne v0, v4, :cond_a

    iget v4, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v0, v22

    if-eq v0, v4, :cond_14

    :cond_a
    const/4 v9, 0x1

    :goto_8
    move-object/from16 v4, p0

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v4 .. v9}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_0

    .line 1667
    .end local v11           #needsUpdate:Z
    .end local v13           #p:Landroid/view/WindowManager$LayoutParams;
    .end local v21           #x:I
    .end local v22           #y:I
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1670
    .restart local v11       #needsUpdate:Z
    :cond_c
    if-eqz v11, :cond_4

    .line 1672
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 1673
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorYoff:I

    goto/16 :goto_2

    .line 1682
    .restart local v13       #p:Landroid/view/WindowManager$LayoutParams;
    :cond_d
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupWidth:I

    goto/16 :goto_3

    .line 1687
    :cond_e
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    goto/16 :goto_4

    .line 1697
    .restart local v21       #x:I
    .restart local v22       #y:I
    :cond_f
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v4, v5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    goto/16 :goto_5

    .line 1726
    .restart local v10       #bottom:I
    .restart local v14       #root:Landroid/view/View;
    .restart local v15       #rootLocation:[I
    .restart local v16       #top:I
    .restart local v17       #visibleDisplayFrame:Landroid/graphics/Rect;
    .restart local v18       #visibleDisplayFrameHeight:I
    .restart local v19       #vlp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v20       #wlp:Landroid/view/WindowManager$LayoutParams;
    .restart local v23       #yRootInScreen:I
    :cond_10
    move-object/from16 v0, v20

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v4, v4, 0x50

    const/16 v5, 0x50

    if-ne v4, v5, :cond_11

    .line 1727
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, v20

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v23, v4, v5

    goto/16 :goto_6

    .line 1728
    :cond_11
    move-object/from16 v0, v20

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_7

    .line 1729
    iget v4, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v4, v18, v4

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v20

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v23, v4, v5

    goto/16 :goto_6

    .line 1744
    :cond_12
    const/4 v4, 0x1

    aget v4, v15, v4

    iget v5, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v4, v5

    add-int v10, v4, p4

    .line 1745
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    if-le v10, v4, :cond_13

    .line 1746
    iget v4, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v10, v5

    sub-int/2addr v4, v5

    iput v4, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1749
    :cond_13
    const/4 v4, 0x1

    aget v4, v15, v4

    iget v5, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v16, v4, v5

    .line 1750
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v16

    if-ge v0, v4, :cond_9

    .line 1751
    iget v4, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, v5, v16

    add-int/2addr v4, v5

    iput v4, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_7

    .line 1758
    .end local v10           #bottom:I
    .end local v14           #root:Landroid/view/View;
    .end local v15           #rootLocation:[I
    .end local v16           #top:I
    .end local v17           #visibleDisplayFrame:Landroid/graphics/Rect;
    .end local v18           #visibleDisplayFrameHeight:I
    .end local v19           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v20           #wlp:Landroid/view/WindowManager$LayoutParams;
    .end local v23           #yRootInScreen:I
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_8
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .parameter "aboveAnchor"

    .prologue
    .line 926
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    .line 927
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 929
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 934
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    .line 935
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 944
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 940
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1464
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1465
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1467
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1470
    :try_start_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1472
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1475
    :cond_0
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1477
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_1

    .line 1478
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 1482
    :cond_1
    return-void

    .line 1472
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1473
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1475
    :cond_2
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1477
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_3

    .line 1478
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 1472
    :cond_3
    throw v1
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Landroid/widget/PopupWindow$Injector;->getBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 752
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .parameter "anchor"

    .prologue
    .line 1372
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .parameter "anchor"
    .parameter "yOffset"

    .prologue
    .line 1387
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 14
    .parameter "anchor"
    .parameter "yOffset"
    .parameter "ignoreBottomDecorations"

    .prologue
    .line 1408
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1409
    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1412
    invoke-direct {p0, p1, v2}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1414
    if-eqz p1, :cond_0

    .line 1415
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    .line 1416
    .local v9, root:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 1417
    .local v10, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v11, 0x0

    .line 1419
    .local v11, wlp:Landroid/view/WindowManager$LayoutParams;
    instance-of v12, v10, Landroid/view/WindowManager$LayoutParams;

    if-eqz v12, :cond_0

    move-object v11, v10

    .line 1420
    check-cast v11, Landroid/view/WindowManager$LayoutParams;

    .line 1421
    iget v12, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v12, v12, 0x200

    if-nez v12, :cond_4

    const/4 v6, 0x0

    .line 1422
    .local v6, isMultiWindowPopup:Z
    :goto_0
    invoke-direct {p0, v6}, Landroid/widget/PopupWindow;->setMultiWindowPopup(Z)V

    .line 1427
    .end local v6           #isMultiWindowPopup:Z
    .end local v9           #root:Landroid/view/View;
    .end local v10           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v11           #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 1428
    .local v0, anchorPos:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1430
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1431
    .local v1, bottomEdge:I
    if-eqz p3, :cond_1

    .line 1432
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1433
    .local v7, res:Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v1, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1435
    .end local v7           #res:Landroid/content/res/Resources;
    :cond_1
    const/4 v12, 0x1

    aget v12, v0, v12

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    sub-int v12, v1, v12

    sub-int v3, v12, p2

    .line 1436
    .local v3, distanceToBottom:I
    const/4 v12, 0x1

    aget v12, v0, v12

    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    add-int v4, v12, p2

    .line 1439
    .local v4, distanceToTop:I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1442
    .local v8, returnedHeight:I
    iget-boolean v12, p0, Landroid/widget/PopupWindow;->mIsMultiWindowPopup:Z

    if-eqz v12, :cond_2

    .line 1443
    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    div-int/lit8 v5, v12, 0x2

    .line 1444
    .local v5, halfScreenSize:I
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1448
    .end local v5           #halfScreenSize:I
    :cond_2
    iget-object v12, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_3

    .line 1449
    iget-object v12, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v13, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1450
    iget-object v12, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iget-object v13, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    sub-int/2addr v8, v12

    .line 1453
    :cond_3
    return v8

    .line 1421
    .end local v0           #anchorPos:[I
    .end local v1           #bottomEdge:I
    .end local v3           #distanceToBottom:I
    .end local v4           #distanceToTop:I
    .end local v8           #returnedHeight:I
    .restart local v9       #root:Landroid/view/View;
    .restart local v10       #vlp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v11       #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 778
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    .line 958
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 802
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 627
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-gez v2, :cond_2

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 628
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 630
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 628
    goto :goto_0

    .line 630
    :cond_2
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 616
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 617
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .parameter "animationStyle"

    .prologue
    .line 376
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 377
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "background"

    .prologue
    .line 334
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 335
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 605
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 606
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 607
    return-void

    .line 606
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 595
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 596
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "contentView"

    .prologue
    .line 402
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 408
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 412
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 0
    .parameter "focusable"

    .prologue
    .line 453
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    .line 454
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 767
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 768
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 359
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 479
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 480
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 670
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 671
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 686
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 687
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .parameter "onDismissListener"

    .prologue
    .line 1490
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 1491
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .parameter "touchable"

    .prologue
    .line 566
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 567
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 493
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 494
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 647
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 648
    return-void

    .line 647
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 422
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 423
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .parameter "touchModal"

    .prologue
    .line 714
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    .line 715
    return-void

    .line 714
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0
    .parameter "touchable"

    .prologue
    .line 533
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 534
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 793
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 794
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 740
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 741
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 742
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .parameter "layoutType"

    .prologue
    .line 697
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 698
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .parameter "anchor"

    .prologue
    const/4 v0, 0x0

    .line 871
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 872
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 7
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    const/4 v5, 0x1

    .line 889
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_1

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 894
    :cond_1
    if-eqz p1, :cond_2

    .line 895
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 896
    .local v2, root:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 897
    .local v3, vlp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, 0x0

    .line 899
    .local v4, wlp:Landroid/view/WindowManager$LayoutParams;
    instance-of v6, v3, Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_2

    move-object v4, v3

    .line 900
    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 901
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, 0x200

    if-nez v6, :cond_5

    const/4 v0, 0x0

    .line 902
    .local v0, isMultiWindowPopup:Z
    :goto_1
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->setMultiWindowPopup(Z)V

    .line 907
    .end local v0           #isMultiWindowPopup:Z
    .end local v2           #root:Landroid/view/View;
    .end local v3           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 909
    iput-boolean v5, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 910
    iput-boolean v5, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 912
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 913
    .local v1, p:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 915
    invoke-direct {p0, p1, v1, p2, p3}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v5

    invoke-direct {p0, v5}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 917
    iget v5, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v5, :cond_3

    iget v5, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v5, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 918
    :cond_3
    iget v5, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v5, :cond_4

    iget v5, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v5, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 920
    :cond_4
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 922
    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .end local v1           #p:Landroid/view/WindowManager$LayoutParams;
    .restart local v2       #root:Landroid/view/View;
    .restart local v3       #vlp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v4       #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_5
    move v0, v5

    .line 901
    goto :goto_1
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 2
    .parameter "token"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 835
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 841
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 842
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 844
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 845
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 847
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 848
    if-nez p2, :cond_2

    .line 849
    const/16 p2, 0x33

    .line 851
    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 852
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 853
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 854
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_3

    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 855
    :cond_3
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_4

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 856
    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .parameter "parent"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 820
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 821
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 1501
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1525
    :cond_0
    :goto_0
    return-void

    .line 1505
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1508
    .local v2, p:Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 1510
    .local v3, update:Z
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    .line 1511
    .local v0, newAnim:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    .line 1512
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1513
    const/4 v3, 0x1

    .line 1516
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    .line 1517
    .local v1, newFlags:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    .line 1518
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1519
    const/4 v3, 0x1

    .line 1522
    :cond_3
    if-eqz v3, :cond_0

    .line 1523
    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1536
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1538
    .local v6, p:Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1539
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1553
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1554
    return-void
.end method

.method public update(IIIIZ)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "force"

    .prologue
    const/4 v7, -0x1

    .line 1570
    if-eq p3, v7, :cond_0

    .line 1571
    iput p3, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 1572
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1575
    :cond_0
    if-eq p4, v7, :cond_1

    .line 1576
    iput p4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 1577
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1580
    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_3

    .line 1625
    :cond_2
    :goto_0
    return-void

    .line 1584
    :cond_3
    iget-object v6, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 1586
    .local v4, p:Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    .line 1588
    .local v5, update:Z
    iget v6, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v6, :cond_a

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 1589
    .local v1, finalWidth:I
    :goto_1
    if-eq p3, v7, :cond_4

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v6, v1, :cond_4

    .line 1590
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1591
    const/4 v5, 0x1

    .line 1594
    :cond_4
    iget v6, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v6, :cond_b

    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 1595
    .local v0, finalHeight:I
    :goto_2
    if-eq p4, v7, :cond_5

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v6, v0, :cond_5

    .line 1596
    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1597
    const/4 v5, 0x1

    .line 1600
    :cond_5
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v6, p1, :cond_6

    .line 1601
    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1602
    const/4 v5, 0x1

    .line 1605
    :cond_6
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, p2, :cond_7

    .line 1606
    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1607
    const/4 v5, 0x1

    .line 1610
    :cond_7
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    .line 1611
    .local v2, newAnim:I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_8

    .line 1612
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1613
    const/4 v5, 0x1

    .line 1616
    :cond_8
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v3

    .line 1617
    .local v3, newFlags:I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_9

    .line 1618
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1619
    const/4 v5, 0x1

    .line 1622
    :cond_9
    if-eqz v5, :cond_2

    .line 1623
    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1588
    .end local v0           #finalHeight:I
    .end local v1           #finalWidth:I
    .end local v2           #newAnim:I
    .end local v3           #newFlags:I
    :cond_a
    iget v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    goto :goto_1

    .line 1594
    .restart local v1       #finalWidth:I
    :cond_b
    iget v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 8
    .parameter "anchor"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 1637
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 1638
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 8
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x1

    .line 1656
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 1657
    return-void
.end method
