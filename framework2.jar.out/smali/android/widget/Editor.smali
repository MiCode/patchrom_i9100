.class public Landroid/widget/Editor;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$InputMethodState;,
        Landroid/widget/Editor$InputContentType;,
        Landroid/widget/Editor$ErrorPopup;,
        Landroid/widget/Editor$CorrectionHighlighter;,
        Landroid/widget/Editor$SelectionModifierCursorController;,
        Landroid/widget/Editor$InsertionPointCursorController;,
        Landroid/widget/Editor$CursorController;,
        Landroid/widget/Editor$SelectionStartTopHandleView;,
        Landroid/widget/Editor$SelectionEndHandleView;,
        Landroid/widget/Editor$SelectionStartHandleView;,
        Landroid/widget/Editor$InsertionHandleView;,
        Landroid/widget/Editor$HandleView;,
        Landroid/widget/Editor$ActionPopupWindow;,
        Landroid/widget/Editor$SelectionActionModeCallback;,
        Landroid/widget/Editor$SuggestionsPopupWindow;,
        Landroid/widget/Editor$PinnedPopupWindow;,
        Landroid/widget/Editor$PositionListener;,
        Landroid/widget/Editor$EasyEditPopupWindow;,
        Landroid/widget/Editor$EasyEditSpanController;,
        Landroid/widget/Editor$DragLocalState;,
        Landroid/widget/Editor$Blink;,
        Landroid/widget/Editor$TextViewPositionListener;
    }
.end annotation


# static fields
.field static final BLINK:I = 0x1f4

.field private static DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x0

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Editor"

