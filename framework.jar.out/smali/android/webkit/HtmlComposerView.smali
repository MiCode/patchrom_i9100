.class public Landroid/webkit/HtmlComposerView;
.super Landroid/webkit/WebView;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HtmlComposerView$TBHandler;,
        Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;,
        Landroid/webkit/HtmlComposerView$ActionPopupWindow;,
        Landroid/webkit/HtmlComposerView$MenuHandler;,
        Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;,
        Landroid/webkit/HtmlComposerView$InsertionPosition;
    }
.end annotation


# static fields
.field public static final ID_COPY:I = 0x1020021

.field public static final ID_COPY_ALL:I = 0x1020409

.field public static final ID_CUT:I = 0x1020020

.field public static final ID_CUT_ALL:I = 0x1020408

.field public static final ID_PASTE:I = 0x1020022

.field public static final ID_PASTE_CLIPBOARD:I = 0x102040a

.field public static final ID_REDO:I = 0x102002f

.field public static final ID_SELECT_ALL:I = 0x102001f

.field public static final ID_START_SELECTION:I = 0x1020028

.field public static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field public static final ID_UNDO:I = 0x102002e

.field public static final INVOKE_TALKBACK:I = 0x500

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerView"

.field public static final RICHLY_EDITING_STATE_BOLD:I = 0x1

.field public static final RICHLY_EDITING_STATE_BOLD_MIXED:I = 0x2

.field public static final RICHLY_EDITING_STATE_ITALIC:I = 0x4

.field public static final RICHLY_EDITING_STATE_ITALIC_MIXED:I = 0x8

.field public static final RICHLY_EDITING_STATE_NONE:I = 0x0

.field public static final RICHLY_EDITING_STATE_ORDEREDLIST:I = 0x40

.field public static final RICHLY_EDITING_STATE_ORDEREDLIST_MIXED:I = 0x80

.field public static final RICHLY_EDITING_STATE_UNDERLINE:I = 0x10

.field public static final RICHLY_EDITING_STATE_UNDERLINE_MIXED:I = 0x20

.field public static final RICHLY_EDITING_STATE_UNORDEREDLIST:I = 0x100

.field public static final RICHLY_EDITING_STATE_UNORDEREDLIST_MIXED:I = 0x200

.field public static operSel:I


# instance fields
.field public final EMPTY_STRING:Ljava/lang/String;

.field private bLastSoftKeyPadStateShowing:Z

.field bitmap:Landroid/graphics/Bitmap;

.field public clpBrdStrg:Ljava/lang/String;

.field private defaultLoadString:Ljava/lang/String;

.field private extraHeightRegionToCover:I

.field extraRegiontoCover:I

.field private firstOutlineLeft:F

.field private firstOutlineTop:F

.field handlesPath:Landroid/graphics/Path;

.field private ignoreMaxLength:Z

.field imagetRect:Landroid/graphics/RectF;

.field imeOptions:I

.field imgHeight:F

.field imgWidth:F

.field private isInComposingState:Z

.field private isViewInFocus:Z

.field private lb_height:I

.field private lb_width:I

.field leftBottomCropHandler:Landroid/graphics/Rect;

.field private leftBottomHandleEnabled:Z

.field leftTopCropHandler:Landroid/graphics/Rect;

.field private leftTopHandleEnabled:Z

.field private lt_height:I

.field private lt_width:I

.field mAccumlationLength:I

.field private mAltKeyIsPressed:Z

.field mCurHtmlLength:I

.field private mDensity:F

.field private mEmojiIsActive:Z

.field private mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

.field private mInput:Landroid/text/method/TextKeyListener;

.field private mIsSCHMenu:Z

.field private mIsTouchedCursor:Z

.field private mKeyIsLongPressed:Z

.field private mLastTouchMode:I

.field public mMaxHtmlLength:I

.field private mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

.field private mPrivateOptions:Ljava/lang/String;

.field public mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

.field private mSCHMoveFlag:Z

.field mScreenHeight:I

.field mScreenWidth:I

.field private mShiftKeyIsPressed:Z

.field private mSymKeyIsPressed:Z

.field mTargetView:Landroid/webkit/HtmlComposerView;

.field private mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mViewWidth:I

.field private misResizeControlsInitialised:Z

.field public myHandler:Landroid/webkit/HtmlComposerView$TBHandler;

.field private originalHeight:I

.field private originalWidth:I

.field outLinePath:Landroid/graphics/Path;

.field p:Landroid/graphics/Path;

.field private prevOutlineHeight:F

.field private prevOutlineLeft:F

.field private prevOutlineTop:F

.field private prevOutlineWidth:F

.field private prevSpanComposerText:Ljava/lang/String;

.field prevX:I

.field prevY:I

.field private prevlen:I

.field rb_height:I

.field rb_width:I

.field region_rect_LB:Landroid/graphics/Region;

.field region_rect_LT:Landroid/graphics/Region;

.field region_rect_OutLine:Landroid/graphics/Region;

.field region_rect_RB:Landroid/graphics/Region;

.field region_rect_RT:Landroid/graphics/Region;

.field rightBottomCropHandler:Landroid/graphics/Rect;

.field rightBottomHandleEnabled:Z

.field rightTopCropHandler:Landroid/graphics/Rect;

.field private rightTopHandleEnabled:Z

.field private rt_height:I

.field private rt_width:I

.field private spanComposerText:Landroid/text/SpannableStringBuilder;

.field public textSelected:Ljava/lang/String;

.field public texttoSpeech:Ljava/lang/String;

.field widthOfHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    sput v0, Landroid/webkit/HtmlComposerView;->operSel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 225
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 75
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 76
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 77
    const v0, 0x20000ff

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 78
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 80
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 81
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 82
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 83
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 85
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 86
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 87
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 88
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 89
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    .line 90
    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 91
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 92
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 94
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 95
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->texttoSpeech:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mLastTouchMode:I

    .line 102
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 103
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 105
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 109
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 110
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 135
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 137
    iput v3, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 138
    iput v3, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 141
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 146
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 150
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 156
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 158
    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 159
    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 161
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    .line 163
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 164
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 165
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 166
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 167
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 171
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 172
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 173
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 174
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 176
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 304
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 305
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 306
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 226
    iput-object p0, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 227
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 231
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 76
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 77
    const v0, 0x20000ff

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 78
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 80
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 81
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 82
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 83
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 85
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 86
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 87
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 88
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 89
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    .line 90
    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 91
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 92
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 94
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 95
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->texttoSpeech:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mLastTouchMode:I

    .line 102
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 103
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 105
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 109
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 110
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 135
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 137
    iput v3, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 138
    iput v3, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 141
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 146
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 150
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 156
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 158
    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 159
    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 161
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    .line 163
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 164
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 165
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 166
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 167
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 171
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 172
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 173
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 174
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 176
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 304
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 305
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 306
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 232
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 236
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 76
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 77
    const v0, 0x20000ff

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 78
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 80
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 81
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 82
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 83
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 85
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 86
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 87
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 88
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 89
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    .line 90
    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 91
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 92
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 94
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 95
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->texttoSpeech:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mLastTouchMode:I

    .line 102
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 103
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 105
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 109
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 110
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 135
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 137
    iput v3, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 138
    iput v3, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 141
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 146
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 150
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 156
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 158
    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 159
    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 161
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    .line 163
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 164
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 165
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 166
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 167
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 171
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 172
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 173
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 174
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 176
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 304
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 305
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 306
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 237
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 241
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 75
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 76
    const-string v1, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 77
    const v1, 0x20000ff

    iput v1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 78
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 79
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 80
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 81
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 82
    const v1, 0x186a0

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 83
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 85
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 86
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 87
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 88
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 89
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    .line 90
    iput v2, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 91
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 92
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 93
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 94
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 95
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 96
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 97
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->texttoSpeech:Ljava/lang/String;

    .line 98
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 99
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 101
    const/4 v1, -0x1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mLastTouchMode:I

    .line 102
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 103
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 105
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 109
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 110
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 135
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 137
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 138
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 141
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 146
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 150
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 156
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 158
    iput v2, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 159
    iput v2, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 161
    const/16 v1, 0x14

    iput v1, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    .line 163
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 164
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 165
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 166
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 167
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 171
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 172
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 173
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 174
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 176
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 193
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 304
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 305
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 306
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 242
    invoke-direct {p0, p2}, Landroid/webkit/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, data:Ljava/lang/String;
    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method private HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "data"
    .parameter "mimeType"

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 248
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 249
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 250
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 251
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    .line 252
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->setSoundEffectsEnabled(Z)V

    .line 255
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 256
    .local v6, metric:Landroid/util/DisplayMetrics;
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 258
    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 260
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 261
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->XFAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 270
    :cond_0
    :goto_0
    new-instance v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 273
    const-string v1, "htmlcomposer"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/HtmlComposerView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    .line 276
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v7, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    .line 277
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 278
    iput-object p0, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 279
    new-instance v0, Landroid/webkit/HtmlComposerInputConnection;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerInputConnection;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    .line 280
    new-instance v0, Landroid/webkit/HtmlComposerView$TBHandler;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerView$TBHandler;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$TBHandler;

    .line 281
    invoke-super {p0, p0}, Landroid/webkit/WebView;->isVisibleCursorhandlerListener(Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;)V

    .line 282
    return-void

    .line 262
    :cond_1
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 263
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_0

    .line 264
    :cond_2
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    .line 265
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_0

    .line 266
    :cond_3
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe8

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_0
.end method