.field private static final TEMP_POSITION:[F

.field private static TOP_LINE:I


# instance fields
.field private mActionModeMenu:Landroid/view/Menu;

.field mBlink:Landroid/widget/Editor$Blink;

.field mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

.field mCreatedWithASelection:Z

.field mCursorCount:I

.field final mCursorDrawable:[Landroid/graphics/drawable/Drawable;

.field mCursorVisible:Z

.field mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mDeviceDPI:I

.field mDiscardNextActionUp:Z

.field private mEasyEditSpanController:Landroid/widget/Editor$EasyEditSpanController;

.field mError:Ljava/lang/CharSequence;

.field mErrorPopup:Landroid/widget/Editor$ErrorPopup;

.field mErrorWasChanged:Z

.field mFrozenWithFocus:Z

.field mIgnoreActionUpEvent:Z

.field mInBatchEditControllers:Z

.field mInputContentType:Landroid/widget/Editor$InputContentType;

.field mInputMethodState:Landroid/widget/Editor$InputMethodState;

.field mInputType:I

.field mInsertionControllerEnabled:Z

.field mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

.field mKeyListener:Landroid/text/method/KeyListener;

.field mLastDownPositionX:F

.field mLastDownPositionY:F

.field private mLastOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPositionListener:Landroid/widget/Editor$PositionListener;

.field mPreserveDetachedSelection:Z

.field mSelectAllOnFocus:Z

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeftTop:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRightTop:Landroid/graphics/drawable/Drawable;

.field mSelectionActionMode:Landroid/view/ActionMode;

.field mSelectionControllerEnabled:Z

.field mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

.field mSelectionMoved:Z

.field mShowCursor:J

.field mShowErrorAfterAttach:Z

.field mShowSoftInputOnFocus:Z

.field mShowSuggestionRunnable:Ljava/lang/Runnable;

.field mSpellChecker:Landroid/widget/SpellChecker;

.field mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

.field private mTempRect:Landroid/graphics/Rect;

.field mTemporaryDetach:Z

.field mTextDisplayLists:[Landroid/view/DisplayList;

.field mTextIsSelectable:Z

.field private mTextView:Landroid/widget/TextView;

.field private mThemeIsDeviceDefault:Z

.field mTouchFocusSelected:Z

.field mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Landroid/widget/Editor;->TEMP_POSITION:[F

    .line 134
    const/16 v0, 0x14

    sput v0, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    .line 4650
    const/4 v0, 0x0

    sput v0, Landroid/widget/Editor;->TOP_LINE:I

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 6
    .parameter "textView"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 226
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput v5, p0, Landroid/widget/Editor;->mInputType:I

    .line 164
    iput-boolean v4, p0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 180
    iput-boolean v4, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 188
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 218
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/Editor;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 219
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/Editor;->mLastOrientation:I

    .line 4649
    iput-boolean v5, p0, Landroid/widget/Editor;->mThemeIsDeviceDefault:Z

    .line 227
    iput-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 230
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 231
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Landroid/widget/Editor;->mDeviceDPI:I

    .line 235
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 236
    .local v1, outValue:Landroid/util/TypedValue;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103fd

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 237
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    .line 238
    iput-boolean v4, p0, Landroid/widget/Editor;->mThemeIsDeviceDefault:Z

    .line 245
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Landroid/widget/Editor;->mLastOrientation:I

    .line 247
    new-instance v2, Landroid/widget/Editor$1;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/widget/Editor$1;-><init>(Landroid/widget/Editor;Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/Editor;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 297
    return-void

    .line 240
    :cond_0
    iput-boolean v5, p0, Landroid/widget/Editor;->mThemeIsDeviceDefault:Z

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/widget/Editor;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/Editor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget v0, p0, Landroid/widget/Editor;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/Editor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput p1, p0, Landroid/widget/Editor;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/Editor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/Editor;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Landroid/widget/Editor;->isOffsetVisible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2202(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$2300(Landroid/widget/Editor;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    return-void
.end method

.method static synthetic access$2400(Landroid/widget/Editor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/widget/Editor;->mThemeIsDeviceDefault:Z

    return v0
.end method

.method static synthetic access$2502(Landroid/widget/Editor;Landroid/view/Menu;)Landroid/view/Menu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Landroid/widget/Editor;->mActionModeMenu:Landroid/view/Menu;

    return-object p1
.end method

.method static synthetic access$2600(Landroid/widget/Editor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/Editor;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionVisible(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/Editor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/Editor;Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Landroid/widget/Editor;->updateShowAsAction(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3002(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3100(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3102(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3200(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3202(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeftTop:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3302(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleLeftTop:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3400(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleRightTop:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3402(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleRightTop:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3500(Landroid/widget/Editor;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/widget/Editor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    return v0
.end method

.method private canSelectText()Z
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 12
    .parameter "pop"
    .parameter "text"
    .parameter "tv"

    .prologue
    .line 665
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 666
    .local v11, wid:I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 668
    .local v8, ht:I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 670
    .local v3, defaultWidthInPixels:I
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 672
    .local v0, l:Landroid/text/Layout;
    const/4 v10, 0x0

    .line 673
    .local v10, max:F
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 674
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 673
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 681
    :cond_0
    float-to-double v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, v11

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 682
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 683
    return-void
.end method

.method private downgradeEasyCorrectionSpans()V
    .locals 8

    .prologue
    .line 1110
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1111
    .local v4, text:Ljava/lang/CharSequence;
    instance-of v5, v4, Landroid/text/Spannable;

    if-eqz v5, :cond_1

    move-object v2, v4

    .line 1112
    check-cast v2, Landroid/text/Spannable;

    .line 1113
    .local v2, spannable:Landroid/text/Spannable;
    const/4 v5, 0x0

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/SuggestionSpan;

    .line 1115
    .local v3, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 1116
    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 1117
    .local v0, flags:I
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    and-int/lit8 v5, v0, 0x2

    if-nez v5, :cond_0

    .line 1119
    and-int/lit8 v0, v0, -0x2

    .line 1120
    aget-object v5, v3, v1

    invoke-virtual {v5, v0}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 1115
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1124
    .end local v0           #flags:I
    .end local v1           #i:I
    .end local v2           #spannable:Landroid/text/Spannable;
    .end local v3           #suggestionSpans:[Landroid/text/style/SuggestionSpan;
    :cond_1
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;I)V
    .locals 4
    .parameter "canvas"
    .parameter "cursorOffsetVertical"

    .prologue
    const/4 v3, 0x0

    .line 1576
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 1577
    .local v1, translate:Z
    :goto_0
    if-eqz v1, :cond_0

    int-to-float v2, p2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1578
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ge v0, v2, :cond_2

    .line 1579
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1578
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1576
    .end local v0           #i:I
    .end local v1           #translate:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1581
    .restart local v0       #i:I
    .restart local v1       #translate:Z
    :cond_2
    if-eqz v1, :cond_3

    neg-int v2, p2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1582
    :cond_3
    return-void
.end method

.method private drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 33
    .parameter "canvas"
    .parameter "layout"
    .parameter "highlight"
    .parameter "highlightPaint"
    .parameter "cursorOffsetVertical"

    .prologue
    .line 1463
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v25

    .line 1464
    .local v25, lineRange:J
    invoke-static/range {v25 .. v26}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v9

    .line 1465
    .local v9, firstLine:I
    invoke-static/range {v25 .. v26}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v10

    .line 1466
    .local v10, lastLine:I
    if-gez v10, :cond_1

    .line 1550
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    .line 1468
    invoke-virtual/range {v4 .. v10}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 1471
    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/text/DynamicLayout;

    if-eqz v4, :cond_a

    .line 1472
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    if-nez v4, :cond_2

    .line 1473
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealObjectArraySize(I)I

    move-result v4

    new-array v4, v4, [Landroid/view/DisplayList;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    :cond_2
    move-object/from16 v19, p2

    .line 1476
    check-cast v19, Landroid/text/DynamicLayout;

    .line 1477
    .local v19, dynamicLayout:Landroid/text/DynamicLayout;
    invoke-virtual/range {v19 .. v19}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v14

    .line 1478
    .local v14, blockEndLines:[I
    invoke-virtual/range {v19 .. v19}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v16

    .line 1479
    .local v16, blockIndices:[I
    invoke-virtual/range {v19 .. v19}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v29

    .line 1481
    .local v29, numberOfBlocks:I
    const/16 v20, -0x1

    .line 1482
    .local v20, endOfPreviousBlock:I
    const/16 v31, 0x0

    .line 1483
    .local v31, searchStartIndex:I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    .line 1484
    aget v13, v14, v22

    .line 1485
    .local v13, blockEndLine:I
    aget v15, v16, v22

    .line 1487
    .local v15, blockIndex:I
    const/4 v4, -0x1

    if-ne v15, v4, :cond_5

    const/16 v17, 0x1

    .line 1488
    .local v17, blockIsInvalid:Z
    :goto_2
    if-eqz v17, :cond_3

    .line 1489
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v29

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor;->getAvailableDisplayListIndex([III)I

    move-result v15

    .line 1492
    aput v15, v16, v22

    .line 1493
    add-int/lit8 v31, v15, 0x1

    .line 1496
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    aget-object v12, v4, v15

    .line 1497
    .local v12, blockDisplayList:Landroid/view/DisplayList;
    if-nez v12, :cond_6

    .line 1498
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHardwareRenderer()Landroid/view/HardwareRenderer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Text "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/HardwareRenderer;->createDisplayList(Ljava/lang/String;)Landroid/view/DisplayList;

    move-result-object v12

    .end local v12           #blockDisplayList:Landroid/view/DisplayList;
    aput-object v12, v4, v15

    .line 1504
    .restart local v12       #blockDisplayList:Landroid/view/DisplayList;
    :cond_4
    :goto_3
    invoke-virtual {v12}, Landroid/view/DisplayList;->isValid()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1505
    add-int/lit8 v11, v20, 0x1

    .line 1506
    .local v11, blockBeginLine:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v32

    .line 1507
    .local v32, top:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v18

    .line 1508
    .local v18, bottom:I
    const/16 v23, 0x0

    .line 1509
    .local v23, left:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v30

    .line 1510
    .local v30, right:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1511
    const v28, 0x7f7fffff

    .line 1512
    .local v28, min:F
    const/16 v27, 0x1

    .line 1513
    .local v27, max:F
    move/from16 v24, v11

    .local v24, line:I
    :goto_4
    move/from16 v0, v24

    if-gt v0, v13, :cond_7

    .line 1514
    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v28

    .line 1515
    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    move/from16 v0, v27

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v27

    .line 1513
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 1487
    .end local v11           #blockBeginLine:I
    .end local v12           #blockDisplayList:Landroid/view/DisplayList;
    .end local v17           #blockIsInvalid:Z
    .end local v18           #bottom:I
    .end local v23           #left:I
    .end local v24           #line:I
    .end local v27           #max:F
    .end local v28           #min:F
    .end local v30           #right:I
    .end local v32           #top:I
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 1501
    .restart local v12       #blockDisplayList:Landroid/view/DisplayList;
    .restart local v17       #blockIsInvalid:Z
    :cond_6
    if-eqz v17, :cond_4

    invoke-virtual {v12}, Landroid/view/DisplayList;->invalidate()V

    goto :goto_3

    .line 1517
    .restart local v11       #blockBeginLine:I
    .restart local v18       #bottom:I
    .restart local v23       #left:I
    .restart local v24       #line:I
    .restart local v27       #max:F
    .restart local v28       #min:F
    .restart local v30       #right:I
    .restart local v32       #top:I
    :cond_7
    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v23, v0

    .line 1518
    const/high16 v4, 0x3f00

    add-float v4, v4, v27

    float-to-int v0, v4

    move/from16 v30, v0

    .line 1521
    .end local v24           #line:I
    .end local v27           #max:F
    .end local v28           #min:F
    :cond_8
    invoke-virtual {v12}, Landroid/view/DisplayList;->start()Landroid/view/HardwareCanvas;

    move-result-object v21

    .line 1524
    .local v21, hardwareCanvas:Landroid/view/HardwareCanvas;
    sub-int v4, v30, v23

    sub-int v5, v18, v32

    :try_start_0
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/view/HardwareCanvas;->setViewport(II)V

    .line 1526
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/HardwareCanvas;->onPreDraw(Landroid/graphics/Rect;)I

    .line 1529
    move/from16 v0, v23

    neg-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v32

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 1530
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11, v13}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1533
    invoke-virtual/range {v21 .. v21}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 1534
    invoke-virtual {v12}, Landroid/view/DisplayList;->end()V

    .line 1535
    move/from16 v0, v23

    move/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v18

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .line 1537
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/view/DisplayList;->setClipChildren(Z)V

    .end local v11           #blockBeginLine:I
    .end local v18           #bottom:I
    .end local v21           #hardwareCanvas:Landroid/view/HardwareCanvas;
    .end local v23           #left:I
    .end local v30           #right:I
    .end local v32           #top:I
    :cond_9
    move-object/from16 v4, p1

    .line 1541
    check-cast v4, Landroid/view/HardwareCanvas;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v12, v5, v6}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I

    .line 1544
    move/from16 v20, v13

    .line 1483
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 1533
    .restart local v11       #blockBeginLine:I
    .restart local v18       #bottom:I
    .restart local v21       #hardwareCanvas:Landroid/view/HardwareCanvas;
    .restart local v23       #left:I
    .restart local v30       #right:I
    .restart local v32       #top:I
    :catchall_0
    move-exception v4

    invoke-virtual/range {v21 .. v21}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 1534
    invoke-virtual {v12}, Landroid/view/DisplayList;->end()V

    .line 1535
    move/from16 v0, v23

    move/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v18

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .line 1537
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/view/DisplayList;->setClipChildren(Z)V

    .line 1533
    throw v4

    .line 1548
    .end local v11           #blockBeginLine:I
    .end local v12           #blockDisplayList:Landroid/view/DisplayList;
    .end local v13           #blockEndLine:I
    .end local v14           #blockEndLines:[I
    .end local v15           #blockIndex:I
    .end local v16           #blockIndices:[I
    .end local v17           #blockIsInvalid:Z
    .end local v18           #bottom:I
    .end local v19           #dynamicLayout:Landroid/text/DynamicLayout;
    .end local v20           #endOfPreviousBlock:I
    .end local v21           #hardwareCanvas:Landroid/view/HardwareCanvas;
    .end local v22           #i:I
    .end local v23           #left:I
    .end local v29           #numberOfBlocks:I
    .end local v30           #right:I
    .end local v31           #searchStartIndex:I
    .end local v32           #top:I
    :cond_a
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v10}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    goto/16 :goto_0
.end method

.method private extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .locals 8
    .parameter "request"
    .parameter "partialStartOffset"
    .parameter "partialEndOffset"
    .parameter "delta"
    .parameter "outText"

    .prologue
    const/4 v6, 0x0

    .line 1278
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1279
    .local v1, content:Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    .line 1280
    const/4 v7, -0x2

    if-eq p2, v7, :cond_c

    .line 1281
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1282
    .local v0, N:I
    if-gez p2, :cond_4

    .line 1283
    const/4 v7, -0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1284
    const/4 p2, 0x0

    .line 1285
    move p3, v0

    .line 1318
    :cond_0
    :goto_0
    iget v7, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_b

    .line 1319
    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 1330
    .end local v0           #N:I
    :goto_1
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1331
    const/16 v7, 0x800

    invoke-static {v1, v7}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v7

    if-eqz v7, :cond_1

    .line 1332
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1334
    :cond_1
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1335
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1337
    :cond_2
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 1338
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 1339
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 1340
    const/4 v6, 0x1

    .line 1342
    :cond_3
    return v6

    .line 1289
    .restart local v0       #N:I
    :cond_4
    add-int/2addr p3, p4

    .line 1291
    instance-of v7, v1, Landroid/text/Spanned;

    if-eqz v7, :cond_7

    move-object v4, v1

    .line 1292
    check-cast v4, Landroid/text/Spanned;

    .line 1293
    .local v4, spanned:Landroid/text/Spanned;
    const-class v7, Landroid/text/ParcelableSpan;

    invoke-interface {v4, p2, p3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 1295
    .local v5, spans:[Ljava/lang/Object;
    array-length v2, v5

    .line 1296
    .local v2, i:I
    :cond_5
    :goto_2
    if-lez v2, :cond_7

    .line 1297
    add-int/lit8 v2, v2, -0x1

    .line 1298
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 1299
    .local v3, j:I
    if-ge v3, p2, :cond_6

    move p2, v3

    .line 1300
    :cond_6
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1301
    if-le v3, p3, :cond_5

    move p3, v3

    goto :goto_2

    .line 1304
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #spanned:Landroid/text/Spanned;
    .end local v5           #spans:[Ljava/lang/Object;
    :cond_7
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1305
    sub-int v7, p3, p4

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 1307
    if-le p2, v0, :cond_9

    .line 1308
    move p2, v0

    .line 1312
    :cond_8
    :goto_3
    if-le p3, v0, :cond_a

    .line 1313
    move p3, v0

    goto :goto_0

    .line 1309
    :cond_9
    if-gez p2, :cond_8

    .line 1310
    const/4 p2, 0x0

    goto :goto_3

    .line 1314
    :cond_a
    if-gez p3, :cond_0

    .line 1315
    const/4 p3, 0x0

    goto :goto_0

    .line 1322
    :cond_b
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1326
    .end local v0           #N:I
    :cond_c
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1327
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 1328
    const-string v7, ""

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private extractedTextModeWillBeStarted()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1713
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v2, v2, Landroid/inputmethodservice/ExtractEditText;

    if-nez v2, :cond_0

    .line 1714
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1715
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1717
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v1
.end method

.method private getAvailableDisplayListIndex([III)I
    .locals 8
    .parameter "blockIndices"
    .parameter "numberOfBlocks"
    .parameter "searchStartIndex"

    .prologue
    const/4 v7, 0x0

    .line 1554
    iget-object v6, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    array-length v4, v6

    .line 1555
    .local v4, length:I
    move v2, p3

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 1556
    const/4 v0, 0x0

    .line 1557
    .local v0, blockIndexFound:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, p2, :cond_0

    .line 1558
    aget v6, p1, v3

    if-ne v6, v2, :cond_1

    .line 1559
    const/4 v0, 0x1

    .line 1563
    :cond_0
    if-eqz v0, :cond_3

    .line 1555
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1557
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1568
    .end local v0           #blockIndexFound:Z
    .end local v3           #j:I
    :cond_2
    add-int/lit8 v6, v4, 0x1

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    .line 1569
    .local v5, newSize:I
    new-array v1, v5, [Landroid/view/DisplayList;

    .line 1570
    .local v1, displayLists:[Landroid/view/DisplayList;
    iget-object v6, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    invoke-static {v6, v7, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1571
    iput-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    move v2, v4

    .line 1572
    .end local v1           #displayLists:[Landroid/view/DisplayList;
    .end local v2           #i:I
    .end local v5           #newSize:I
    :cond_3
    return v2
.end method

.method private getCharRange(I)J
    .locals 7
    .parameter "offset"

    .prologue
    .line 826
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 827
    .local v4, textLength:I
    add-int/lit8 v5, p1, 0x1

    if-ge v5, v4, :cond_0

    .line 828
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 829
    .local v0, currentChar:C
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 830
    .local v1, nextChar:C
    invoke-static {v0, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 831
    add-int/lit8 v5, p1, 0x2

    invoke-static {p1, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    .line 847
    .end local v0           #currentChar:C
    .end local v1           #nextChar:C
    :goto_0
    return-wide v5

    .line 834
    :cond_0
    if-ge p1, v4, :cond_1

    .line 835
    add-int/lit8 v5, p1, 0x1

    invoke-static {p1, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0

    .line 837
    :cond_1
    add-int/lit8 v5, p1, -0x2

    if-ltz v5, :cond_2

    .line 838
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 839
    .local v2, previousChar:C
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, p1, -0x2

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 840
    .local v3, previousPreviousChar:C
    invoke-static {v3, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 841
    add-int/lit8 v5, p1, -0x2

    invoke-static {v5, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0

    .line 844
    .end local v2           #previousChar:C
    .end local v3           #previousPreviousChar:C
    :cond_2
    add-int/lit8 v5, p1, -0x1

    if-ltz v5, :cond_3

    .line 845
    add-int/lit8 v5, p1, -0x1

    invoke-static {v5, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0

    .line 847
    :cond_3
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0
.end method

.method private getErrorX()I
    .locals 5

    .prologue
    .line 474
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 476
    .local v1, scale:F
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v2, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 477
    .local v0, dr:Landroid/widget/TextView$Drawables;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v3}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int v3, v2, v3

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :goto_0
    div-int/lit8 v2, v2, 0x2

    sub-int v2, v3, v2

    const/high16 v3, 0x41c8

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getErrorY()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 490
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 491
    .local v0, compoundPaddingTop:I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getBottom()I

    move-result v5

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTop()I

    move-result v7

    sub-int/2addr v5, v7

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    sub-int/2addr v5, v7

    sub-int v4, v5, v0

    .line 494
    .local v4, vspace:I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, v5, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 495
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_1

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :goto_0
    sub-int v5, v4, v5

    div-int/lit8 v5, v5, 0x2

    add-int v2, v0, v5

    .line 502
    .local v2, icontop:I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v3, v5, Landroid/util/DisplayMetrics;->density:F

    .line 503
    .local v3, scale:F
    if-eqz v1, :cond_0

    iget v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :cond_0
    add-int v5, v2, v6

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    const/high16 v6, 0x4000

    mul-float/2addr v6, v3

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    return v5

    .end local v2           #icontop:I
    .end local v3           #scale:F
    :cond_1
    move v5, v6

    .line 495
    goto :goto_0
.end method

.method private getLastTapPosition()I
    .locals 2

    .prologue
    .line 1137
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_1

    .line 1138
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 1139
    .local v0, lastTapPosition:I
    if-ltz v0, :cond_1

    .line 1141
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1142
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1148
    .end local v0           #lastTapPosition:I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getLastTouchOffsets()J
    .locals 5

    .prologue
    .line 995
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 996
    .local v2, selectionController:Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 997
    .local v1, minOffset:I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 998
    .local v0, maxOffset:I
    invoke-static {v1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3
.end method

.method private getPositionListener()Landroid/widget/Editor$PositionListener;
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-nez v0, :cond_0

    .line 874
    new-instance v0, Landroid/widget/Editor$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    .line 876
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    return-object v0
.end method

.method private getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;I)F
    .locals 1
    .parameter "layout"
    .parameter "hintLayout"
    .parameter "offset"

    .prologue
    .line 1653
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1656
    invoke-virtual {p2, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 1658
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    goto :goto_0
.end method

.method private getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;
    .locals 7
    .parameter "text"

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 1938
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10900f1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1941
    .local v0, shadowView:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 1942
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to inflate text drag thumbnail"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1945
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sget v3, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    if-le v2, v3, :cond_1

    .line 1946
    sget v2, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    invoke-interface {p1, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1948
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1949
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1951
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1952
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1954
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1957
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1958
    .local v1, size:I
    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 1960
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 1961
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1962
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method private hasPasswordTransformationMethod()Z
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method private hideCursorControllers()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 588
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 589
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 590
    return-void
.end method

.method private hideError()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 462
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 463
    return-void
.end method

.method private hideInsertionPointCursorController()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 567
    :cond_0
    return-void
.end method

.method private hideSpanControllers()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Landroid/widget/Editor;->mEasyEditSpanController:Landroid/widget/Editor$EasyEditSpanController;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Landroid/widget/Editor;->mEasyEditSpanController:Landroid/widget/Editor$EasyEditSpanController;

    invoke-virtual {v0}, Landroid/widget/Editor$EasyEditSpanController;->hide()V

    .line 581
    :cond_0
    return-void
.end method

.method private isCursorInsideEasyCorrectionSpan()Z
    .locals 6

    .prologue
    .line 1737
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 1738
    .local v1, spannable:Landroid/text/Spannable;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 1740
    .local v2, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1741
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 1742
    const/4 v3, 0x1

    .line 1745
    :goto_1
    return v3

    .line 1740
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1745
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isCursorInsideSuggestionSpan()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1724
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1725
    .local v1, text:Ljava/lang/CharSequence;
    instance-of v3, v1, Landroid/text/Spannable;

    if-nez v3, :cond_1

    .line 1729
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return v2

    .line 1727
    .restart local v1       #text:Ljava/lang/CharSequence;
    :cond_1
    check-cast v1, Landroid/text/Spannable;

    .end local v1           #text:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    .line 1729
    .local v0, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isOffsetVisible(I)Z
    .locals 6
    .parameter "offset"

    .prologue
    .line 925
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 927
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_0

    .line 928
    const/4 v4, 0x0

    .line 934
    :goto_0
    return v4

    .line 931
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 932
    .local v1, line:I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 933
    .local v2, lineBottom:I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v3, v4

    .line 934
    .local v3, primaryHorizontal:I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {p0, v4, v5}, Landroid/widget/Editor;->isPositionVisible(II)Z

    move-result v4

    goto :goto_0
.end method

.method private isPositionOnText(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 942
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 943
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 950
    :cond_0
    :goto_0
    return v2

    .line 945
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v1

    .line 946
    .local v1, line:I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    .line 948
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_0

    .line 949
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_0

    .line 950
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isPositionVisible(II)Z
    .locals 11
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 885
    sget-object v6, Landroid/widget/Editor;->TEMP_POSITION:[F

    monitor-enter v6

    .line 886
    :try_start_0
    sget-object v2, Landroid/widget/Editor;->TEMP_POSITION:[F

    .line 887
    .local v2, position:[F
    const/4 v7, 0x0

    int-to-float v8, p1

    aput v8, v2, v7

    .line 888
    const/4 v7, 0x1

    int-to-float v8, p2

    aput v8, v2, v7

    .line 889
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 891
    .local v3, view:Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_5

    .line 892
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-eq v3, v7, :cond_0

    .line 894
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 895
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 898
    :cond_0
    const/4 v7, 0x0

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x0

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 900
    :cond_1
    monitor-exit v6

    .line 921
    :goto_1
    return v4

    .line 903
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-nez v7, :cond_3

    .line 904
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 907
    :cond_3
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 908
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 910
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 911
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v7, v1, Landroid/view/View;

    if-eqz v7, :cond_4

    .line 912
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    goto :goto_0

    .line 915
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 918
    .end local v1           #parent:Landroid/view/ViewParent;
    :cond_5
    monitor-exit v6

    move v4, v5

    .line 921
    goto :goto_1

    .line 918
    .end local v2           #position:[F
    .end local v3           #view:Landroid/view/View;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private resumeBlink()V
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 637
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 639
    :cond_0
    return-void
.end method

.method private selectCurrentWord()Z
    .locals 17

    .prologue
    .line 727
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v15

    if-nez v15, :cond_0

    .line 728
    const/4 v15, 0x0

    .line 807
    :goto_0
    return v15

    .line 731
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->hasPasswordTransformationMethod()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 735
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->selectAllText()Z

    move-result v15

    goto :goto_0

    .line 738
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    .line 739
    .local v1, inputType:I
    and-int/lit8 v2, v1, 0xf

    .line 740
    .local v2, klass:I
    and-int/lit16 v13, v1, 0xff0

    .line 743
    .local v13, variation:I
    const/4 v15, 0x2

    if-eq v2, v15, :cond_2

    const/4 v15, 0x3

    if-eq v2, v15, :cond_2

    const/4 v15, 0x4

    if-eq v2, v15, :cond_2

    const/16 v15, 0x10

    if-eq v13, v15, :cond_2

    const/16 v15, 0x20

    if-eq v13, v15, :cond_2

    const/16 v15, 0xd0

    if-eq v13, v15, :cond_2

    const/16 v15, 0xb0

    if-ne v13, v15, :cond_3

    .line 750
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->selectAllText()Z

    move-result v15

    goto :goto_0

    .line 753
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v3

    .line 754
    .local v3, lastTouchOffsets:J
    invoke-static {v3, v4}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v6

    .line 755
    .local v6, minOffset:I
    invoke-static {v3, v4}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v5

    .line 758
    .local v5, maxOffset:I
    if-ltz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lt v6, v15, :cond_5

    :cond_4
    const/4 v15, 0x0

    goto :goto_0

    .line 759
    :cond_5
    if-ltz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lt v5, v15, :cond_7

    :cond_6
    const/4 v15, 0x0

    goto :goto_0

    .line 764
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Landroid/text/Spanned;

    const-class v16, Landroid/text/style/URLSpan;

    move-object/from16 v0, v16

    invoke-interface {v15, v6, v5, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/URLSpan;

    .line 766
    .local v12, urlSpans:[Landroid/text/style/URLSpan;
    array-length v15, v12

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_b

    .line 767
    const/4 v15, 0x0

    aget-object v11, v12, v15

    .line 768
    .local v11, urlSpan:Landroid/text/style/URLSpan;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Landroid/text/Spanned;

    invoke-interface {v15, v11}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 769
    .local v10, selectionStart:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Landroid/text/Spanned;

    invoke-interface {v15, v11}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 790
    .end local v11           #urlSpan:Landroid/text/style/URLSpan;
    .local v9, selectionEnd:I
    :cond_8
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_Framework_EnableEmoji"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 792
    add-int/lit8 v15, v10, -0x1

    if-ltz v15, :cond_9

    .line 793
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    add-int/lit8 v16, v10, -0x1

    invoke-interface/range {v15 .. v16}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    const v16, 0xdbb8

    move/from16 v0, v16

    if-lt v15, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    add-int/lit8 v16, v10, -0x1

    invoke-interface/range {v15 .. v16}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    const v16, 0xdbbb

    move/from16 v0, v16

    if-gt v15, v0, :cond_9

    .line 794
    add-int/lit8 v10, v10, -0x1

    .line 796
    :cond_9
    add-int/lit8 v15, v9, -0x1

    if-lez v15, :cond_a

    .line 797
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    add-int/lit8 v16, v9, -0x1

    invoke-interface/range {v15 .. v16}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    const v16, 0xdbb8

    move/from16 v0, v16

    if-lt v15, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    add-int/lit8 v16, v9, -0x1

    invoke-interface/range {v15 .. v16}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    const v16, 0xdbbb

    move/from16 v0, v16

    if-gt v15, v0, :cond_a

    .line 798
    add-int/lit8 v9, v9, -0x1

    .line 803
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Landroid/text/Spannable;

    invoke-static {v15, v10, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 805
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->setStartHandle()V

    .line 807
    if-le v9, v10, :cond_d

    const/4 v15, 0x1

    goto/16 :goto_0

    .line 771
    .end local v9           #selectionEnd:I
    .end local v10           #selectionStart:I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v14

    .line 772
    .local v14, wordIterator:Landroid/text/method/WordIterator;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15, v6, v5}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 776
    invoke-virtual {v14, v6}, Landroid/text/method/WordIterator;->getBeginningSelection(I)I

    move-result v10

    .line 779
    .restart local v10       #selectionStart:I
    invoke-virtual {v14, v5}, Landroid/text/method/WordIterator;->getEndSelection(I)I

    move-result v9

    .line 781
    .restart local v9       #selectionEnd:I
    const/4 v15, -0x1

    if-eq v10, v15, :cond_c

    const/4 v15, -0x1

    if-eq v9, v15, :cond_c

    if-ne v10, v9, :cond_8

    .line 784
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/Editor;->getCharRange(I)J

    move-result-wide v7

    .line 785
    .local v7, range:J
    invoke-static {v7, v8}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v10

    .line 786
    invoke-static {v7, v8}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v9

    goto/16 :goto_1

    .line 807
    .end local v7           #range:J
    .end local v14           #wordIterator:Landroid/text/method/WordIterator;
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method private shouldBlink()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1884
    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1892
    :cond_0
    :goto_0
    return v2

    .line 1886
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1887
    .local v1, start:I
    if-ltz v1, :cond_0

    .line 1889
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1890
    .local v0, end:I
    if-ltz v0, :cond_0

    .line 1892
    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showError()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f00

    .line 394
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_0

    .line 395
    iput-boolean v8, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 418
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-nez v4, :cond_1

    .line 400
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 401
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x10900f9

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 404
    .local v0, err:Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 405
    .local v2, scale:F
    new-instance v4, Landroid/widget/Editor$ErrorPopup;

    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v5, v5

    const/high16 v6, 0x4248

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/Editor$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 406
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->setFocusable(Z)V

    .line 409
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4, v8}, Landroid/widget/Editor$ErrorPopup;->setInputMethodMode(I)V

    .line 412
    .end local v0           #err:Landroid/widget/TextView;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #scale:F
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 413
    .local v3, tv:Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5, v3}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 414
    iget-object v4, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v6

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/Editor$ErrorPopup;->showAsDropDown(Landroid/view/View;II)V

    .line 417
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    goto :goto_0
.end method

.method private suspendBlink()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 632
    :cond_0
    return-void
.end method

.method private touchPositionIsInSelection()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 851
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 852
    .local v4, selectionStart:I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 854
    .local v3, selectionEnd:I
    if-ne v4, v3, :cond_0

    .line 869
    :goto_0
    return v7

    .line 858
    :cond_0
    if-le v4, v3, :cond_1

    .line 859
    move v5, v4

    .line 860
    .local v5, tmp:I
    move v4, v3

    .line 861
    move v3, v5

    .line 862
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 865
    .end local v5           #tmp:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 866
    .local v2, selectionController:Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 867
    .local v1, minOffset:I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 869
    .local v0, maxOffset:I
    if-lt v1, v4, :cond_2

    if-ge v0, v3, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1
.end method

.method private updateCursorPosition(IIIF)V
    .locals 6
    .parameter "cursorIndex"
    .parameter "top"
    .parameter "bottom"
    .parameter "horizontal"

    .prologue
    const/high16 v5, 0x3f00

    .line 1829
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    if-nez v2, :cond_0

    .line 1830
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v4, v4, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1833
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 1834
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1836
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget v2, p0, Landroid/widget/Editor;->mDeviceDPI:I

    const/16 v4, 0x140

    if-lt v2, v4, :cond_2

    const/4 v2, 0x3

    :goto_0
    add-int v1, v3, v2

    .line 1838
    .local v1, width:I
    sub-float v2, p4, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 1839
    float-to-int v2, p4

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 1840
    .local v0, left:I
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, p2, v3

    add-int v4, v0, v1

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, p3

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1842
    return-void

    .line 1836
    .end local v0           #left:I
    .end local v1           #width:I
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateShowAsAction(Landroid/content/res/Configuration;)V
    .locals 14
    .parameter "config"

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x0

    .line 4725
    iget-object v8, p0, Landroid/widget/Editor;->mActionModeMenu:Landroid/view/Menu;

    if-nez v8, :cond_1

    .line 4761
    :cond_0
    return-void

    .line 4727
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mActionModeMenu:Landroid/view/Menu;

    .line 4729
    .local v5, menu:Landroid/view/Menu;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Lcom/android/internal/R$styleable;->ActionMenuItemView:[I

    const v11, 0x10102d8

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4732
    .local v0, a:Landroid/content/res/TypedArray;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v7, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 4734
    .local v7, smallestScreenWidthDp:I
    const/16 v8, 0x258

    if-ge v7, v8, :cond_2

    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 4736
    :cond_2
    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 4737
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 4738
    invoke-interface {v5, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4737
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4743
    .end local v2           #i:I
    :cond_3
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v1, v8, Landroid/util/DisplayMetrics;->density:F

    .line 4744
    .local v1, density:F
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x105004f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v0, v12, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 4746
    .local v4, mMinCellSize:I
    const/16 v6, 0x10

    .line 4748
    .local v6, rightMarginOfClose:I
    add-int/lit8 v8, v7, -0x10

    int-to-float v8, v8

    mul-float/2addr v8, v1

    float-to-int v8, v8

    div-int/2addr v8, v4

    add-int/lit8 v3, v8, -0x1

    .line 4750
    .local v3, mMaxActionModeItems:I
    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 4751
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 4752
    invoke-interface {v5, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4751
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4755
    .end local v2           #i:I
    :cond_4
    if-lez v3, :cond_0

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v8

    if-lt v8, v3, :cond_0

    .line 4756
    add-int/lit8 v2, v3, -0x1

    .restart local v2       #i:I
    :goto_2
    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 4757
    invoke-interface {v5, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4756
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private updateSpellCheckSpans(IIZ)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "createSpellChecker"

    .prologue
    .line 596
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_1

    .line 598
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 599
    new-instance v0, Landroid/widget/SpellChecker;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 601
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    .line 605
    :cond_1
    return-void
.end method


# virtual methods
.method public addSpanWatchers(Landroid/text/Spannable;)V
    .locals 4
    .parameter "text"

    .prologue
    const/16 v3, 0x12

    const/4 v2, 0x0

    .line 2081
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 2083
    .local v0, textLength:I
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    .line 2084
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2087
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mEasyEditSpanController:Landroid/widget/Editor$EasyEditSpanController;

    if-nez v1, :cond_1

    .line 2088
    new-instance v1, Landroid/widget/Editor$EasyEditSpanController;

    invoke-direct {v1, p0}, Landroid/widget/Editor$EasyEditSpanController;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mEasyEditSpanController:Landroid/widget/Editor$EasyEditSpanController;

    .line 2090
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mEasyEditSpanController:Landroid/widget/Editor$EasyEditSpanController;

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2091
    return-void
.end method

.method adjustInputType(ZZZZ)V
    .locals 2
    .parameter "password"
    .parameter "passwordInputType"
    .parameter "webPasswordInputType"
    .parameter "numberPasswordInputType"

    .prologue
    .line 646
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 647
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 648
    :cond_0
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 651
    :cond_1
    if-eqz p3, :cond_2

    .line 652
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0xe0

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 662
    :cond_2
    :goto_0
    return-void

    .line 655
    :cond_3
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 657
    if-nez p1, :cond_4

    if-eqz p4, :cond_2

    .line 658
    :cond_4
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method areSuggestionsShown()Z
    .locals 1

    .prologue
    .line 1871
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beginBatchEdit()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1214
    iput-boolean v5, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 1215
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1216
    .local v0, ims:Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    .line 1217
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1218
    .local v1, nesting:I
    if-ne v1, v5, :cond_0

    .line 1219
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    .line 1220
    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 1221
    iget-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-eqz v2, :cond_1

    .line 1224
    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1225
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1231
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 1234
    .end local v1           #nesting:I
    :cond_0
    return-void

    .line 1227
    .restart local v1       #nesting:I
    :cond_1
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1228
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1229
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_0
.end method

.method createInputContentTypeIfNeeded()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_0

    .line 509
    new-instance v0, Landroid/widget/Editor$InputContentType;

    invoke-direct {v0}, Landroid/widget/Editor$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 511
    :cond_0
    return-void
.end method

.method createInputMethodStateIfNeeded()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-nez v0, :cond_0

    .line 515
    new-instance v0, Landroid/widget/Editor$InputMethodState;

    invoke-direct {v0}, Landroid/widget/Editor$InputMethodState;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 517
    :cond_0
    return-void
.end method

.method public disableOrientationListener()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Landroid/widget/Editor;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Landroid/widget/Editor;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 304
    :cond_0
    return-void
.end method

.method public endBatchEdit()V
    .locals 3

    .prologue
    .line 1237
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 1238
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1239
    .local v0, ims:Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    .line 1240
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, -0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1241
    .local v1, nesting:I
    if-nez v1, :cond_0

    .line 1242
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 1245
    .end local v1           #nesting:I
    :cond_0
    return-void
.end method

.method ensureEndedBatchEdit()V
    .locals 2

    .prologue
    .line 1248
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1249
    .local v0, ims:Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_0

    .line 1250
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1251
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 1253
    :cond_0
    return-void
.end method

.method extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 6
    .parameter "request"
    .parameter "outText"

    .prologue
    const/4 v2, -0x1

    .line 1271
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V
    .locals 1
    .parameter "ims"

    .prologue
    .line 1256
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1258
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    .line 1259
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 1260
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 1265
    :cond_1
    :goto_0
    return-void

    .line 1261
    :cond_2
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_1

    .line 1263
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_0
.end method

.method getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1799
    iget-boolean v2, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v2, :cond_0

    .line 1810
    :goto_0
    return-object v1

    .line 1803
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-nez v2, :cond_1

    .line 1804
    new-instance v2, Landroid/widget/Editor$InsertionPointCursorController;

    invoke-direct {v2, p0, v1}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 1806
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1807
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1810
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    goto :goto_0
.end method

.method getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;
    .locals 2

    .prologue
    .line 1814
    iget-boolean v1, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 1815
    const/4 v1, 0x0

    .line 1825
    :goto_0
    return-object v1

    .line 1818
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-nez v1, :cond_1

    .line 1819
    new-instance v1, Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-direct {v1, p0}, Landroid/widget/Editor$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 1821
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1822
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1825
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    goto :goto_0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_0

    .line 820
    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 822
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method hasInsertionController()Z
    .locals 1

    .prologue
    .line 1788
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    return v0
.end method

.method hasSelectionController()Z
    .locals 1

    .prologue
    .line 1795
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    return v0
.end method

.method hideControllers()V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 574
    invoke-direct {p0}, Landroid/widget/Editor;->hideSpanControllers()V

    .line 575
    return-void
.end method

.method invalidateTextDisplayList()V
    .locals 2

    .prologue
    .line 1617
    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    if-eqz v1, :cond_1

    .line 1618
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1619
    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/DisplayList;->invalidate()V

    .line 1618
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1622
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method invalidateTextDisplayList(Landroid/text/Layout;II)V
    .locals 9
    .parameter "layout"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1588
    iget-object v8, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    if-eqz v8, :cond_2

    instance-of v8, p1, Landroid/text/DynamicLayout;

    if-eqz v8, :cond_2

    .line 1589
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 1590
    .local v4, firstLine:I
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .local v6, lastLine:I
    move-object v3, p1

    .line 1592
    check-cast v3, Landroid/text/DynamicLayout;

    .line 1593
    .local v3, dynamicLayout:Landroid/text/DynamicLayout;
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v0

    .line 1594
    .local v0, blockEndLines:[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v2

    .line 1595
    .local v2, blockIndices:[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v7

    .line 1597
    .local v7, numberOfBlocks:I
    const/4 v5, 0x0

    .line 1599
    .local v5, i:I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 1600
    aget v8, v0, v5

    if-lt v8, v4, :cond_3

    .line 1605
    :cond_0
    :goto_1
    if-ge v5, v7, :cond_2

    .line 1606
    aget v1, v2, v5

    .line 1607
    .local v1, blockIndex:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    .line 1608
    iget-object v8, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/view/DisplayList;->invalidate()V

    .line 1610
    :cond_1
    aget v8, v0, v5

    if-lt v8, v6, :cond_4

    .line 1614
    .end local v0           #blockEndLines:[I
    .end local v1           #blockIndex:I
    .end local v2           #blockIndices:[I
    .end local v3           #dynamicLayout:Landroid/text/DynamicLayout;
    .end local v4           #firstLine:I
    .end local v5           #i:I
    .end local v6           #lastLine:I
    .end local v7           #numberOfBlocks:I
    :cond_2
    return-void

    .line 1601
    .restart local v0       #blockEndLines:[I
    .restart local v2       #blockIndices:[I
    .restart local v3       #dynamicLayout:Landroid/text/DynamicLayout;
    .restart local v4       #firstLine:I
    .restart local v5       #i:I
    .restart local v6       #lastLine:I
    .restart local v7       #numberOfBlocks:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1611
    .restart local v1       #blockIndex:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 1612
    goto :goto_1
.end method

.method isCursorVisible()Z
    .locals 1

    .prologue
    .line 521
    iget-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeBlink()V
    .locals 6

    .prologue
    .line 1896
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1897
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 1898
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$Blink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 1899
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1900
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-wide v2, p0, Landroid/widget/Editor;->mShowCursor:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Editor$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1904
    :cond_1
    :goto_0
    return-void

    .line 1902
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 308
    iget-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    if-eqz v1, :cond_0

    .line 309
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 310
    iput-boolean v3, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 312
    :cond_0
    iput-boolean v3, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    .line 314
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 317
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v1, :cond_1

    .line 318
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 320
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_2

    .line 321
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 322
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 324
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v3, v1, v2}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 327
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasTransientState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 332
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 335
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 339
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/Editor;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_4

    .line 340
    iget-object v1, p0, Landroid/widget/Editor;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    .line 343
    :cond_4
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 1853
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-nez v0, :cond_0

    .line 1854
    new-instance v0, Landroid/widget/Editor$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$CorrectionHighlighter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    .line 1859
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 1860
    return-void

    .line 1856
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    const/4 v1, 0x0

    #calls: Landroid/widget/Editor$CorrectionHighlighter;->invalidate(Z)V
    invoke-static {v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->access$700(Landroid/widget/Editor$CorrectionHighlighter;Z)V

    goto :goto_0
.end method

.method onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 347
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 351
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 356
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 360
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_3

    .line 361
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 364
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_4

    .line 365
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 368
    :cond_4
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 369
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 372
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 374
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_6

    .line 375
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 381
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 382
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 383
    iput-boolean v2, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 384
    iput-boolean v2, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    .line 387
    iget-object v0, p0, Landroid/widget/Editor;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_7

    .line 388
    iget-object v0, p0, Landroid/widget/Editor;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 391
    :cond_7
    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 22
    .parameter "canvas"
    .parameter "layout"
    .parameter "highlight"
    .parameter "highlightPaint"
    .parameter "cursorOffsetVertical"

    .prologue
    .line 1387
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 1388
    .local v7, selectionStart:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 1390
    .local v8, selectionEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    move-object/from16 v17, v0

    .line 1391
    .local v17, ims:Landroid/widget/Editor$InputMethodState;
    if-eqz v17, :cond_4

    move-object/from16 v0, v17

    iget v6, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v6, :cond_4

    .line 1392
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 1393
    .local v5, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_4

    .line 1394
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1395
    const/16 v18, 0x0

    .line 1396
    .local v18, reported:Z
    move-object/from16 v0, v17

    iget-boolean v6, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v6, :cond_0

    move-object/from16 v0, v17

    iget-boolean v6, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v6, :cond_1

    .line 1400
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->reportExtractedText()Z

    move-result v18

    .line 1402
    :cond_1
    if-nez v18, :cond_3

    if-eqz p3, :cond_3

    .line 1403
    const/4 v9, -0x1

    .line 1404
    .local v9, candStart:I
    const/4 v10, -0x1

    .line 1405
    .local v10, candEnd:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    instance-of v6, v6, Landroid/text/Spannable;

    if-eqz v6, :cond_2

    .line 1406
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    check-cast v19, Landroid/text/Spannable;

    .line 1407
    .local v19, sp:Landroid/text/Spannable;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v9

    .line 1408
    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v10

    .line 1410
    .end local v19           #sp:Landroid/text/Spannable;
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 1415
    .end local v9           #candStart:I
    .end local v10           #candEnd:I
    .end local v18           #reported:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz p3, :cond_4

    .line 1416
    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1417
    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mTmpOffset:[F

    const/4 v11, 0x0

    move-object/from16 v0, v17

    iget-object v12, v0, Landroid/widget/Editor$InputMethodState;->mTmpOffset:[F

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput v14, v12, v13

    aput v14, v6, v11

    .line 1419
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/widget/Editor$InputMethodState;->mTmpOffset:[F

    invoke-virtual {v6, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1420
    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/widget/Editor$InputMethodState;->mTmpOffset:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object/from16 v0, v17

    iget-object v12, v0, Landroid/widget/Editor$InputMethodState;->mTmpOffset:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {v6, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 1422
    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v11, 0x0

    move/from16 v0, p5

    int-to-float v12, v0

    invoke-virtual {v6, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 1424
    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    float-to-double v11, v11

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v11, v11

    move-object/from16 v0, v17

    iget-object v12, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    float-to-double v12, v12

    const-wide/high16 v14, 0x3fe0

    add-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, v17

    iget-object v13, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    float-to-double v13, v13

    const-wide/high16 v15, 0x3fe0

    add-double/2addr v13, v15

    double-to-int v13, v13

    move-object/from16 v0, v17

    iget-object v14, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    float-to-double v14, v14

    const-wide/high16 v20, 0x3fe0

    add-double v14, v14, v20

    double-to-int v14, v14

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 1429
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v13, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v14, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v15, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object v11, v5

    invoke-virtual/range {v11 .. v16}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .line 1436
    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-eqz v6, :cond_5

    .line 1437
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v6, v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    .line 1440
    :cond_5
    if-eqz p3, :cond_7

    if-ne v7, v8, :cond_7

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/Editor;->mCursorCount:I

    if-lez v6, :cond_7

    .line 1442
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_6

    .line 1443
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 1447
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor;->drawCursor(Landroid/graphics/Canvas;I)V

    .line 1450
    const/16 p3, 0x0

    .line 1453
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->canHaveDisplayList()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1454
    invoke-direct/range {p0 .. p5}, Landroid/widget/Editor;->drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 1459
    :goto_0
    return-void

    .line 1457
    :cond_8
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method onDrop(Landroid/view/DragEvent;)V
    .locals 26
    .parameter "event"

    .prologue
    .line 1977
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1978
    .local v4, content:Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 1980
    .local v3, clipData:Landroid/content/ClipData;
    if-nez v3, :cond_1

    .line 2078
    :cond_0
    :goto_0
    return-void

    .line 1984
    :cond_1
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v12

    .line 1985
    .local v12, itemCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v12, :cond_2

    .line 1986
    invoke-virtual {v3, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v11

    .line 1987
    .local v11, item:Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1985
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1990
    .end local v11           #item:Landroid/content/ClipData$Item;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v25

    invoke-virtual/range {v23 .. v25}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v18

    .line 1991
    .local v18, offset:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v13

    .line 1992
    .local v13, localState:Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1993
    .local v6, dragLocalState:Landroid/widget/Editor$DragLocalState;
    instance-of v0, v13, Landroid/widget/Editor$DragLocalState;

    move/from16 v23, v0

    if-eqz v23, :cond_3

    move-object v6, v13

    .line 1994
    check-cast v6, Landroid/widget/Editor$DragLocalState;

    .line 1996
    :cond_3
    if-eqz v6, :cond_7

    iget-object v0, v6, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_7

    const/4 v5, 0x1

    .line 1999
    .local v5, dragDropIntoItself:Z
    :goto_2
    if-eqz v5, :cond_4

    .line 2001
    iget v0, v6, Landroid/widget/Editor$DragLocalState;->start:I

    move/from16 v23, v0

    move/from16 v0, v18

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    iget v0, v6, Landroid/widget/Editor$DragLocalState;->end:I

    move/from16 v23, v0

    move/from16 v0, v18

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    .line 2007
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result v19

    .line 2008
    .local v19, originalLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v16

    .line 2009
    .local v16, minMax:J
    invoke-static/range {v16 .. v17}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v15

    .line 2010
    .local v15, min:I
    invoke-static/range {v16 .. v17}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v14

    .line 2012
    .local v14, max:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    check-cast v23, Landroid/text/Spannable;

    move-object/from16 v0, v23

    invoke-static {v0, v14}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2013
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15, v14, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 2015
    if-eqz v5, :cond_0

    .line 2016
    iget v8, v6, Landroid/widget/Editor$DragLocalState;->start:I

    .line 2017
    .local v8, dragSourceStart:I
    iget v7, v6, Landroid/widget/Editor$DragLocalState;->end:I

    .line 2018
    .local v7, dragSourceEnd:I
    if-gt v14, v8, :cond_5

    .line 2020
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result v23

    sub-int v21, v23, v19

    .line 2021
    .local v21, shift:I
    add-int v8, v8, v21

    .line 2022
    add-int v7, v7, v21

    .line 2048
    .end local v21           #shift:I
    :cond_5
    if-lez v8, :cond_9

    .line 2049
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    add-int/lit8 v24, v8, -0x1

    add-int/lit8 v25, v8, 0x1

    invoke-virtual/range {v23 .. v25}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v22

    .line 2053
    .local v22, t:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 2056
    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result v23

    move/from16 v0, v23

    if-eq v8, v0, :cond_6

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 2059
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result v23

    move/from16 v0, v23

    if-ne v8, v0, :cond_8

    add-int/lit8 v20, v8, -0x1

    .line 2062
    .local v20, pos:I
    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    add-int/lit8 v24, v20, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2063
    :catch_0
    move-exception v9

    .line 2064
    .local v9, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v9}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_0

    .line 1996
    .end local v5           #dragDropIntoItself:Z
    .end local v7           #dragSourceEnd:I
    .end local v8           #dragSourceStart:I
    .end local v9           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v14           #max:I
    .end local v15           #min:I
    .end local v16           #minMax:J
    .end local v19           #originalLength:I
    .end local v20           #pos:I
    .end local v22           #t:Ljava/lang/CharSequence;
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_2

    .restart local v5       #dragDropIntoItself:Z
    .restart local v7       #dragSourceEnd:I
    .restart local v8       #dragSourceStart:I
    .restart local v14       #max:I
    .restart local v15       #min:I
    .restart local v16       #minMax:J
    .restart local v19       #originalLength:I
    .restart local v22       #t:Ljava/lang/CharSequence;
    :cond_8
    move/from16 v20, v8

    .line 2059
    goto :goto_3

    .line 2073
    .end local v22           #t:Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->deleteText_internal(II)V

    goto/16 :goto_0
.end method

.method onFocusChanged(ZI)V
    .locals 10
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1002
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 1003
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    .line 1005
    if-eqz p1, :cond_b

    .line 1006
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1007
    .local v4, selStart:I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1011
    .local v3, selEnd:I
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_9

    if-nez v4, :cond_9

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v3, v5, :cond_9

    move v0, v6

    .line 1014
    .local v0, isFocusHighlighted:Z
    :goto_0
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_a

    if-nez v0, :cond_a

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 1017
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_0

    if-ltz v4, :cond_0

    if-gez v3, :cond_6

    .line 1020
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTapPosition()I

    move-result v1

    .line 1021
    .local v1, lastTapPosition:I
    if-ltz v1, :cond_1

    .line 1022
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1026
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v2

    .line 1027
    .local v2, mMovement:Landroid/text/method/MovementMethod;
    if-eqz v2, :cond_2

    .line 1028
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v2, v8, v5, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 1036
    :cond_2
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v5, v5, Landroid/inputmethodservice/ExtractEditText;

    if-nez v5, :cond_3

    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    if-eqz v5, :cond_4

    :cond_3
    if-ltz v4, :cond_4

    if-ltz v3, :cond_4

    .line 1047
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1050
    :cond_4
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_5

    .line 1051
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->selectAllText()Z

    .line 1054
    :cond_5
    iput-boolean v6, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1057
    .end local v1           #lastTapPosition:I
    .end local v2           #mMovement:Landroid/text/method/MovementMethod;
    :cond_6
    iput-boolean v7, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    .line 1058
    iput-boolean v7, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 1060
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v5, :cond_7

    .line 1061
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 1064
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1067
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/widget/Editor;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v5, :cond_8

    .line 1068
    iget-object v5, p0, Landroid/widget/Editor;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v5}, Landroid/view/OrientationEventListener;->enable()V

    .line 1103
    .end local v0           #isFocusHighlighted:Z
    .end local v3           #selEnd:I
    .end local v4           #selStart:I
    :cond_8
    :goto_2
    return-void

    .restart local v3       #selEnd:I
    .restart local v4       #selStart:I
    :cond_9
    move v0, v7

    .line 1011
    goto/16 :goto_0

    .restart local v0       #isFocusHighlighted:Z
    :cond_a
    move v5, v7

    .line 1014
    goto :goto_1

    .line 1072
    .end local v0           #isFocusHighlighted:Z
    .end local v3           #selEnd:I
    .end local v4           #selStart:I
    :cond_b
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v5, :cond_c

    .line 1073
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 1076
    :cond_c
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1078
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v5, v5, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v5, :cond_e

    .line 1081
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1082
    .restart local v4       #selStart:I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1083
    .restart local v3       #selEnd:I
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 1084
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1093
    .end local v3           #selEnd:I
    .end local v4           #selStart:I
    :goto_3
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v5, :cond_d

    .line 1094
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1098
    :cond_d
    iget-object v5, p0, Landroid/widget/Editor;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v5, :cond_8

    .line 1099
    iget-object v5, p0, Landroid/widget/Editor;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v5}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_2

    .line 1086
    :cond_e
    iget-boolean v5, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    if-eqz v5, :cond_f

    iput-boolean v6, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 1087
    :cond_f
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 1088
    iget-boolean v5, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    if-eqz v5, :cond_10

    iput-boolean v7, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 1089
    :cond_10
    invoke-direct {p0}, Landroid/widget/Editor;->downgradeEasyCorrectionSpans()V

    goto :goto_3
.end method

.method onLocaleChanged()V
    .locals 1

    .prologue
    .line 812
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 813
    return-void
.end method

.method onScreenStateChanged(I)V
    .locals 1
    .parameter "screenState"

    .prologue
    .line 608
    packed-switch p1, :pswitch_data_0

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 610
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    .line 612
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Landroid/widget/Editor;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    .line 618
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    .line 620
    iget-object v0, p0, Landroid/widget/Editor;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Landroid/widget/Editor;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0

    .line 608
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onScrollChanged()V
    .locals 1

    .prologue
    .line 1875
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-eqz v0, :cond_0

    .line 1876
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onScrollChanged()V

    .line 1878
    :cond_0
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 1193
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1197
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1198
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1199
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 1202
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 1203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 1204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    .line 1208
    iput-boolean v2, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1209
    iput-boolean v2, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    .line 1211
    :cond_2
    return-void
.end method

.method onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 1749
    iget-boolean v3, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 1750
    .local v1, selectAllGotFocus:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 1751
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1752
    .local v2, text:Ljava/lang/CharSequence;
    if-nez v1, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1754
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 1755
    .local v0, offset:I
    check-cast v2, Landroid/text/Spannable;

    .end local v2           #text:Ljava/lang/CharSequence;
    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1756
    iget-object v3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v3, :cond_0

    .line 1758
    iget-object v3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v3}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 1760
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1761
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1762
    new-instance v3, Landroid/widget/Editor$2;

    invoke-direct {v3, p0}, Landroid/widget/Editor$2;-><init>(Landroid/widget/Editor;)V

    iput-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 1768
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1775
    .end local v0           #offset:I
    :cond_1
    :goto_1
    return-void

    .line 1749
    .end local v1           #selectAllGotFocus:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1770
    .restart local v0       #offset:I
    .restart local v1       #selectAllGotFocus:Z
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1771
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    goto :goto_1
.end method

.method onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 1152
    if-eqz p1, :cond_2

    .line 1153
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 1155
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1159
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 1160
    iget-object v0, p0, Landroid/widget/Editor;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 1190
    :cond_1
    :goto_0
    return-void

    .line 1164
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_3

    .line 1165
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 1167
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_4

    .line 1168
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 1172
    :cond_4
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_5

    .line 1176
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 1177
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_6

    .line 1178
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    .line 1182
    :cond_6
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1185
    iget-object v0, p0, Landroid/widget/Editor;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 1186
    iget-object v0, p0, Landroid/widget/Editor;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method public performLongClick(Z)Z
    .locals 9
    .parameter "handled"

    .prologue
    .line 955
    if-nez p1, :cond_0

    iget v6, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v7, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-direct {p0, v6, v7}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-eqz v6, :cond_0

    .line 957
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v7, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v8, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v3

    .line 959
    .local v3, offset:I
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 960
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 961
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Editor$InsertionPointCursorController;->showWithActionPopup()V

    .line 962
    const/4 p1, 0x1

    .line 968
    .end local v3           #offset:I
    :cond_0
    if-nez p1, :cond_1

    iget-object v6, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_1

    .line 969
    invoke-direct {p0}, Landroid/widget/Editor;->touchPositionIsInSelection()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 971
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 972
    .local v5, start:I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 973
    .local v1, end:I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 974
    .local v4, selectedText:Ljava/lang/CharSequence;
    const/4 v6, 0x0

    invoke-static {v6, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 975
    .local v0, data:Landroid/content/ClipData;
    new-instance v2, Landroid/widget/Editor$DragLocalState;

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v2, v6, v5, v1}, Landroid/widget/Editor$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    .line 976
    .local v2, localState:Landroid/widget/Editor$DragLocalState;
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroid/widget/Editor;->getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v7, v2, v8}, Landroid/widget/TextView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 977
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 983
    .end local v0           #data:Landroid/content/ClipData;
    .end local v1           #end:I
    .end local v2           #localState:Landroid/widget/Editor$DragLocalState;
    .end local v4           #selectedText:Ljava/lang/CharSequence;
    .end local v5           #start:I
    :goto_0
    const/4 p1, 0x1

    .line 987
    :cond_1
    if-nez p1, :cond_2

    .line 988
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result p1

    .line 991
    :cond_2
    return p1

    .line 979
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 980
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    .line 981
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    goto :goto_0
.end method

.method prepareCursorControllers()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 525
    const/4 v3, 0x0

    .line 527
    .local v3, windowSupportsHandles:Z
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 528
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v6, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_1

    move-object v2, v1

    .line 529
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 530
    .local v2, windowParams:Landroid/view/WindowManager$LayoutParams;
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_0

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-le v6, v7, :cond_5

    :cond_0
    move v3, v5

    .line 535
    .end local v2           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    instance-of v6, v1, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 537
    const-string v6, "Editor"

    const-string v7, "setup window support handles"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v3, 0x1

    .line 542
    :cond_2
    if-eqz v3, :cond_6

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    if-eqz v6, :cond_6

    move v0, v5

    .line 543
    .local v0, enabled:Z
    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v5

    :goto_2
    iput-boolean v6, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    .line 544
    if-eqz v0, :cond_8

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v6

    if-eqz v6, :cond_8

    :goto_3
    iput-boolean v5, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    .line 546
    iget-boolean v4, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v4, :cond_3

    .line 547
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 548
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v4, :cond_3

    .line 549
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 550
    iput-object v8, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 554
    :cond_3
    iget-boolean v4, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v4, :cond_4

    .line 555
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 556
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v4, :cond_4

    .line 557
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v4}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 558
    iput-object v8, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 561
    :cond_4
    return-void

    .end local v0           #enabled:Z
    .restart local v2       #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_5
    move v3, v4

    .line 530
    goto :goto_0

    .end local v2           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_6
    move v0, v4

    .line 542
    goto :goto_1

    .restart local v0       #enabled:Z
    :cond_7
    move v6, v4

    .line 543
    goto :goto_2

    :cond_8
    move v5, v4

    .line 544
    goto :goto_3
.end method

.method reportExtractedText()Z
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 1346
    iget-object v8, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1347
    .local v8, ims:Landroid/widget/Editor$InputMethodState;
    if-eqz v8, :cond_2

    .line 1348
    iget-boolean v6, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1349
    .local v6, contentChanged:Z
    if-nez v6, :cond_0

    iget-boolean v0, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    .line 1350
    :cond_0
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1351
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 1352
    iget-object v1, v8, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 1353
    .local v1, req:Landroid/view/inputmethod/ExtractedTextRequest;
    if-eqz v1, :cond_2

    .line 1354
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 1355
    .local v7, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_2

    .line 1360
    iget v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v0, :cond_1

    if-nez v6, :cond_1

    .line 1361
    const/4 v0, -0x2

    iput v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1363
    :cond_1
    iget v2, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v3, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iget v4, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iget-object v5, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1371
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v2, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v3, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v7, v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 1372
    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1373
    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1374
    iput v9, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 1375
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1376
    const/4 v0, 0x1

    .line 1382
    .end local v1           #req:Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v6           #contentChanged:Z
    .end local v7           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v0

    :cond_2
    move v0, v9

    goto :goto_0
.end method

.method sendOnTextChanged(II)V
    .locals 2
    .parameter "start"
    .parameter "after"

    .prologue
    .line 1127
    add-int v0, p1, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 1132
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 1133
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "error"
    .parameter "icon"

    .prologue
    const/4 v5, 0x0

    .line 421
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 422
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Editor;->mErrorWasChanged:Z

    .line 423
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 424
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_2

    .line 425
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResolvedLayoutDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 428
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3, p2, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 440
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    .line 441
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v1, :cond_1

    .line 442
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 446
    :cond_0
    iput-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 453
    :cond_1
    :goto_1
    return-void

    .line 432
    :pswitch_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 437
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v5, p2, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 449
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    goto :goto_1

    .line 425
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method setFrame()V
    .locals 7

    .prologue
    .line 686
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 688
    .local v6, tv:Landroid/widget/TextView;
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v6}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 689
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/Editor$ErrorPopup;->getHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Editor$ErrorPopup;->update(Landroid/view/View;IIII)V

    .line 692
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setStartHandle()V
    .locals 5

    .prologue
    .line 4674
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4675
    .local v0, layout:Landroid/text/Layout;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4676
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 4677
    .local v2, selectionStart:I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 4679
    .local v1, line:I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v3

    if-nez v3, :cond_0

    sget v3, Landroid/widget/Editor;->TOP_LINE:I

    if-ne v1, v3, :cond_2

    .line 4680
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Editor$SelectionModifierCursorController;->setStartHandleToTop(Z)V

    .line 4685
    .end local v1           #line:I
    .end local v2           #selectionStart:I
    :cond_1
    :goto_0
    return-void

    .line 4682
    .restart local v1       #line:I
    .restart local v2       #selectionStart:I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Editor$SelectionModifierCursorController;->setStartHandleToTop(Z)V

    goto :goto_0
.end method

.method showSuggestions()V
    .locals 1

    .prologue
    .line 1863
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-nez v0, :cond_0

    .line 1864
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SuggestionsPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 1866
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 1867
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->show()V

    .line 1868
    return-void
.end method

.method startSelectionActionMode()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1666
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_1

    move v2, v4

    .line 1709
    :cond_0
    :goto_0
    return v2

    .line 1671
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->requestFocus()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1672
    :cond_2
    const-string v5, "TextView"

    const-string v6, "TextView does not support text selection. Action mode cancelled."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1674
    goto :goto_0

    .line 1677
    :cond_3
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1679
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v5

    if-nez v5, :cond_4

    move v2, v4

    .line 1681
    goto :goto_0

    .line 1685
    :cond_4
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v3

    .line 1687
    .local v3, willExtract:Z
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v5, v5, Landroid/inputmethodservice/ExtractEditText;

    if-nez v5, :cond_5

    .line 1688
    const/4 v3, 0x0

    .line 1694
    :cond_5
    if-nez v3, :cond_6

    .line 1695
    new-instance v0, Landroid/widget/Editor$SelectionActionModeCallback;

    invoke-direct {v0, p0, v6}, Landroid/widget/Editor$SelectionActionModeCallback;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    .line 1696
    .local v0, actionModeCallback:Landroid/view/ActionMode$Callback;
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    .line 1699
    .end local v0           #actionModeCallback:Landroid/view/ActionMode$Callback;
    :cond_6
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v5, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    const/4 v2, 0x1

    .line 1701
    .local v2, selectionStarted:Z
    :goto_1
    if-eqz v2, :cond_0

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHideSoftInput()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1703
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1704
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 1705
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    goto :goto_0

    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #selectionStarted:Z
    :cond_8
    move v2, v4

    .line 1699
    goto :goto_1
.end method

.method protected stopSelectionActionMode()V
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1780
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1782
    :cond_0
    return-void
.end method

.method public swapSelectionControllers()V
    .locals 6

    .prologue
    .line 4653
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 4654
    .local v3, selectionStart:I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 4656
    .local v2, selectionEnd:I
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4657
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$SelectionModifierCursorController;->unvisibleAllHandle()V

    .line 4658
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4659
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4660
    .local v0, layout:Landroid/text/Layout;
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 4662
    .local v1, line:I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v4

    if-nez v4, :cond_0

    sget v4, Landroid/widget/Editor;->TOP_LINE:I

    if-ne v1, v4, :cond_2

    .line 4663
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Editor$SelectionModifierCursorController;->setStartHandleToTop(Z)V

    .line 4668
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$SelectionModifierCursorController;->visibleAllHandle()V

    .line 4670
    .end local v0           #layout:Landroid/text/Layout;
    .end local v1           #line:I
    :cond_1
    return-void

    .line 4665
    .restart local v0       #layout:Landroid/text/Layout;
    .restart local v1       #line:I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Editor$SelectionModifierCursorController;->setStartHandleToTop(Z)V

    goto :goto_0
.end method

.method public switchStartHandle()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4688
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 4689
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 4690
    .local v2, selectionStart:I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4691
    .local v0, layout:Landroid/text/Layout;
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 4694
    .local v1, line:I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v5

    if-nez v5, :cond_0

    sget v5, Landroid/widget/Editor;->TOP_LINE:I

    if-ne v1, v5, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->getStartHandleToTop()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v5

    if-nez v5, :cond_3

    sget v5, Landroid/widget/Editor;->TOP_LINE:I

    if-eq v1, v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->getStartHandleToTop()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4717
    .end local v0           #layout:Landroid/text/Layout;
    .end local v1           #line:I
    .end local v2           #selectionStart:I
    :cond_2
    :goto_0
    return v3

    .line 4698
    .restart local v0       #layout:Landroid/text/Layout;
    .restart local v1       #line:I
    .restart local v2       #selectionStart:I
    :cond_3
    sget v5, Landroid/widget/Editor;->TOP_LINE:I

    if-ne v1, v5, :cond_5

    .line 4699
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->getStartHandleToTop()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4700
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/Editor$SelectionModifierCursorController;->setStartHandleToTop(Z)V

    .line 4701
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    #calls: Landroid/widget/Editor$SelectionModifierCursorController;->switchStartHandle()V
    invoke-static {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->access$3600(Landroid/widget/Editor$SelectionModifierCursorController;)V

    .end local v0           #layout:Landroid/text/Layout;
    .end local v1           #line:I
    .end local v2           #selectionStart:I
    :cond_4
    :goto_1
    move v3, v4

    .line 4717
    goto :goto_0

    .line 4707
    .restart local v0       #layout:Landroid/text/Layout;
    .restart local v1       #line:I
    .restart local v2       #selectionStart:I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->getStartHandleToTop()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4711
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/Editor$SelectionModifierCursorController;->setStartHandleToTop(Z)V

    .line 4712
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    #calls: Landroid/widget/Editor$SelectionModifierCursorController;->switchStartHandle()V
    invoke-static {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->access$3600(Landroid/widget/Editor$SelectionModifierCursorController;)V

    goto :goto_1
.end method

.method updateCursorsPositions()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x2

    .line 1625
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v7, v7, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v7, :cond_1

    .line 1626
    iput v10, p0, Landroid/widget/Editor;->mCursorCount:I

    .line 1650
    :cond_0
    :goto_0
    return-void

    .line 1630
    :cond_1
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 1631
    .local v2, layout:Landroid/text/Layout;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v1

    .line 1632
    .local v1, hintLayout:Landroid/text/Layout;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 1633
    .local v5, offset:I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1634
    .local v3, line:I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1635
    .local v6, top:I
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 1637
    .local v0, bottom:I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    :goto_1
    iput v7, p0, Landroid/widget/Editor;->mCursorCount:I

    .line 1639
    move v4, v0

    .line 1640
    .local v4, middle:I
    iget v7, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ne v7, v8, :cond_2

    .line 1642
    add-int v7, v6, v0

    shr-int/lit8 v4, v7, 0x1

    .line 1645
    :cond_2
    invoke-direct {p0, v2, v1, v5}, Landroid/widget/Editor;->getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;I)F

    move-result v7

    invoke-direct {p0, v10, v6, v4, v7}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    .line 1647
    iget v7, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ne v7, v8, :cond_0

    .line 1648
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v7

    invoke-direct {p0, v9, v4, v0, v7}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    goto :goto_0

    .end local v4           #middle:I
    :cond_3
    move v7, v9

    .line 1637
    goto :goto_1
.end method