.method static synthetic access$002(Landroid/webkit/HtmlComposerView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    return p1
.end method

.method static synthetic access$100(Landroid/webkit/HtmlComposerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    return v0
.end method

.method static synthetic access$200(Landroid/webkit/HtmlComposerView;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private canSelectAll()Z
    .locals 1

    .prologue
    .line 2403
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2404
    const/4 v0, 0x1

    .line 2407
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "src"
    .parameter "dst"

    .prologue
    const/4 v5, 0x0

    .line 2413
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 2414
    .local v3, source:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2416
    .local v4, target:Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 2417
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 2418
    .local v2, i:I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 2419
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2428
    .end local v0           #buffer:[B
    .end local v2           #i:I
    .end local v3           #source:Ljava/io/FileInputStream;
    .end local v4           #target:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 2429
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2433
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_1
    return v5

    .line 2421
    .restart local v0       #buffer:[B
    .restart local v2       #i:I
    .restart local v3       #source:Ljava/io/FileInputStream;
    .restart local v4       #target:Ljava/io/FileOutputStream;
    :cond_0
    if-eqz v3, :cond_1

    .line 2422
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 2424
    :cond_1
    if-eqz v4, :cond_2

    .line 2425
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2427
    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    .line 2431
    .end local v0           #buffer:[B
    .end local v2           #i:I
    .end local v3           #source:Ljava/io/FileInputStream;
    .end local v4           #target:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 2432
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private createToolTip()V
    .locals 2

    .prologue
    .line 1383
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-nez v0, :cond_0

    .line 1384
    new-instance v0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;-><init>(Landroid/webkit/HtmlComposerView;Landroid/content/Context;Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 1387
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 1388
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->show()V

    .line 1389
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 1391
    :cond_1
    return-void
.end method

.method private displaySoftKeyboardForHtmlComposer()V
    .locals 1

    .prologue
    .line 2438
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboard(Z)V

    .line 2439
    return-void
.end method

.method private getCurrentOutlineBottom()F
    .locals 1

    .prologue
    .line 2717
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method private getCurrentOutlineHeight()I
    .locals 2

    .prologue
    .line 2709
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getCurrentOutlineRight()F
    .locals 1

    .prologue
    .line 2721
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method private getCurrentOutlineWidth()I
    .locals 2

    .prologue
    .line 2713
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getLoadableContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "filePath"

    .prologue
    .line 2442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2446
    .local v1, bufer:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 2448
    .local v4, fstream:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2449
    .local v5, in:Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2452
    .local v0, br:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, strLine:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 2454
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2470
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .end local v6           #strLine:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2471
    .local v3, ep:Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " HtmlComposerView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2472
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .end local v3           #ep:Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v2

    .line 2456
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #strLine:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2459
    .local v2, data:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 2460
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 2461
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 2462
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2464
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v10, 0x104064d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v10, 0x104064e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 2465
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getSelectionOffsetImage(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "rect"

    .prologue
    .line 2478
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2490
    :cond_0
    :goto_0
    return-void

    .line 2480
    :cond_1
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 2481
    .local v0, paramArray:[Ljava/lang/Object;
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2483
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    new-instance v2, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    invoke-direct {v2}, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 2484
    iget-object v2, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    const/16 v3, 0x8

    iput v3, v2, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    .line 2485
    iget-object v2, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iput-object p1, v2, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    .line 2487
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2488
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21d

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private getSelectionOffsetImage(Landroid/graphics/Rect;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 4
    .parameter "rect"
    .parameter "imageoutLinePath"
    .parameter "imagehandlesPath"

    .prologue
    .line 2496
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2511
    :cond_0
    :goto_0
    return-void

    .line 2498
    :cond_1
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 2499
    .local v0, paramArray:[Ljava/lang/Object;
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2501
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    new-instance v2, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    invoke-direct {v2}, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 2502
    iget-object v2, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    const/16 v3, 0x8

    iput v3, v2, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    .line 2503
    iget-object v2, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iput-object p1, v2, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    .line 2505
    iget-object v2, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iput-object p2, v2, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    .line 2506
    iget-object v2, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iput-object p3, v2, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    .line 2508
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2509
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21d

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private getTargetView()Landroid/webkit/HtmlComposerView;
    .locals 1

    .prologue
    .line 2515
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    return-object v0
.end method

.method private handleLeftBottomHandleDrag(II)V
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 2848
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v0, p1, v2

    .line 2849
    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v1, p2, v2

    .line 2852
    .local v1, deltaY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 2853
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 2856
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 2857
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 2858
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 2859
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 2860
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 2861
    return-void
.end method

.method private handleLeftTopHandleDrag(II)V
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 2864
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v0, p1, v2

    .line 2865
    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v1, p2, v2

    .line 2867
    .local v1, deltaY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 2868
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 2871
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 2872
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 2873
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 2874
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 2875
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 2876
    return-void
.end method

.method private handleNavKeys(I)V
    .locals 6
    .parameter "keyCode"

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2519
    packed-switch p1, :pswitch_data_0

    .line 2554
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2557
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const-string v1, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imm active  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move v3, v2

    move v5, v4

    .line 2559
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 2560
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 2561
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher()V

    .line 2563
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2565
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 2566
    return-void

    .line 2521
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :pswitch_0
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v1, :cond_0

    .line 2522
    const-string v1, "MoveLeftAndModifySelection"

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2524
    :cond_0
    const-string v1, "MoveLeft"

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2529
    :pswitch_1
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v1, :cond_1

    .line 2530
    const-string v1, "MoveRightAndModifySelection"

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2532
    :cond_1
    const-string v1, "MoveRight"

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2537
    :pswitch_2
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v1, :cond_2

    .line 2538
    const-string v1, "MoveUpAndModifySelection"

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2540
    :cond_2
    const-string v1, "MoveUp"

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2545
    :pswitch_3
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v1, :cond_3

    .line 2546
    const-string v1, "MoveDownAndModifySelection"

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2548
    :cond_3
    const-string v1, "MoveDown"

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2519
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleRightBottomHandleDrag(II)V
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 2881
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v0, p1, v2

    .line 2882
    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v1, p2, v2

    .line 2884
    .local v1, deltaY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 2885
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 2889
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 2890
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 2891
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 2892
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 2893
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 2895
    return-void
.end method

.method private handleRightTopHandleDrag(II)V
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 2900
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v0, p1, v2

    .line 2901
    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v1, p2, v2

    .line 2903
    .local v1, deltaY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 2904
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 2908
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 2909
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 2910
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 2911
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 2912
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 2914
    return-void
.end method

.method private handle_ACTION_DOWN(IIII)V
    .locals 3
    .parameter "contentX"
    .parameter "contentY"
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v2, 0x1

    .line 2726
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isOutLineRect(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2728
    const-string v0, "HtmlComposerView"

    const-string v1, "inside \"If outline\""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isleftTopImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2734
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 2735
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 2736
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 2737
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 2739
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 2740
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 2741
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 2743
    iput-boolean v2, p0, Landroid/webkit/WebView;->imageCanbeResized:Z

    .line 2746
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isleftBottomImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2747
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 2748
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 2749
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 2750
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 2752
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 2753
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 2754
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 2756
    iput-boolean v2, p0, Landroid/webkit/WebView;->imageCanbeResized:Z

    .line 2759
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isRightTopImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2760
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 2761
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 2762
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 2763
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 2764
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 2765
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 2766
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 2768
    iput-boolean v2, p0, Landroid/webkit/WebView;->imageCanbeResized:Z

    .line 2771
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isRightBottomImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2772
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 2773
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 2774
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 2776
    iput-boolean v2, p0, Landroid/webkit/WebView;->imageCanbeResized:Z

    .line 2779
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->imageCanbeResized:Z

    .line 2780
    return-void

    .line 2731
    :cond_4
    const-string v0, "HtmlComposerView"

    const-string v1, "inside \"else outline\""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handle_ACTION_MOVE(II)V
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v2, 0x1

    .line 2783
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-ne v0, v2, :cond_0

    .line 2785
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleRightBottomHandleDrag(II)V

    .line 2786
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 2789
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-ne v0, v2, :cond_1

    .line 2791
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleLeftBottomHandleDrag(II)V

    .line 2792
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 2793
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 2796
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    if-ne v0, v2, :cond_2

    .line 2798
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleLeftTopHandleDrag(II)V

    .line 2799
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 2800
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 2803
    :cond_2
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    if-ne v0, v2, :cond_3

    .line 2805
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleRightTopHandleDrag(II)V

    .line 2806
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 2807
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 2810
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    if-eqz v0, :cond_5

    .line 2811
    :cond_4
    iput-boolean v2, p0, Landroid/webkit/WebView;->imageCanbeResized:Z

    .line 2812
    :cond_5
    return-void
.end method

.method private handle_ACTION_UP(II)V
    .locals 5
    .parameter "rawX"
    .parameter "rawY"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2815
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 2816
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 2817
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 2819
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-ne v0, v1, :cond_1

    .line 2821
    :cond_0
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 2822
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 2823
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 2824
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 2825
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 2826
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 2827
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 2829
    invoke-direct {p0, v3, v3}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 2830
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 2833
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 2834
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 2837
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 2838
    iget v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 2839
    iget v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 2840
    iput v4, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 2841
    iput v4, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 2844
    :cond_1
    return-void
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 1394
    const-string v0, "HtmlComposerView"

    const-string v1, "hide : Called."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 1398
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 1400
    :cond_0
    return-void
.end method

.method private hideSoftKeyboardForHtmlComposer()V
    .locals 3

    .prologue
    .line 2569
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2570
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2571
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2573
    :cond_0
    return-void
.end method

.method private imageCopy(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 2576
    if-eqz p1, :cond_0

    .line 2577
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2578
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x204

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2580
    :cond_0
    return-void
.end method

.method private insertImageContent(Ljava/lang/String;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 2583
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2584
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x220

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2585
    :cond_0
    return-void
.end method

.method private isInsertionAllowed(I)Z
    .locals 5
    .parameter "insertionLength"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2588
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    if-eqz v3, :cond_1

    .line 2599
    :cond_0
    :goto_0
    return v1

    .line 2590
    :cond_1
    iget v3, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x3

    .line 2591
    .local v0, avoidLength:I
    iget v3, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    add-int/2addr v3, p1

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 2593
    iget v3, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    if-lt v3, v0, :cond_0

    .line 2597
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 2598
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->htmlLength()I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 2599
    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    add-int/2addr v3, p1

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    if-le v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private isOutLineRect(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2993
    move v0, p1

    .line 2994
    .local v0, positionX:I
    move v1, p2

    .line 2996
    .local v1, positionY:I
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2998
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in \"If\" for Outline rectHandle left Top PositionX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " positionY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  imageRegion Bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    const/4 v2, 0x1

    .line 3004
    :goto_0
    return v2

    .line 3002
    :cond_0
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in \"else\" for Outline rectHandle left Top PositionX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " positionY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  imageRegion Bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRightBottomImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2976
    move v0, p1

    .line 2977
    .local v0, positionX:I
    move v1, p2

    .line 2979
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2981
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2982
    .local v2, temp:Landroid/graphics/Rect;
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Right Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    const/4 v3, 0x1

    .line 2989
    :goto_0
    return v3

    .line 2986
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2987
    .restart local v2       #temp:Landroid/graphics/Rect;
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isRightTopImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2954
    move v0, p1

    .line 2955
    .local v0, positionX:I
    move v1, p2

    .line 2957
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2959
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->isOutLineRect(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2961
    const-string v3, "HtmlComposerView"

    const-string v4, "Right top and outline inteersecting so disable outlineRect region as user intention is to resize not move"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2964
    .local v2, temp:Landroid/graphics/Rect;
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Right Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    const/4 v3, 0x1

    .line 2972
    :goto_0
    return v3

    .line 2969
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2970
    .restart local v2       #temp:Landroid/graphics/Rect;
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftBottomImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2937
    move v0, p1

    .line 2938
    .local v0, positionX:I
    move v1, p2

    .line 2940
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2941
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2942
    .local v2, temp:Landroid/graphics/Rect;
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle left Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    const/4 v3, 0x1

    .line 2950
    :goto_0
    return v3

    .line 2947
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2948
    .restart local v2       #temp:Landroid/graphics/Rect;
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside  rectHandle left Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftTopImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2919
    move v0, p1

    .line 2920
    .local v0, positionX:I
    move v1, p2

    .line 2922
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2924
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2925
    .local v2, temp:Landroid/graphics/Rect;
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle left Top  PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    const/4 v3, 0x1

    .line 2933
    :goto_0
    return v3

    .line 2930
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2931
    .restart local v2       #temp:Landroid/graphics/Rect;
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle left Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private resetAndCreateOutlinePath()V
    .locals 6

    .prologue
    .line 3010
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 3011
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 3012
    return-void
.end method

.method private resetAndRecreateHandlesPath()V
    .locals 6

    .prologue
    .line 3015
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 3016
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 3017
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 3019
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 3020
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 3022
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 3023
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 3025
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 3026
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 3027
    return-void
.end method

.method private restartIMEByHtmlComposerView()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 2604
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2606
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-ne v1, v3, :cond_0

    move-object v1, p0

    move v3, v2

    move v5, v4

    .line 2607
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 2608
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2610
    :cond_0
    return-void
.end method

.method private setEditable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/16 v2, 0x207

    .line 2613
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2621
    :cond_0
    :goto_0
    return-void

    .line 2615
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2617
    if-eqz p1, :cond_2

    .line 2618
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    goto :goto_0

    .line 2620
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    goto :goto_0
.end method

.method private updateAllHandles()V
    .locals 0

    .prologue
    .line 3032
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateLeftTopHandle()V

    .line 3033
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRightTopHandle()V

    .line 3034
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateLeftBottomHandle()V

    .line 3035
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRightBottomHandle()V

    .line 3036
    return-void
.end method

.method private updateInputMethodExtractText()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2631
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 2632
    .local v1, outText:Landroid/view/inputmethod/ExtractedText;
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 2634
    iget-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    .line 2649
    :cond_0
    :goto_0
    return-void

    .line 2637
    :cond_1
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 2638
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 2639
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 2640
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v2

    .line 2641
    .local v2, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 2642
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 2644
    const-string v3, "HtmlComposerView"

    const-string v4, "getExtractedText "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2647
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2648
    invoke-virtual {v0, p0, v5, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_0
.end method

.method private updateLeftBottomHandle()V
    .locals 6

    .prologue
    .line 3064
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3066
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 3067
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 3068
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->lb_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 3069
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->lb_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 3074
    :goto_0
    return-void

    .line 3072
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateLeftTopHandle()V
    .locals 5

    .prologue
    .line 3059
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 3060
    return-void
.end method

.method private updateOutlineRectangle(II)V
    .locals 4
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v3, 0x1

    .line 3077
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-ne v0, v3, :cond_0

    .line 3078
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 3079
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 3081
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-ne v0, v3, :cond_1

    .line 3082
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 3083
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 3085
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    if-ne v0, v3, :cond_2

    .line 3086
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 3087
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 3089
    :cond_2
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    if-ne v0, v3, :cond_3

    .line 3090
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 3091
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 3093
    :cond_3
    return-void
.end method

.method private updateRegions()V
    .locals 8

    .prologue
    const-wide v4, 0x3fc3333333333333L

    .line 3040
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 3041
    .local v1, localImagWidth:I
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v0, v2

    .line 3042
    .local v0, localImagHeight:I
    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    .line 3044
    int-to-double v2, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    .line 3045
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    add-int/lit8 v6, v6, 0x14

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 3046
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 3049
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 3051
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 3053
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 3054
    return-void
.end method

.method private updateRightBottomHandle()V
    .locals 6

    .prologue
    .line 3096
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3097
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 3098
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 3099
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 3100
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 3105
    :goto_0
    return-void

    .line 3103
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateRightTopHandle()V
    .locals 5

    .prologue
    .line 3108
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 3109
    return-void
.end method

.method private updateactionbar()V
    .locals 2

    .prologue
    .line 2624
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2628
    :cond_0
    :goto_0
    return-void

    .line 2626
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2627
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21f

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method


# virtual methods
.method public DoClearImageSelection()V
    .locals 2

    .prologue
    .line 1708
    iget-boolean v0, p0, Landroid/webkit/WebView;->isImageSelected:Z

    if-eqz v0, :cond_0

    .line 1710
    const-string v0, "HtmlComposerView"

    const-string v1, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 1713
    :cond_0
    return-void
.end method

.method public MoveCursorRight()V
    .locals 2

    .prologue
    .line 2154
    const-string v0, "MoveRight"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    return-void
.end method

.method public SetContextMenuVisible(Z)V
    .locals 0
    .parameter "_visible"

    .prologue
    .line 2311
    iput-boolean p1, p0, Landroid/webkit/WebView;->isContextMenuVisible:Z

    .line 2312
    return-void
.end method

.method public UpdateRichTextToolbar(Z)V
    .locals 2
    .parameter "isClear"

    .prologue
    const/4 v1, 0x1

    .line 2389
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    if-eqz v0, :cond_1

    .line 2390
    if-eq p1, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->isImageSelected:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    if-ne v0, v1, :cond_2

    .line 2391
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    .line 2396
    :cond_1
    :goto_0
    return-void

    .line 2393
    :cond_2
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    invoke-interface {v0, v1}, Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 1545
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 1546
    return-void
.end method

.method public canCopy()Z
    .locals 1

    .prologue
    .line 1549
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1550
    const/4 v0, 0x1

    .line 1553
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canCut()Z
    .locals 1

    .prologue
    .line 1557
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1558
    const/4 v0, 0x1

    .line 1561
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPaste()Z
    .locals 1

    .prologue
    .line 1565
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1566
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1567
    const/4 v0, 0x1

    .line 1571
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRedo()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1575
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1590
    :cond_0
    :goto_0
    return v3

    .line 1577
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1578
    .local v0, canRedo:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1579
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 1580
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1581
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x20f

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1584
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1589
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1590
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 1585
    :catch_0
    move-exception v1

    .line 1586
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1589
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public canUndo()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1594
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1610
    :cond_0
    :goto_0
    return v3

    .line 1596
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1597
    .local v0, canUndo:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1598
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 1599
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1600
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x20d

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1603
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1608
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1610
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 1604
    :catch_0
    move-exception v1

    .line 1605
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1608
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public changeFontBackColorForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontColor"

    .prologue
    .line 1047
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1048
    const-string v0, "BackColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1050
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1051
    return-void
.end method

.method public changeFontColorForSelection(Ljava/lang/String;)V
    .locals 2
    .parameter "fontColor"

    .prologue
    .line 1054
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1061
    :goto_0
    return-void

    .line 1057
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1058
    const-string v0, "ForeColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1060
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    goto :goto_0
.end method

.method public changeFontNameForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontName"

    .prologue
    .line 1064
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1065
    const-string v0, "FontName"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1067
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1068
    return-void
.end method

.method public changeFontSizeForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontSize"

    .prologue
    .line 1071
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1072
    const-string v0, "FontSize"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1074
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1075
    return-void
.end method

.method public ckeckIfSelectionAtBoundry()I
    .locals 4

    .prologue
    .line 1614
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 1629
    :goto_0
    return v2

    .line 1616
    :cond_1
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1617
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 1618
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1619
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x217

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1622
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1627
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1629
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 1623
    :catch_0
    move-exception v0

    .line 1624
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1627
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public cleanTempResources()V
    .locals 2

    .prologue
    .line 1633
    const-string v0, "HtmlComposerView"

    const-string v1, "cleanTempResources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->deleteTempDirectory()V

    .line 1635
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 1638
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAllSec()Z

    .line 1640
    const-string v0, ""

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 1641
    return-void
.end method

.method public clearComposingSelection()V
    .locals 4

    .prologue
    .line 1644
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1645
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x219

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 1646
    :cond_0
    return-void
.end method

.method public clearSelection()V
    .locals 2

    .prologue
    .line 1036
    const-string v0, "HtmlComposerView"

    const-string v1, "clearSelection : Called."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->hide()V

    .line 1040
    invoke-super {p0}, Landroid/webkit/WebView;->clearSelection()V

    .line 1041
    return-void
.end method

.method public commitInputMethodText(Ljava/lang/String;I)V
    .locals 3
    .parameter "text"
    .parameter "numOfcharsToDeleteFromCursorPos"

    .prologue
    .line 1649
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1660
    :cond_0
    :goto_0
    return-void

    .line 1651
    :cond_1
    if-lez p2, :cond_2

    .line 1652
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitInputMethodText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1654
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x1fc

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 1657
    :cond_2
    if-eqz p1, :cond_0

    const-string v0, ""

    if-eq p1, v0, :cond_0

    .line 1658
    const-string v0, "InsertText"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_0
.end method

.method public copy()V
    .locals 2

    .prologue
    .line 1078
    const-string v0, "Copy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    return-void
.end method

.method public cut()V
    .locals 2

    .prologue
    .line 1082
    const-string v0, "Cut"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    return-void
.end method

.method public delete()V
    .locals 4

    .prologue
    .line 1669
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getImageSelectRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1670
    .local v0, cursurRect:Landroid/graphics/Rect;
    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID_DELETE called --setTextSelecitonManualAtContentPoint -- cursurRect.left  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cursurRect.top =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->setTextSelecitonManualAtContentPoint(II)Z

    .line 1672
    const-string v1, "Delete"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1674
    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 2
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 1677
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1681
    :cond_0
    :goto_0
    return-void

    .line 1679
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1680
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 1684
    const-string v0, "HtmlComposerView"

    const-string v1, " htmlcomposer destroy() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1688
    const-string v0, "HtmlComposerView"

    const-string v1, "htmlcomposer destroy() hide "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 1692
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    if-eqz v0, :cond_1

    .line 1693
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->setTargetNull()V

    .line 1694
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    .line 1697
    :cond_1
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 1698
    return-void
.end method

.method public disableEditing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1701
    invoke-direct {p0, v1}, Landroid/webkit/HtmlComposerView;->setEditable(Z)V

    .line 1702
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 1703
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-eqz v0, :cond_0

    .line 1704
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 1705
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 21
    .parameter "event"

    .prologue
    .line 458
    const/16 v19, 0x0

    .line 459
    .local v19, retVal:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/16 v16, 0x1

    .line 460
    .local v16, down:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v17

    .line 461
    .local v17, keyCode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v15

    .line 463
    .local v15, MetaState:I
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " dispatchKeyEvent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/16 v4, 0x39

    move/from16 v0, v17

    if-ne v0, v4, :cond_0

    .line 466
    if-eqz v16, :cond_5

    .line 467
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 472
    :cond_0
    :goto_1
    const/16 v4, 0x7a

    move/from16 v0, v17

    if-eq v0, v4, :cond_2

    const/high16 v4, 0x20

    if-eq v15, v4, :cond_1

    const/16 v4, 0x97

    move/from16 v0, v17

    if-eq v0, v4, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_7

    const/16 v4, 0x15

    move/from16 v0, v17

    if-ne v0, v4, :cond_7

    .line 474
    :cond_2
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_6

    .line 475
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 476
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorToBeginningOfLine()V

    .line 482
    :cond_3
    :goto_2
    const/16 v19, 0x1

    .line 665
    .end local v19           #retVal:Z
    :goto_3
    return v19

    .line 459
    .end local v15           #MetaState:I
    .end local v16           #down:Z
    .end local v17           #keyCode:I
    .restart local v19       #retVal:Z
    :cond_4
    const/16 v16, 0x0

    goto :goto_0

    .line 469
    .restart local v15       #MetaState:I
    .restart local v16       #down:Z
    .restart local v17       #keyCode:I
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    goto :goto_1

    .line 477
    :cond_6
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_3

    const/16 v4, 0x15

    move/from16 v0, v17

    if-ne v0, v4, :cond_3

    .line 478
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 479
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToBeginningOfLine()V

    .line 480
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_2

    .line 483
    :cond_7
    const/16 v4, 0x7b

    move/from16 v0, v17

    if-eq v0, v4, :cond_9

    const/high16 v4, 0x20

    if-eq v15, v4, :cond_8

    const/16 v4, 0x91

    move/from16 v0, v17

    if-eq v0, v4, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_c

    const/16 v4, 0x16

    move/from16 v0, v17

    if-ne v0, v4, :cond_c

    .line 485
    :cond_9
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_b

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 487
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorToEndOfLine()V

    .line 493
    :cond_a
    :goto_4
    const/16 v19, 0x1

    goto :goto_3

    .line 488
    :cond_b
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_a

    const/16 v4, 0x16

    move/from16 v0, v17

    if-ne v0, v4, :cond_a

    .line 489
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 490
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToEndOfLine()V

    .line 491
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_4

    .line 494
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_12

    const/16 v4, 0x13

    move/from16 v0, v17

    if-eq v0, v4, :cond_d

    const/16 v4, 0x14

    move/from16 v0, v17

    if-ne v0, v4, :cond_12

    .line 495
    :cond_d
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_10

    const/16 v4, 0x13

    move/from16 v0, v17

    if-ne v0, v4, :cond_10

    .line 496
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_f

    .line 497
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorBegining()V

    .line 513
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 514
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 500
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToBeginningOfDocument()V

    .line 501
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_5

    .line 503
    :cond_10
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_e

    const/16 v4, 0x14

    move/from16 v0, v17

    if-ne v0, v4, :cond_e

    .line 504
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_11

    .line 505
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorEnd()V

    goto :goto_5

    .line 508
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToEndOfDocument()V

    .line 509
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_5

    .line 515
    :cond_12
    const/16 v4, 0x5c

    move/from16 v0, v17

    if-eq v0, v4, :cond_13

    const/high16 v4, 0x20

    if-eq v15, v4, :cond_15

    const/16 v4, 0x99

    move/from16 v0, v17

    if-ne v0, v4, :cond_15

    .line 517
    :cond_13
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_14

    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 519
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorToPageUp()V

    .line 520
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher()V

    .line 522
    :cond_14
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 523
    :cond_15
    const/16 v4, 0x5d

    move/from16 v0, v17

    if-eq v0, v4, :cond_16

    const/high16 v4, 0x20

    if-eq v15, v4, :cond_18

    const/16 v4, 0x93

    move/from16 v0, v17

    if-ne v0, v4, :cond_18

    .line 525
    :cond_16
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_17

    .line 526
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 527
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorToPageDown()V

    .line 528
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher()V

    .line 530
    :cond_17
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 533
    :cond_18
    const/high16 v4, 0x20

    if-eq v15, v4, :cond_1e

    .line 534
    const/16 v4, 0x92

    move/from16 v0, v17

    if-eq v0, v4, :cond_19

    const/16 v4, 0x94

    move/from16 v0, v17

    if-eq v0, v4, :cond_19

    const/16 v4, 0x96

    move/from16 v0, v17

    if-eq v0, v4, :cond_19

    const/16 v4, 0x98

    move/from16 v0, v17

    if-eq v0, v4, :cond_19

    const/16 v4, 0x9e

    move/from16 v0, v17

    if-ne v0, v4, :cond_1e

    .line 539
    :cond_19
    if-eqz v16, :cond_1e

    .line 540
    const/16 v4, 0x92

    move/from16 v0, v17

    if-ne v0, v4, :cond_1a

    .line 541
    const/16 v17, 0x14

    .line 542
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 543
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 544
    :cond_1a
    const/16 v4, 0x94

    move/from16 v0, v17

    if-ne v0, v4, :cond_1b

    .line 545
    const/16 v17, 0x15

    .line 546
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 547
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 548
    :cond_1b
    const/16 v4, 0x96

    move/from16 v0, v17

    if-ne v0, v4, :cond_1c

    .line 549
    const/16 v17, 0x16

    .line 550
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 551
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 552
    :cond_1c
    const/16 v4, 0x98

    move/from16 v0, v17

    if-ne v0, v4, :cond_1d

    .line 553
    const/16 v17, 0x13

    .line 554
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 555
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 556
    :cond_1d
    const/16 v4, 0x9e

    move/from16 v0, v17

    if-ne v0, v4, :cond_1e

    .line 557
    const/4 v2, 0x0

    .line 559
    .local v2, newKeyEvent:Landroid/view/KeyEvent;
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2           #newKeyEvent:Landroid/view/KeyEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/16 v8, 0x70

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 569
    .restart local v2       #newKeyEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-super {v0, v2}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_3

    .line 575
    .end local v2           #newKeyEvent:Landroid/view/KeyEvent;
    :cond_1e
    const/16 v4, 0x13

    move/from16 v0, v17

    if-lt v0, v4, :cond_26

    const/16 v4, 0x16

    move/from16 v0, v17

    if-gt v0, v4, :cond_26

    .line 576
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->ckeckIfSelectionAtBoundry()I

    move-result v20

    .line 577
    .local v20, selctionAtBoundry:I
    if-nez v20, :cond_20

    .line 578
    if-eqz v16, :cond_1f

    .line 579
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 580
    :cond_1f
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 582
    :cond_20
    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_23

    const/16 v4, 0x16

    move/from16 v0, v17

    if-eq v0, v4, :cond_21

    const/16 v4, 0x14

    move/from16 v0, v17

    if-ne v0, v4, :cond_23

    .line 583
    :cond_21
    if-eqz v16, :cond_22

    .line 584
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 585
    :cond_22
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 587
    :cond_23
    const/4 v4, 0x2

    move/from16 v0, v20

    if-ne v0, v4, :cond_2f

    const/16 v4, 0x13

    move/from16 v0, v17

    if-eq v0, v4, :cond_24

    const/16 v4, 0x15

    move/from16 v0, v17

    if-ne v0, v4, :cond_2f

    .line 588
    :cond_24
    if-eqz v16, :cond_25

    .line 589
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 590
    :cond_25
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 593
    .end local v20           #selctionAtBoundry:I
    :cond_26
    const/16 v4, 0x3d

    move/from16 v0, v17

    if-ne v4, v0, :cond_28

    .line 594
    if-eqz v16, :cond_27

    .line 595
    const-string v4, "InsertText"

    const-string v5, "    "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_27
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 599
    :cond_28
    const/16 v4, 0x42

    move/from16 v0, v17

    if-eq v0, v4, :cond_29

    const/16 v4, 0xa0

    move/from16 v0, v17

    if-ne v0, v4, :cond_2b

    .line 600
    :cond_29
    if-eqz v16, :cond_2a

    .line 601
    const-string v4, "InsertText"

    const-string v5, "\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 603
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher()V

    .line 605
    :cond_2a
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 607
    :cond_2b
    const/16 v4, 0x71

    move/from16 v0, v17

    if-eq v0, v4, :cond_2c

    const/16 v4, 0x72

    move/from16 v0, v17

    if-ne v0, v4, :cond_2d

    .line 608
    :cond_2c
    invoke-super/range {p0 .. p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_3

    .line 610
    :cond_2d
    const/16 v4, 0x1d

    move/from16 v0, v17

    if-eq v0, v4, :cond_2e

    const/16 v4, 0x1f

    move/from16 v0, v17

    if-eq v0, v4, :cond_2e

    const/16 v4, 0x32

    move/from16 v0, v17

    if-eq v0, v4, :cond_2e

    const/16 v4, 0x34

    move/from16 v0, v17

    if-eq v0, v4, :cond_2e

    const/16 v4, 0x36

    move/from16 v0, v17

    if-eq v0, v4, :cond_2e

    const/16 v4, 0x35

    move/from16 v0, v17

    if-ne v0, v4, :cond_2f

    :cond_2e
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_2f

    if-nez v16, :cond_2f

    .line 614
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCtrlPressed and keyCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    sparse-switch v17, :sswitch_data_0

    .line 658
    :cond_2f
    if-eqz v19, :cond_30

    .line 659
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 662
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    goto/16 :goto_3

    .line 618
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canSelectAll()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 619
    const/16 v18, 0x0

    .line 620
    .local v18, result:Z
    const v4, 0x102001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v18

    .line 621
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    move/from16 v19, v18

    .line 622
    goto/16 :goto_3

    .line 627
    .end local v18           #result:Z
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canCopy()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 628
    const v4, 0x1020021

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 633
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 634
    const v4, 0x1020022

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 639
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 640
    const v4, 0x1020020

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 645
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canUndo()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 646
    const v4, 0x102002e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 651
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canRedo()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 652
    const v4, 0x102002f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 665
    :cond_30
    invoke-super/range {p0 .. p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_3

    .line 616
    nop

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_1
        0x32 -> :sswitch_2
        0x34 -> :sswitch_3
        0x35 -> :sswitch_5
        0x36 -> :sswitch_4
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 670
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->texttoSpeech:Ljava/lang/String;

    .line 671
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->texttoSpeech:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    const/4 v0, 0x1

    return v0
.end method

.method public doResizeImage(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1716
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1717
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x221

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 1718
    :cond_0
    return-void
.end method

.method public enableEditing()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1741
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 1742
    invoke-direct {p0, v1}, Landroid/webkit/HtmlComposerView;->setEditable(Z)V

    .line 1743
    return-void
.end method

.method public execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "command"
    .parameter "value"

    .prologue
    .line 1721
    const-string v1, "Insert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1723
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1724
    .local v0, length:I
    invoke-direct {p0, v0}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1726
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x104064d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x104064e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1738
    .end local v0           #length:I
    :goto_0
    return-void

    .line 1730
    .restart local v0       #length:I
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/WebView;->isImageSelected:Z

    if-eqz v1, :cond_1

    .line 1733
    const-string v1, "HtmlComposerView"

    const-string v2, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 1737
    .end local v0           #length:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public executeIndent()V
    .locals 2

    .prologue
    .line 1086
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1087
    const-string v0, "Indent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1089
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1090
    return-void
.end method

.method public executeOutdent()V
    .locals 2

    .prologue
    .line 1093
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1094
    const-string v0, "Outdent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1096
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1097
    return-void
.end method

.method public getBodyHTML()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1746
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1761
    :cond_0
    :goto_0
    return-object v2

    .line 1748
    :cond_1
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1749
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 1750
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1751
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x200

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1754
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1759
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1761
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 1755
    :catch_0
    move-exception v0

    .line 1756
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1759
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public declared-synchronized getComposingState()Z
    .locals 1

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConetextmenuVisibility()Z
    .locals 1

    .prologue
    .line 1765
    iget-boolean v0, p0, Landroid/webkit/WebView;->isContextMenuVisible:Z

    return v0
.end method

.method public getCurrentFontSize()I
    .locals 4

    .prologue
    .line 1770
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1771
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 1772
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x222

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1774
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1778
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1779
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 1775
    :catch_0
    move-exception v0

    .line 1776
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1778
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getCursorPressed()Z
    .locals 1

    .prologue
    .line 1783
    iget-boolean v0, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    return v0
.end method

.method public getHTML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1787
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    .line 1788
    .local v0, text:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 1792
    :goto_0
    return-object v1

    .line 1789
    :cond_0
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1790
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1792
    goto :goto_0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 1796
    iget v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    return v0
.end method

.method public getMailContent()Landroid/webkit/WebHTMLMarkupData;
    .locals 4

    .prologue
    .line 1800
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getMailHTML()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v0

    .line 1801
    .local v0, data:Landroid/webkit/WebHTMLMarkupData;
    if-nez v0, :cond_1

    .line 1809
    :cond_0
    :goto_0
    return-object v0

    .line 1803
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebHTMLMarkupData;->HTMLFragment()Ljava/lang/String;

    move-result-object v1

    .line 1804
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1805
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1806
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1807
    invoke-virtual {v0, v1}, Landroid/webkit/WebHTMLMarkupData;->setHTMLFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMailHTML()Landroid/webkit/WebHTMLMarkupData;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1813
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1829
    :cond_0
    :goto_0
    return-object v3

    .line 1815
    :cond_1
    new-instance v1, Landroid/webkit/WebHTMLMarkupData;

    invoke-direct {v1}, Landroid/webkit/WebHTMLMarkupData;-><init>()V

    .line 1816
    .local v1, mailMarkupData:Landroid/webkit/WebHTMLMarkupData;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v3, v1}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1817
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/webkit/WebHTMLMarkupData;>;"
    monitor-enter v2

    .line 1818
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1819
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x206

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1822
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1827
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1829
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebHTMLMarkupData;

    goto :goto_0

    .line 1823
    :catch_0
    move-exception v0

    .line 1824
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1827
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getPlainText()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1833
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1848
    :cond_0
    :goto_0
    return-object v2

    .line 1835
    :cond_1
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1836
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 1837
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1838
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x202

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1841
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1846
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1848
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 1842
    :catch_0
    move-exception v0

    .line 1843
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1846
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1852
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionEnd()I
    .locals 1

    .prologue
    .line 1905
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    return v0
.end method

.method public getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1909
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Landroid/webkit/WebView$SelectionOffset;

    invoke-direct {v3, p0, v4, v4}, Landroid/webkit/WebView$SelectionOffset;-><init>(Landroid/webkit/WebView;II)V

    .line 1926
    :goto_0
    return-object v3

    .line 1911
    :cond_1
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v5, v5}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1912
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    monitor-enter v2

    .line 1913
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1914
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x201

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1917
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1922
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1924
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 1926
    .local v1, pnt:Landroid/graphics/Point;
    new-instance v3, Landroid/webkit/WebView$SelectionOffset;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, p0, v4, v5}, Landroid/webkit/WebView$SelectionOffset;-><init>(Landroid/webkit/WebView;II)V

    goto :goto_0

    .line 1918
    .end local v1           #pnt:Landroid/graphics/Point;
    :catch_0
    move-exception v0

    .line 1919
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1922
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getSelectionStart()I
    .locals 1

    .prologue
    .line 1930
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    return v0
.end method

.method public getShowSingleCursorHandlerState()Z
    .locals 1

    .prologue
    .line 1934
    iget-boolean v0, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    return v0
.end method

.method public getStateInRichlyEditableText()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1887
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1901
    :cond_0
    :goto_0
    return v2

    .line 1889
    :cond_1
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v3, v2}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1890
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 1891
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1892
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21e

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1895
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1899
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1901
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 1896
    :catch_0
    move-exception v0

    .line 1897
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1899
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1856
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v1

    .line 1857
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, ""

    .line 1858
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1859
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    aget-char v0, v2, v3

    .line 1860
    .local v0, chrVal:I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    const-string v1, ""

    .line 1861
    :cond_1
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getText() Not Null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    .end local v0           #chrVal:I
    :cond_2
    return-object v1
.end method

.method public getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;
    .locals 6
    .parameter "n"
    .parameter "cursorDirection"

    .prologue
    const/4 v3, 0x0

    .line 1867
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1883
    :cond_0
    :goto_0
    return-object v3

    .line 1869
    :cond_1
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object p2, v1, v4

    .line 1870
    .local v1, paramArray:[Ljava/lang/Object;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v1, v3}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1871
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v2

    .line 1872
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1873
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x1fd

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1876
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1881
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1883
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 1877
    :catch_0
    move-exception v0

    .line 1878
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1881
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public hideSingleCursorHandler()V
    .locals 1

    .prologue
    .line 1939
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mIsSCHExpired:Z

    .line 1940
    iget-object v0, p0, Landroid/webkit/WebView;->mSCHTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1941
    iget-object v0, p0, Landroid/webkit/WebView;->mSCHTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1942
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    .line 1943
    return-void
.end method

.method public htmlLength()I
    .locals 1

    .prologue
    .line 1946
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public initComposerState()V
    .locals 1

    .prologue
    .line 1950
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getComposingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1951
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1952
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1954
    :cond_0
    return-void
.end method

.method initImageResizeControls(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 9
    .parameter "context"
    .parameter "imagetRect1"

    .prologue
    .line 2660
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    .line 2661
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 2663
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 2664
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 2665
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x4080

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    .line 2666
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 2667
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 2668
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 2669
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 2671
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->lt_height:I

    .line 2672
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->lt_width:I

    .line 2675
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->rt_height:I

    .line 2676
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->rt_width:I

    .line 2678
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->lb_height:I

    .line 2679
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->lb_width:I

    .line 2682
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 2683
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 2685
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    .line 2687
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 2688
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 2689
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 2690
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 2691
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 2692
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 2693
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 2694
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 2696
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 2697
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mTouchSlop:I

    .line 2699
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2701
    .local v1, metrics:Landroid/util/DisplayMetrics;
    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 2702
    .local v2, wms:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2703
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    .line 2704
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    .line 2705
    return-void
.end method

.method public insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V
    .locals 2
    .parameter "contentFragment"
    .parameter "pos"

    .prologue
    const/4 v1, 0x0

    .line 1957
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    if-ne p2, v0, :cond_1

    .line 1958
    const-string v0, "MoveToBeginningOfDocument"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    :cond_0
    :goto_0
    const-string v0, "InsertHTML"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1966
    return-void

    .line 1960
    :cond_1
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    if-ne p2, v0, :cond_0

    .line 1961
    const-string v0, "MoveToEndOfDocument"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insertImage(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 1982
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 1984
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<img src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1985
    .local v0, imgMarkup:Ljava/lang/String;
    const-string v1, "InsertHTML"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1990
    const-string v1, "image inserted"

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 1991
    const v1, 0x102040a

    sput v1, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 1992
    return-void
.end method

.method public insertImage(Ljava/lang/String;II)V
    .locals 3
    .parameter "url"
    .parameter "widthInPixel"
    .parameter "heightInPixel"

    .prologue
    .line 1969
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 1970
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<img src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1971
    .local v0, imgMarkup:Ljava/lang/String;
    const-string v1, "InsertHTML"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1976
    const-string v1, "image inserted"

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 1977
    const v1, 0x102040a

    sput v1, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 1978
    return-void
.end method

.method public insertOrderedList()V
    .locals 2

    .prologue
    .line 1100
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1101
    const-string v0, "InsertOrderedList"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1103
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1104
    return-void
.end method

.method public insertTextContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/webkit/WebView$SelectionOffset;
    .locals 5
    .parameter "content"
    .parameter "newCursorPosition"
    .parameter "composing"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Vector",
            "<",
            "Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;",
            ">;)",
            "Landroid/webkit/WebView$SelectionOffset;"
        }
    .end annotation

    .prologue
    .line 1996
    .local p4, spanData:Ljava/util/Vector;,"Ljava/util/Vector<Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;>;"
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 2017
    :goto_0
    return-object v2

    .line 1998
    :cond_1
    new-instance v1, Landroid/webkit/WebViewCore$EditableParams;

    invoke-direct {v1}, Landroid/webkit/WebViewCore$EditableParams;-><init>()V

    .line 1999
    .local v1, editableParams:Landroid/webkit/WebViewCore$EditableParams;
    iput-object p1, v1, Landroid/webkit/WebViewCore$EditableParams;->content:Ljava/lang/String;

    .line 2000
    iput p2, v1, Landroid/webkit/WebViewCore$EditableParams;->newCursorPosition:I

    .line 2001
    iput-boolean p3, v1, Landroid/webkit/WebViewCore$EditableParams;->composing:Z

    .line 2002
    iput-object p4, v1, Landroid/webkit/WebViewCore$EditableParams;->spanData:Ljava/util/Vector;

    .line 2004
    monitor-enter v1

    .line 2005
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2006
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x218

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2011
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2015
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2017
    new-instance v2, Landroid/webkit/WebView$SelectionOffset;

    iget v3, v1, Landroid/webkit/WebViewCore$EditableParams;->startOffset:I

    iget v4, v1, Landroid/webkit/WebViewCore$EditableParams;->endOffset:I

    invoke-direct {v2, p0, v3, v4}, Landroid/webkit/WebView$SelectionOffset;-><init>(Landroid/webkit/WebView;II)V

    goto :goto_0

    .line 2008
    :cond_2
    :try_start_3
    new-instance v2, Landroid/webkit/WebView$SelectionOffset;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, p0, v3, v4}, Landroid/webkit/WebView$SelectionOffset;-><init>(Landroid/webkit/WebView;II)V

    monitor-exit v1

    goto :goto_0

    .line 2015
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2012
    :catch_0
    move-exception v0

    .line 2013
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public insertUnorderedList()V
    .locals 2

    .prologue
    .line 1107
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1108
    const-string v0, "InsertUnorderedList"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1110
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1111
    return-void
.end method

.method public invokeTexttoSpeech(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 2022
    const/4 v1, 0x0

    .local v1, beforeStr:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2024
    .local v0, aftStr:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "HtmlComposerView"

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    :cond_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 2028
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 2031
    :cond_2
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 2033
    :cond_3
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 2036
    :cond_4
    const v2, 0x1020022

    if-ne p1, v2, :cond_9

    .line 2038
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2040
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->getText()Ljava/lang/String;

    move-result-object v0

    .line 2050
    :goto_0
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "paste operations "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 2086
    :cond_5
    :goto_1
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2, v0}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 2087
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2, v1}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 2088
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/webkit/HtmlComposerInputConnection;->textToSpeech(II)V

    .line 2089
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 2090
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 2091
    const/4 v2, 0x0

    sput v2, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 2092
    :cond_6
    :goto_2
    return-void

    .line 2044
    :cond_7
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2045
    const-string v0, "Images inserted"

    goto :goto_0

    .line 2047
    :cond_8
    const-string v0, "Images"

    goto :goto_0

    .line 2054
    :cond_9
    const v2, 0x1020020

    if-ne p1, v2, :cond_a

    .line 2056
    const-string v0, ""

    .line 2057
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    goto :goto_1

    .line 2059
    :cond_a
    const v2, 0x1020408

    if-ne p1, v2, :cond_b

    .line 2061
    const-string v0, ""

    .line 2062
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 2064
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 2067
    :cond_b
    const v2, 0x102040a

    if-ne p1, v2, :cond_c

    .line 2069
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 2070
    const-string v1, ""

    goto :goto_1

    .line 2072
    :cond_c
    const/16 v2, 0xf

    if-ne p1, v2, :cond_6

    .line 2075
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 2077
    const-string v2, "HtmlComposerView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    const-string v1, ""

    goto :goto_1
.end method

.method public isBodyEmpty()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2095
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2111
    :cond_0
    :goto_0
    return v3

    .line 2097
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2098
    .local v0, bodyEmpty:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2099
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 2100
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2101
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x212

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2104
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2109
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2111
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 2105
    :catch_0
    move-exception v1

    .line 2106
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2109
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public isInputMethodTarget()Z
    .locals 2

    .prologue
    .line 2119
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2120
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMagnifierVisible()Z
    .locals 1

    .prologue
    .line 2124
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v0, v0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-eqz v0, :cond_0

    .line 2125
    const/4 v0, 0x1

    .line 2128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisibleCursorHandler(I)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 984
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isVisibleCursorHandler : event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    packed-switch p1, :pswitch_data_0

    .line 1032
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 988
    :pswitch_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->show()V

    .line 990
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 994
    :pswitch_2
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 996
    :pswitch_3
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 998
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 999
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 1003
    :pswitch_4
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 1004
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    .line 1005
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 1006
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 1009
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    if-ne v0, v3, :cond_2

    .line 1010
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    goto :goto_0

    .line 1012
    :cond_2
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->createToolTip()V

    goto :goto_0

    .line 1018
    :pswitch_5
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-nez v0, :cond_3

    .line 1019
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->createToolTip()V

    goto :goto_0

    .line 1023
    :cond_3
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1024
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->show()V

    .line 1025
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 986
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public length()I
    .locals 1

    .prologue
    .line 2132
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public loadHtmlFile(Ljava/lang/String;)V
    .locals 2
    .parameter "htmlFilePath"

    .prologue
    .line 2136
    invoke-direct {p0, p1}, Landroid/webkit/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2138
    .local v0, data:Ljava/lang/String;
    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    return-void
.end method

.method public moveCursorBegining()V
    .locals 2

    .prologue
    .line 2142
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2143
    const-string v0, "MoveToBeginningOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2145
    return-void
.end method

.method public moveCursorEnd()V
    .locals 2

    .prologue
    .line 2148
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2149
    const-string v0, "MoveToEndOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2151
    return-void
.end method

.method public moveCursorSelectionToBeginningOfDocument()V
    .locals 2

    .prologue
    .line 2158
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2159
    const-string v0, "MoveToBeginningOfDocumentAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2161
    return-void
.end method

.method public moveCursorSelectionToBeginningOfLine()V
    .locals 2

    .prologue
    .line 2164
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2165
    const-string v0, "MoveToBeginningOfLineAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2167
    return-void
.end method

.method public moveCursorSelectionToEndOfDocument()V
    .locals 2

    .prologue
    .line 2170
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2171
    const-string v0, "MoveToEndOfDocumentAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2172
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2173
    return-void
.end method

.method public moveCursorSelectionToEndOfLine()V
    .locals 2

    .prologue
    .line 2176
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2177
    const-string v0, "MoveToRightEndOfLineAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2179
    return-void
.end method

.method public moveCursorToBeginningOfLine()V
    .locals 2

    .prologue
    .line 2182
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2183
    const-string v0, "MoveToBeginningOfLine"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2185
    return-void
.end method

.method public moveCursorToEndOfLine()V
    .locals 2

    .prologue
    .line 2188
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2189
    const-string v0, "MoveToEndOfLine"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2191
    return-void
.end method

.method public moveCursorToPageDown()V
    .locals 2

    .prologue
    .line 2194
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2195
    const-string v0, "MovePageDown"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2197
    return-void
.end method

.method public moveCursorToPageUp()V
    .locals 2

    .prologue
    .line 2200
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2201
    const-string v0, "MovePageUp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2203
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 677
    const/4 v0, 0x1

    return v0
.end method

.method public onContextMenuItem(I)Z
    .locals 8
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 316
    iput-boolean v3, p0, Landroid/webkit/WebView;->isContextMenuVisible:Z

    .line 318
    iget-boolean v4, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    if-ne v2, v4, :cond_0

    .line 319
    const-string v4, "HtmlComposerView"

    const-string/jumbo v5, "onContextMenuItem To hide Cursor handler"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    .line 323
    :cond_0
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 325
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 453
    :cond_1
    :goto_0
    return v2

    .line 329
    :sswitch_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 330
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAllSec()Z

    .line 332
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    goto :goto_0

    .line 337
    :sswitch_1
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 338
    .local v0, cursurRect:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/webkit/HtmlComposerView;->setTextSelecitonManualAtContentPoint(II)Z

    .line 339
    invoke-virtual {p0, v3}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 341
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    goto :goto_0

    .line 345
    .end local v0           #cursurRect:Landroid/graphics/Rect;
    :sswitch_2
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 346
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 347
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->cut()V

    .line 348
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 349
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 350
    const v3, 0x1020020

    sput v3, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 351
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 353
    iget-boolean v3, p0, Landroid/webkit/WebView;->isImageSelected:Z

    if-eqz v3, :cond_1

    .line 355
    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 357
    const-string v3, " image "

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 358
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 359
    iput-object v6, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    goto :goto_0

    .line 364
    :sswitch_3
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 366
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAllSec()Z

    .line 367
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 368
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->cut()V

    .line 369
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 370
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 371
    const v3, 0x1020408

    sput v3, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 373
    iget-boolean v3, p0, Landroid/webkit/WebView;->isImageSelected:Z

    if-eqz v3, :cond_1

    .line 375
    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 377
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 378
    iput-object v6, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 379
    const-string v3, " images "

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    goto/16 :goto_0

    .line 385
    :sswitch_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->saveSelection()V

    .line 386
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->copy()V

    .line 387
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->restoreSelection()V

    .line 388
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_0

    .line 395
    :sswitch_5
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->saveSelection()V

    .line 398
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAllSec()Z

    .line 400
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->copy()V

    .line 402
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->restoreSelection()V

    goto/16 :goto_0

    .line 407
    :sswitch_6
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebClipboard;->getHTMLForCheckingSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 409
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v7, 0x104064d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v7, 0x104064e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 412
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 414
    const-string v3, ""

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 417
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->paste()V

    .line 419
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 420
    const v3, 0x1020022

    sput v3, Landroid/webkit/HtmlComposerView;->operSel:I

    goto/16 :goto_0

    .line 429
    :sswitch_7
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v3, v4}, Landroid/webkit/WebClipboard;->setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 430
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebClipboard;->launchClipboardUI()V

    .line 431
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_0

    .line 435
    :sswitch_8
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 436
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->undo()V

    .line 437
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_0

    .line 441
    :sswitch_9
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->redo()V

    .line 442
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_0

    .line 446
    :sswitch_a
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 447
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    .line 448
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto/16 :goto_0

    .line 325
    nop

    :sswitch_data_0
    .sparse-switch
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_2
        0x1020021 -> :sswitch_4
        0x1020022 -> :sswitch_6
        0x1020024 -> :sswitch_a
        0x1020028 -> :sswitch_1
        0x102002e -> :sswitch_8
        0x102002f -> :sswitch_9
        0x1020408 -> :sswitch_3
        0x1020409 -> :sswitch_5
        0x102040a -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 6
    .parameter "outAttrs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 682
    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onCreateInputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    if-ne v5, v1, :cond_0

    .line 686
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 687
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "allowEmoji"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 688
    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 691
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mLastTouchMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/webkit/HtmlComposerView;->mLastTouchMode:I

    if-ne v1, v4, :cond_2

    :cond_1
    iget-boolean v1, p0, Landroid/webkit/WebView;->isSelectionset:Z

    if-nez v1, :cond_2

    .line 693
    const-string v1, "HtmlComposerView"

    const-string v2, "calling set Caret 0 0 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-virtual {p0, v3, v3}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 697
    :cond_2
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mLastTouchMode:I

    .line 700
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v1, -0x10

    or-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x4000

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 707
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 708
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 710
    iget v1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 711
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 713
    invoke-virtual {p0, v3}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 716
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    return-object v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 722
    iget-object v0, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget v0, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 723
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HtmlComposerView  --- Ondraw  -clearSelection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 724
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 725
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearSelection()V

    .line 728
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 729
    return-void
.end method

.method public onEditorAction(I)V
    .locals 3
    .parameter "actionCode"

    .prologue
    const/16 v2, 0x82

    .line 2211
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 2212
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 2213
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2214
    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2215
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2222
    .end local v0           #v:Landroid/view/View;
    :cond_0
    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 734
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 736
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 737
    if-nez p1, :cond_3

    .line 738
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mLastTouchMode:I

    .line 739
    iget-boolean v0, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    if-ne v4, v0, :cond_0

    .line 740
    const-string v0, "HtmlComposerView"

    const-string/jumbo v1, "onFocusChanged To hide Cursor handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    .line 742
    iput-boolean v3, p0, Landroid/webkit/WebView;->bSCHvisibleonFocus:Z

    .line 744
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->dismissClipboardUI()V

    .line 746
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 764
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 765
    invoke-virtual {p0, v3}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 767
    iget-boolean v0, p0, Landroid/webkit/WebView;->isContextMenuVisible:Z

    if-ne v4, v0, :cond_2

    .line 768
    iput-boolean v3, p0, Landroid/webkit/WebView;->isContextMenuVisible:Z

    .line 769
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearActionModes()V

    .line 771
    :cond_2
    return-void

    .line 748
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v0, v1}, Landroid/webkit/WebClipboard;->setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 749
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->updateClipboardUI()V

    .line 751
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    if-eqz v0, :cond_4

    .line 752
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 756
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    const-string v0, "HtmlComposerView"

    const-string/jumbo v1, "onFocus calling invokeTexttoSpeech()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->invokeTexttoSpeech(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 775
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "htmlcompor onKeyDown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    sparse-switch p1, :sswitch_data_0

    .line 794
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 785
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    goto :goto_0

    .line 789
    :sswitch_1
    const-string v0, "DeleteForward"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_0

    .line 776
    :sswitch_data_0
    .sparse-switch
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x70 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 799
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "htmlcompor onKeyUp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_2

    .line 802
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 816
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 804
    :cond_2
    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/WebView;->isImageSelected:Z

    if-eqz v0, :cond_1

    .line 806
    const-string v0, "HtmlComposerView"

    const-string v1, "HtmlComposerView  --- Calling cleaselection due to image delete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 808
    const-string v0, "image"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 809
    const-string v0, "HtmlComposerView"

    const-string v1, "HtmlComposerView  --- Calling cleaselection due to image delete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const v0, 0x1020020

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->invokeTexttoSpeech(I)V

    .line 812
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    goto :goto_0
.end method

.method public onRecieveWebviewTouchUp()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 2226
    iget-boolean v1, p0, Landroid/webkit/WebView;->isImageSelected:Z

    if-nez v1, :cond_0

    .line 2227
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2230
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const-string v1, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imm active  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->getTargetView()Landroid/webkit/HtmlComposerView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    move-object v1, p0

    move v3, v2

    move v5, v4

    .line 2233
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 2234
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2237
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 2238
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15
    .parameter "ev"

    .prologue
    .line 821
    invoke-super/range {p0 .. p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    .line 822
    .local v11, ret:Z
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContentX()I

    move-result v0

    .line 823
    .local v0, contentX:I
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContentY()I

    move-result v1

    .line 825
    .local v1, contentY:I
    const-string v12, "HtmlComposerView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MotionEvent.ACTION_DOWN  html compopser"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    iput v12, p0, Landroid/webkit/HtmlComposerView;->mLastTouchMode:I

    .line 829
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 936
    :cond_0
    :goto_0
    return v11

    .line 831
    :pswitch_0
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/webkit/WebView;->mInActionMove:Z

    .line 832
    iget-boolean v12, p0, Landroid/webkit/WebView;->isImageSelected:Z

    if-eqz v12, :cond_0

    .line 834
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/webkit/WebView;->mInActionMove:Z

    .line 835
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    float-to-int v13, v13

    invoke-direct {p0, v0, v1, v12, v13}, Landroid/webkit/HtmlComposerView;->handle_ACTION_DOWN(IIII)V

    .line 837
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->getCurrentOutlineWidth()I

    move-result v12

    iput v12, p0, Landroid/webkit/HtmlComposerView;->originalWidth:I

    .line 838
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->getCurrentOutlineHeight()I

    move-result v12

    iput v12, p0, Landroid/webkit/HtmlComposerView;->originalHeight:I

    goto :goto_0

    .line 845
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    float-to-int v4, v12

    .line 846
    .local v4, movingContentX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    float-to-int v5, v12

    .line 847
    .local v5, movingContentY:I
    iget-boolean v12, p0, Landroid/webkit/WebView;->isImageSelected:Z

    if-eqz v12, :cond_0

    .line 849
    invoke-direct {p0, v4, v5}, Landroid/webkit/HtmlComposerView;->handle_ACTION_MOVE(II)V

    .line 850
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    goto :goto_0

    .line 857
    .end local v4           #movingContentX:I
    .end local v5           #movingContentY:I
    :pswitch_2
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v12

    invoke-virtual {v12}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 858
    const-string v12, "HtmlComposerView"

    const-string/jumbo v13, "making selection set to true"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 860
    iget-boolean v12, p0, Landroid/webkit/WebView;->isContextMenuVisible:Z

    if-nez v12, :cond_0

    .line 861
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 862
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    .line 863
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 866
    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v9

    .line 868
    .local v9, rect:Landroid/graphics/Rect;
    iget v12, v9, Landroid/graphics/Rect;->left:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    iget v12, v9, Landroid/graphics/Rect;->top:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    iget-boolean v12, p0, Landroid/webkit/WebView;->isImageSelected:Z

    if-nez v12, :cond_1

    .line 870
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, " onTouchEvent. : calling   getSelectionOffsetImage ()  "

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 872
    iget-object v12, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v12}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 874
    iget-object v12, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v12, v9}, Landroid/webkit/HtmlComposerView;->initImageResizeControls(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 875
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 876
    .local v8, re:Landroid/graphics/RectF;
    iget-object v12, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    const/4 v13, 0x1

    invoke-virtual {v12, v8, v13}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 877
    const-string v12, "HtmlComposerView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "after init outline Rect path : left= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Landroid/graphics/RectF;->left:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " top= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " right= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Landroid/graphics/RectF;->right:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bottom="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 879
    .local v10, reh:Landroid/graphics/RectF;
    iget-object v12, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    const/4 v13, 0x1

    invoke-virtual {v12, v10, v13}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 880
    const-string v12, "HtmlComposerView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "after init outline Rect path : left= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Landroid/graphics/RectF;->left:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " top= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " right= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Landroid/graphics/RectF;->right:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bottom="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v12, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    iget-object v13, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-direct {p0, v9, v12, v13}, Landroid/webkit/HtmlComposerView;->getSelectionOffsetImage(Landroid/graphics/Rect;Landroid/graphics/Path;Landroid/graphics/Path;)V

    .line 884
    .end local v8           #re:Landroid/graphics/RectF;
    .end local v10           #reh:Landroid/graphics/RectF;
    :cond_1
    iget-boolean v12, p0, Landroid/webkit/WebView;->isImageSelected:Z

    if-eqz v12, :cond_0

    .line 887
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    float-to-int v6, v12

    .line 888
    .local v6, rawX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    float-to-int v7, v12

    .line 889
    .local v7, rawY:I
    invoke-direct {p0, v6, v7}, Landroid/webkit/HtmlComposerView;->handle_ACTION_UP(II)V

    .line 890
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 894
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->getCurrentOutlineWidth()I

    move-result v3

    .line 895
    .local v3, finalWidth:I
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->getCurrentOutlineHeight()I

    move-result v2

    .line 898
    .local v2, finalHeight:I
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    iget v12, p0, Landroid/webkit/HtmlComposerView;->originalWidth:I

    if-ne v12, v3, :cond_2

    iget v12, p0, Landroid/webkit/HtmlComposerView;->originalHeight:I

    if-eq v12, v2, :cond_4

    .line 901
    :cond_2
    const-string v12, "HtmlComposerView"

    const-string v13, "doResizeImage called - Image is going to resize "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-virtual {p0, v3, v2}, Landroid/webkit/HtmlComposerView;->doResizeImage(II)V

    .line 904
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/webkit/WebView;->imageCanbeResized:Z

    .line 905
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 906
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 930
    :cond_3
    :goto_1
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/webkit/WebView;->mInActionMove:Z

    goto/16 :goto_0

    .line 910
    :cond_4
    iget-boolean v12, p0, Landroid/webkit/WebView;->imageCanbeResized:Z

    if-nez v12, :cond_5

    const/4 v12, 0x1

    iget-boolean v13, p0, Landroid/webkit/WebView;->imageCanbeMoved:Z

    if-ne v12, v13, :cond_5

    .line 913
    const-string v12, "InsertHTML"

    invoke-direct {p0, v12}, Landroid/webkit/HtmlComposerView;->insertImageContent(Ljava/lang/String;)V

    .line 915
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 916
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/webkit/WebView;->imageCanbeMoved:Z

    .line 917
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/webkit/WebView;->isImageSelected:Z

    .line 918
    const/4 v12, 0x0

    iput-object v12, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 919
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/webkit/WebView;->isTouchedImage:Z

    .line 921
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearSelection()V

    goto :goto_1

    .line 924
    :cond_5
    iget v12, v9, Landroid/graphics/Rect;->left:I

    if-lt v0, v12, :cond_6

    iget v12, v9, Landroid/graphics/Rect;->right:I

    if-gt v0, v12, :cond_6

    iget v12, v9, Landroid/graphics/Rect;->top:I

    if-lt v1, v12, :cond_6

    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    if-le v1, v12, :cond_3

    .line 926
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 927
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 928
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    goto :goto_1

    .line 829
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .parameter "hasWindowFocus"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 941
    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWindowFocusChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    .line 943
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 944
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 946
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    if-eqz v1, :cond_0

    .line 947
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 950
    :cond_0
    invoke-virtual {p0, v5}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 951
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebClipboard;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 953
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v1, v2}, Landroid/webkit/WebClipboard;->setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 954
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebClipboard;->updateClipboardUI()V

    .line 957
    :cond_1
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-nez v1, :cond_2

    .line 959
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 961
    :cond_2
    if-nez p1, :cond_4

    .line 963
    iget-boolean v1, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    if-ne v5, v1, :cond_3

    .line 964
    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onWindowFocusChanged To hide Cursor handler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    .line 966
    iput-boolean v4, p0, Landroid/webkit/WebView;->bSCHvisibleonFocus:Z

    .line 979
    :cond_3
    :goto_0
    return-void

    .line 970
    :cond_4
    sget v1, Landroid/webkit/HtmlComposerView;->operSel:I

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 971
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 972
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x500

    iput v1, v0, Landroid/os/Message;->what:I

    .line 975
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$TBHandler;

    invoke-virtual {v1, v0}, Landroid/webkit/HtmlComposerView$TBHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public paste()V
    .locals 2

    .prologue
    .line 1114
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 1115
    const-string v0, "Paste"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    return-void
.end method

.method public redo()V
    .locals 2

    .prologue
    .line 1119
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1120
    const-string v0, "Redo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1122
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 1124
    return-void
.end method

.method public restoreSelection()V
    .locals 2

    .prologue
    .line 2241
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2245
    :cond_0
    :goto_0
    return-void

    .line 2243
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2244
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x214

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public saveSelection()V
    .locals 2

    .prologue
    .line 2248
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2252
    :cond_0
    :goto_0
    return-void

    .line 2250
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2251
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x215

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 1127
    const-string v0, "SelectAll"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    return-void
.end method

.method public selectedType()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 2255
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2272
    :cond_0
    :goto_0
    return v3

    .line 2257
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2259
    .local v2, selectedType:Ljava/lang/Integer;
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2260
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 2261
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2262
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x213

    invoke-virtual {v3, v4, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2265
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2270
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2272
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 2266
    :catch_0
    move-exception v0

    .line 2267
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2270
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public setCaretForEdit(Z)V
    .locals 4
    .parameter "active"

    .prologue
    const/16 v1, 0x8e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2276
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2289
    :cond_0
    :goto_0
    return-void

    .line 2278
    :cond_1
    if-eqz p1, :cond_2

    .line 2279
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2280
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0

    .line 2283
    :cond_2
    iput-boolean v2, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 2284
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2285
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2286
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x20b

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public setComposingRegion(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2292
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2308
    :goto_0
    return-void

    .line 2294
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 2295
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 2297
    .local v1, sendTwoIntObj:Landroid/graphics/Point;
    monitor-enter v1

    .line 2298
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2299
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21b

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2302
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2307
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2303
    :catch_0
    move-exception v0

    .line 2304
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized setComposingState(Z)V
    .locals 1
    .parameter "isInComposingState"

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 212
    :goto_0
    monitor-exit p0

    return-void

    .line 209
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultFontSize(I)V
    .locals 3
    .parameter "defaultFontSize"

    .prologue
    .line 2315
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2316
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    int-to-float v1, p1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 2320
    :goto_0
    return-void

    .line 2318
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    goto :goto_0
.end method

.method public setEditableSelection(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2323
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2341
    :cond_0
    :goto_0
    return-void

    .line 2325
    :cond_1
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 2327
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 2328
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 2330
    .local v1, sendTwoIntObj:Landroid/graphics/Point;
    monitor-enter v1

    .line 2331
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2332
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x1fe

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2335
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2340
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2336
    :catch_0
    move-exception v0

    .line 2337
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setEmoji(Z)V
    .locals 3
    .parameter "bIsActive"

    .prologue
    .line 2345
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " htmlcomposer setEmoji() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 2347
    return-void
.end method

.method public setImeOptions(I)V
    .locals 0
    .parameter "imeOption"

    .prologue
    .line 2350
    iput p1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 2351
    return-void
.end method

.method public setLastKeyPadState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 3112
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 3113
    return-void
.end method

.method public setMaxHtmlLength(I)V
    .locals 1
    .parameter "maxHtmlLength"

    .prologue
    .line 2363
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 2364
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 2365
    return-void
.end method

.method public setOnRichTextFormatChangedListener(Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1132
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 1133
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 2354
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 2355
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 2358
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clear()V

    .line 2359
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 2360
    return-void
.end method

.method public setWidthForCopiedImage(I)V
    .locals 1
    .parameter "viewWidth"

    .prologue
    .line 2368
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 2369
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2370
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebClipboard;->setWidthForCopiedImage(I)V

    .line 2372
    :cond_0
    return-void
.end method

.method public toggleBold()V
    .locals 2

    .prologue
    .line 1136
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1143
    :goto_0
    return-void

    .line 1139
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1140
    const-string v0, "Bold"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1142
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    goto :goto_0
.end method

.method public toggleItalic()V
    .locals 2

    .prologue
    .line 1146
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1147
    const-string v0, "Italic"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1149
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1150
    return-void
.end method

.method public toggleUnderline()V
    .locals 2

    .prologue
    .line 1153
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1160
    :goto_0
    return-void

    .line 1156
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1157
    const-string v0, "Underline"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1159
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    goto :goto_0
.end method

.method public undo()V
    .locals 2

    .prologue
    .line 1163
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 1164
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1165
    const-string v0, "Undo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1167
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1168
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 1169
    return-void
.end method

.method public undoRedoStateReset()V
    .locals 2

    .prologue
    .line 2375
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2379
    :cond_0
    :goto_0
    return-void

    .line 2377
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2378
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x211

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public updateIMSelectionToEditor(II)V
    .locals 2
    .parameter "curSelStart"
    .parameter "curSelEnd"

    .prologue
    .line 2382
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2386
    :cond_0
    :goto_0
    return-void

    .line 2384
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2385
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21a

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method
