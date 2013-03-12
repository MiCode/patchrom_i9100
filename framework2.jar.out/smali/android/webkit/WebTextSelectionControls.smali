.class public Landroid/webkit/WebTextSelectionControls;
.super Ljava/lang/Object;
.source "WebTextSelectionControls.java"


# static fields
.field static final GRANULARITY_CHARACTER:I = 0x0

.field static final GRANULARITY_IMAGE:I = 0x8

.field static final GRANULARITY_PARAGRAPH:I = 0x4

.field static final GRANULARITY_WORD:I = 0x1

.field static final HANDLE_CHAR_LEFT:I = 0x1

.field static final HANDLE_CHAR_RIGHT:I = 0x2

.field static final HANDLE_NONE:I = 0x0

.field static final HANDLE_PARA_BOTTOM:I = 0x5

.field static final HANDLE_PARA_LEFT:I = 0x3

.field static final HANDLE_PARA_RIGHT:I = 0x4

.field static final HANDLE_PARA_TOP:I = 0x6

.field private static MIN_SCALE_LEVEL:F = 0.0f

.field private static final STATE_CHECK_REVERSED:I = 0x5

.field private static final STATE_CHECK_UPSIDEDOWN:I = 0xa

.field private static final STATE_FORCE_REVERSED:I = 0x4

.field private static final STATE_FORCE_UPSIDEDOWN:I = 0x8

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_RESET_MASK:I = 0x3

.field private static final STATE_REVERSED:I = 0x1

.field private static final STATE_UPSIDEDOWN:I = 0x2

.field private static mControllerHeight:I

.field private static mControllerWidth:I


# instance fields
.field private final DEBUG:Z

.field final DRAW_HIGHLIGHT:Z

.field private final HORIZONTAL_TRANSPARENT_RATE:F

.field private final LOGTAG:Ljava/lang/String;

.field private final LOGV:Z

.field private mContext:Landroid/content/Context;

.field private mEndRect:Landroid/graphics/Rect;

.field private mHandleCrossing:Z

.field private mLeftHandleId:I

.field private mLeftHandleState:I

.field private mOrigCharHandleHeight:I

.field private mOrigCharHandleWidth:I

.field private mOrigParaHandleHeight:I

.field private mOrigParaHandleWidth:I

.field private mRect:Landroid/graphics/Rect;

.field private mRightHandleId:I

.field private mRightHandleState:I

.field private mSelectedtext:Ljava/lang/String;

.field private mSeletionCursor:Landroid/graphics/Rect;

.field private mStartRect:Landroid/graphics/Rect;

.field private mWebViewClassic:Landroid/webkit/WebViewClassic;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    const/high16 v0, 0x3f80

    sput v0, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    .line 90
    sput v1, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 91
    sput v1, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;)V
    .locals 5
    .parameter "context"
    .parameter "webviewclassic"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v2, "WebSelectionControls"

    iput-object v2, p0, Landroid/webkit/WebTextSelectionControls;->LOGTAG:Ljava/lang/String;

    .line 42
    iput-boolean v3, p0, Landroid/webkit/WebTextSelectionControls;->LOGV:Z

    .line 43
    sget v2, Landroid/webkit/DebugFlags;->DEBUG_SETTING:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Landroid/webkit/WebTextSelectionControls;->DEBUG:Z

    .line 45
    iput-boolean v3, p0, Landroid/webkit/WebTextSelectionControls;->DRAW_HIGHLIGHT:Z

    .line 80
    iput-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 83
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    .line 84
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    .line 85
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    .line 86
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    .line 93
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    .line 94
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    .line 95
    iput-boolean v3, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    .line 102
    const v2, 0x3e0f5c29

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    .line 918
    iput-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    .line 108
    iput-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 109
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 110
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 111
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 112
    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 113
    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108066a

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 118
    .local v1, SController:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108066e

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .local v0, PController:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    .line 124
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    .line 126
    :cond_0
    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    .line 128
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    .line 130
    :cond_1
    return-void

    .end local v0           #PController:Landroid/graphics/Bitmap;
    .end local v1           #SController:Landroid/graphics/Bitmap;
    :cond_2
    move v2, v3

    .line 43
    goto :goto_0
.end method

.method private DrawOutlineParagraph(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "canvas"
    .parameter "rtSelection"

    .prologue
    .line 700
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 701
    .local v0, path:Landroid/graphics/Path;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 702
    .local v6, paint:Landroid/graphics/Paint;
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 703
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 704
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 705
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 706
    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 707
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 708
    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 709
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 710
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 711
    const v1, -0xffff01

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 712
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 713
    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 714
    return-void
.end method

.method private DrawSelectionCharController(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 12
    .parameter "canvas"
    .parameter "Start"
    .parameter "End"
    .parameter "pressed"

    .prologue
    .line 722
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct {p0, p2, v7, v8}, Landroid/webkit/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v5

    .line 723
    .local v5, leftPos:Landroid/graphics/Point;
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-direct {p0, p3, v7, v8}, Landroid/webkit/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v6

    .line 727
    .local v6, rightPos:Landroid/graphics/Point;
    iget-object v7, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 728
    .local v1, SController:Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 730
    .local v0, EController:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    .line 732
    iget-object v7, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->isSelectionInEditField()Z

    move-result v3

    .line 733
    .local v3, isEditField:Z
    iget-object v7, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v7, v7, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v8, p2, Landroid/graphics/Rect;->left:I

    iget v9, p2, Landroid/graphics/Rect;->top:I

    iget v10, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v10, v10, 0x5

    iget v11, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v4

    .line 735
    .local v4, isInEditfield:Z
    if-eqz v3, :cond_0

    if-nez p4, :cond_0

    if-eqz v4, :cond_4

    :cond_0
    const/4 v2, 0x1

    .line 738
    .local v2, drawHandle:Z
    :goto_0
    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v8, v5, Landroid/graphics/Point;->y:I

    iget v9, v5, Landroid/graphics/Point;->x:I

    sget v10, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/graphics/Point;->y:I

    sget v11, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v10, v11

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 739
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 742
    iget-object v7, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v7, v7, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v8, p3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v8, v8, -0x5

    iget v9, p3, Landroid/graphics/Rect;->top:I

    iget v10, p3, Landroid/graphics/Rect;->right:I

    iget v11, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v4

    .line 744
    if-eqz v3, :cond_1

    if-nez p4, :cond_1

    if-eqz v4, :cond_5

    :cond_1
    const/4 v2, 0x1

    .line 746
    :goto_1
    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    iget v9, v6, Landroid/graphics/Point;->x:I

    sget v10, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/graphics/Point;->y:I

    sget v11, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v10, v11

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 747
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 751
    .end local v2           #drawHandle:Z
    .end local v3           #isEditField:Z
    .end local v4           #isInEditfield:Z
    :cond_2
    iget-object v7, p0, Landroid/webkit/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    if-nez v7, :cond_3

    .line 752
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/webkit/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    .line 753
    :cond_3
    return-void

    .line 735
    .restart local v3       #isEditField:Z
    .restart local v4       #isInEditfield:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 744
    .restart local v2       #drawHandle:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V
    .locals 8
    .parameter "canvas"
    .parameter "type"
    .parameter "width"
    .parameter "height"
    .parameter "X"
    .parameter "Y"

    .prologue
    .line 761
    const/4 v0, 0x0

    .line 762
    .local v0, handle:Landroid/graphics/drawable/Drawable;
    packed-switch p2, :pswitch_data_0

    .line 779
    :pswitch_0
    const-string v3, "WebSelectionControls"

    const-string v4, "DrawSelectionParaController : INVALID type."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :goto_0
    :pswitch_1
    return-void

    .line 764
    :pswitch_2
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108066e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 784
    :goto_1
    div-int/lit8 v3, p3, 0x2

    sub-int v1, p5, v3

    .line 785
    .local v1, x:I
    div-int/lit8 v3, p4, 0x2

    sub-int v2, p6, v3

    .line 788
    .local v2, y:I
    if-gez v1, :cond_2

    .line 790
    int-to-double v3, p3

    const-wide v5, 0x3fc3333333333333L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    neg-int v1, v3

    .line 795
    :cond_0
    :goto_2
    if-gez v2, :cond_3

    .line 797
    int-to-double v3, p4

    const-wide v5, 0x3fc999999999999aL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    neg-int v2, v3

    .line 802
    :cond_1
    :goto_3
    add-int v3, v1, p3

    add-int v4, v2, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 803
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 767
    .end local v1           #x:I
    .end local v2           #y:I
    :pswitch_3
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108066c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 768
    goto :goto_1

    .line 770
    :pswitch_4
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108066d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 771
    goto :goto_1

    .line 773
    :pswitch_5
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108066b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 774
    goto :goto_1

    .line 791
    .restart local v1       #x:I
    .restart local v2       #y:I
    :cond_2
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v3

    sub-int/2addr v3, p3

    if-le v1, v3, :cond_0

    .line 793
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v3

    int-to-double v4, p3

    const-wide v6, 0x3feb333333333333L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sub-int v1, v3, v4

    goto :goto_2

    .line 798
    :cond_3
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v3

    sub-int/2addr v3, p4

    if-le v2, v3, :cond_1

    .line 799
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v3

    int-to-double v4, p4

    const-wide v6, 0x3fe999999999999aL

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sub-int v2, v3, v4

    goto :goto_3

    .line 762
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private drawOutlineChar(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 7
    .parameter "canvas"
    .parameter "rtStart"
    .parameter "rtEnd"
    .parameter "pressed"

    .prologue
    .line 678
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 679
    .local v0, paint:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 680
    .local v1, rect1:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 682
    .local v2, rect2:Landroid/graphics/Rect;
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x2

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 683
    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    iget v5, p3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x2

    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 685
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 686
    const v3, -0xffff01

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 687
    if-nez p4, :cond_0

    .line 688
    const/16 v3, 0xff

    const/16 v4, 0x58

    const/16 v5, 0xa5

    const/16 v6, 0xdc

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 689
    :cond_0
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 691
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 692
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 693
    return-void
.end method

.method private getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;
    .locals 10
    .parameter "selection"
    .parameter "handleType"
    .parameter "update"

    .prologue
    const v9, 0x1080669

    const/4 v5, 0x0

    const v8, 0x3e0f5c29

    const v7, 0x3f5c28f6

    const/4 v4, 0x1

    .line 807
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 809
    .local v2, pos:Landroid/graphics/Point;
    if-ne v4, p2, :cond_5

    .line 810
    iget v3, p1, Landroid/graphics/Rect;->left:I

    sget v6, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int/2addr v3, v6

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 811
    iget v3, p1, Landroid/graphics/Rect;->top:I

    sget v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v3, v6

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 818
    :goto_0
    if-eqz p3, :cond_1

    .line 819
    if-ne v4, p2, :cond_7

    .line 820
    iget v3, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v3, v3, -0x4

    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    .line 821
    const v3, 0x108066a

    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    .line 824
    iget v3, v2, Landroid/graphics/Point;->x:I

    if-gez v3, :cond_0

    .line 825
    iget v3, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    .line 829
    :cond_0
    iget v3, v2, Landroid/graphics/Point;->y:I

    if-gez v3, :cond_1

    .line 830
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sget v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v3, v6

    iget-object v6, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v6

    if-gt v3, v6, :cond_6

    .line 831
    iget v3, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    .line 857
    :cond_1
    :goto_1
    iget v3, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_a

    move v3, v4

    :goto_2
    iget v6, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v6, v6, 0xa

    if-nez v6, :cond_b

    move v6, v4

    :goto_3
    xor-int v0, v3, v6

    .line 859
    .local v0, exclusiveUpsideDown:Z
    iget-boolean v3, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    if-eqz v3, :cond_c

    if-nez v0, :cond_c

    move v1, v4

    .line 860
    .local v1, forceUpsideDown:Z
    :goto_4
    iget-boolean v3, p0, Landroid/webkit/WebTextSelectionControls;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 861
    if-eqz v1, :cond_2

    const-string v3, "WebSelectionControls"

    const-string v5, "getCharHandlePos: forceUpsideDown is set"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_2
    if-ne v4, p2, :cond_10

    .line 866
    iget v3, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v3, v3, 0x5

    if-eqz v3, :cond_e

    .line 868
    iget v3, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_3

    if-eqz v1, :cond_d

    .line 869
    :cond_3
    iget v3, p1, Landroid/graphics/Rect;->left:I

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 870
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 871
    if-eqz p3, :cond_4

    .line 872
    const v3, 0x108066f

    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    .line 914
    :cond_4
    :goto_5
    return-object v2

    .line 814
    .end local v0           #exclusiveUpsideDown:Z
    .end local v1           #forceUpsideDown:Z
    :cond_5
    iget v3, p1, Landroid/graphics/Rect;->left:I

    sget v6, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int/2addr v3, v6

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 815
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 833
    :cond_6
    const-string v3, "WebSelectionControls"

    const-string v6, "WebViewClassic is too short. Cannot turn LEFT handle upside-down"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 837
    :cond_7
    iget v3, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v3, v3, -0x4

    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    .line 838
    const v3, 0x108066f

    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    .line 841
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sget v6, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    iget-object v6, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_8

    .line 842
    iget v3, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    .line 846
    :cond_8
    iget v3, v2, Landroid/graphics/Point;->y:I

    sget v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v3, v6

    iget-object v6, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v6

    if-le v3, v6, :cond_1

    .line 847
    iget v3, p1, Landroid/graphics/Rect;->top:I

    sget v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v3, v6

    if-ltz v3, :cond_9

    .line 848
    iget v3, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    goto/16 :goto_1

    .line 850
    :cond_9
    const-string v3, "WebSelectionControls"

    const-string v6, "WebViewClassic is too short. Cannot turn RIGHT handle upside-down"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    move v3, v5

    .line 857
    goto/16 :goto_2

    :cond_b
    move v6, v5

    goto/16 :goto_3

    .restart local v0       #exclusiveUpsideDown:Z
    :cond_c
    move v1, v5

    .line 859
    goto/16 :goto_4

    .line 876
    .restart local v1       #forceUpsideDown:Z
    :cond_d
    iget v3, p1, Landroid/graphics/Rect;->left:I

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 877
    if-eqz p3, :cond_4

    .line 878
    const v3, 0x1080670

    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    goto/16 :goto_5

    .line 882
    :cond_e
    iget v3, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_f

    if-eqz v1, :cond_4

    .line 883
    :cond_f
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 884
    if-eqz p3, :cond_4

    .line 885
    iput v9, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    goto/16 :goto_5

    .line 890
    :cond_10
    iget v3, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v3, v3, 0x5

    if-eqz v3, :cond_13

    .line 892
    iget v3, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_11

    if-eqz v1, :cond_12

    .line 893
    :cond_11
    iget v3, p1, Landroid/graphics/Rect;->left:I

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 894
    iget v3, p1, Landroid/graphics/Rect;->top:I

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 895
    if-eqz p3, :cond_4

    .line 896
    const v3, 0x108066a

    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    goto/16 :goto_5

    .line 900
    :cond_12
    iget v3, p1, Landroid/graphics/Rect;->left:I

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 901
    if-eqz p3, :cond_4

    .line 902
    iput v9, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    goto/16 :goto_5

    .line 906
    :cond_13
    iget v3, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_14

    if-eqz v1, :cond_4

    .line 907
    :cond_14
    iget v3, p1, Landroid/graphics/Rect;->top:I

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 908
    if-eqz p3, :cond_4

    .line 909
    const v3, 0x1080670

    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    goto/16 :goto_5
.end method

.method private updateHandleSize(IF)V
    .locals 4
    .parameter "granularity"
    .parameter "scale"

    .prologue
    const/high16 v3, 0x4000

    .line 654
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 655
    sget v0, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 656
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 657
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    .line 671
    :goto_0
    return-void

    .line 659
    :cond_0
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 660
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto :goto_0

    .line 663
    :cond_1
    sget v0, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    .line 664
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 665
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto :goto_0

    .line 667
    :cond_2
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 668
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto :goto_0
.end method


# virtual methods
.method DrawImageResizeMoveHandlers(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 0
    .parameter "canvas"
    .parameter "outLinePath"
    .parameter "handlesPath"

    .prologue
    .line 929
    invoke-virtual {p0, p1, p2, p3}, Landroid/webkit/WebTextSelectionControls;->drawImageCroppingControls(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V

    .line 930
    return-void
.end method

.method DrawImageSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "canvas"
    .parameter "imagetRect"

    .prologue
    .line 994
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 996
    .local v9, scalecont:I
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 997
    .local v7, paintSelected:Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 998
    const/16 v1, 0x80

    const/16 v2, 0x96

    const/16 v3, 0xcb

    const/16 v4, 0xfb

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 999
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1001
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1005
    .local v0, SelectionPath:Landroid/graphics/Path;
    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int v8, v1, v2

    .line 1006
    .local v8, right:I
    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int v6, v1, v2

    .line 1010
    .local v6, bottom:I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    int-to-float v3, v8

    int-to-float v4, v6

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1011
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 1012
    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1014
    return-void
.end method

.method DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V
    .locals 25
    .parameter "canvas"
    .parameter "copyRegion"
    .parameter "charRegion"
    .parameter "startRect"
    .parameter "endRect"
    .parameter "pressed"
    .parameter "selectionGranularity"
    .parameter "controler"
    .parameter "showController"

    .prologue
    .line 518
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v24

    .line 520
    .local v24, scalecont:I
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 521
    .local v13, paintSelected:Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 522
    const/16 v4, 0x80

    const/16 v5, 0x96

    const/16 v6, 0xcb

    const/16 v7, 0xfb

    invoke-virtual {v13, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 523
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v22

    .line 526
    .local v22, scale:F
    const/16 v23, 0x0

    .line 528
    .local v23, scaleLevel:I
    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebTextSelectionControls;->updateHandleSize(IF)V

    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v16

    .line 532
    .local v16, rectSelection:Landroid/graphics/Rect;
    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 533
    .local v18, rectStart:Landroid/graphics/Rect;
    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v0, p5

    invoke-direct {v15, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 535
    .local v15, rectEnd:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 537
    const/4 v4, 0x4

    move/from16 v0, p7

    if-ne v0, v4, :cond_2

    .line 538
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 539
    .local v14, rectContentView:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4, v14}, Landroid/webkit/WebViewClassic;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 541
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 549
    .local v17, rectSelectionView:Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 550
    .local v9, centerX:I
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    .line 553
    .local v10, centerY:I
    if-nez p6, :cond_1

    .line 554
    const/4 v6, 0x3

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 556
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    .line 557
    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 558
    const/4 v6, 0x6

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 560
    move-object/from16 v0, v16

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .line 561
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    .line 562
    const/4 v6, 0x4

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 564
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    .line 565
    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 566
    const/4 v6, 0x5

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 649
    .end local v9           #centerX:I
    .end local v10           #centerY:I
    .end local v14           #rectContentView:Landroid/graphics/Rect;
    .end local v17           #rectSelectionView:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 650
    return-void

    .line 570
    .restart local v9       #centerX:I
    .restart local v10       #centerY:I
    .restart local v14       #rectContentView:Landroid/graphics/Rect;
    .restart local v17       #rectSelectionView:Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebTextSelectionControls;->DrawOutlineParagraph(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 572
    packed-switch p8, :pswitch_data_0

    .line 594
    const-string v4, "WebSelectionControls"

    const-string v5, "Selection controler not set!!! "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :goto_1
    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p8

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    goto :goto_0

    .line 574
    :pswitch_0
    move-object/from16 v0, v16

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 575
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    .line 576
    goto :goto_1

    .line 579
    :pswitch_1
    move-object/from16 v0, v16

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .line 580
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    .line 581
    goto :goto_1

    .line 584
    :pswitch_2
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    .line 585
    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 586
    goto :goto_1

    .line 589
    :pswitch_3
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    .line 590
    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 591
    goto :goto_1

    .line 601
    .end local v9           #centerX:I
    .end local v10           #centerY:I
    .end local v14           #rectContentView:Landroid/graphics/Rect;
    .end local v17           #rectSelectionView:Landroid/graphics/Rect;
    :cond_2
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    .line 602
    .local v21, rtStart:Landroid/graphics/Rect;
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 603
    .local v20, rtMiddle:Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 607
    .local v19, rtEnd:Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 608
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v15, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 609
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v15, Landroid/graphics/Rect;->top:I

    iget v6, v15, Landroid/graphics/Rect;->right:I

    iget v7, v15, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 611
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebTextSelectionControls;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 612
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 613
    .local v11, copyPaint:Landroid/graphics/Paint;
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 614
    const/high16 v4, 0x4000

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 615
    const/high16 v4, -0x1

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 616
    const/16 v4, 0x64

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v12

    .line 618
    .local v12, copyPath:Landroid/graphics/Path;
    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 619
    invoke-virtual {v12}, Landroid/graphics/Path;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "WebSelectionControls"

    const-string v5, "Path is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 641
    .end local v11           #copyPaint:Landroid/graphics/Paint;
    .end local v12           #copyPath:Landroid/graphics/Path;
    :cond_4
    if-eqz p9, :cond_0

    .line 642
    if-eqz p6, :cond_5

    .line 643
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v15, v3}, Landroid/webkit/WebTextSelectionControls;->drawOutlineChar(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 645
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v15, v3}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionCharController(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto/16 :goto_0

    .line 572
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method SetTextSelectionData(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "text"
    .parameter "value"
    .parameter "Start"
    .parameter "End"

    .prologue
    .line 322
    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 323
    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 324
    iput-object p3, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 325
    iput-object p4, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 326
    return-void
.end method

.method public drawImageCroppingControls(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 12
    .parameter "canvas"
    .parameter "outLinePath"
    .parameter "handlesPath"

    .prologue
    .line 936
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 937
    .local v2, paint:Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 938
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 939
    const/high16 v8, 0x3f80

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 940
    const v8, -0xffff01

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 942
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 943
    .local v3, paintForHandles:Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 944
    const v8, -0xffff01

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 945
    sget-object v8, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 946
    const/high16 v8, 0x4080

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 947
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 951
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 952
    .local v4, re:Landroid/graphics/RectF;
    const/4 v8, 0x1

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 955
    const/16 v0, 0x14

    .line 956
    .local v0, delta:I
    iget v8, v4, Landroid/graphics/RectF;->left:F

    iget v9, v4, Landroid/graphics/RectF;->right:F

    iget v10, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 957
    .local v6, xcenter:I
    iget v8, v4, Landroid/graphics/RectF;->top:F

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    iget v10, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v7, v8

    .line 958
    .local v7, ycenter:I
    const/4 v1, 0x0

    .line 959
    .local v1, handle:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080635

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 960
    iget v8, v4, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v4, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    iget v10, v4, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    iget v11, v4, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 961
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 962
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080635

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 963
    iget v8, v4, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    iget v10, v4, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 964
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 965
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080635

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 966
    iget v8, v4, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    iget v10, v4, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 967
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 968
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080635

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 969
    iget v8, v4, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v4, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    iget v10, v4, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    iget v11, v4, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 970
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 972
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080635

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 973
    sub-int v8, v6, v0

    iget v9, v4, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    add-int v10, v6, v0

    iget v11, v4, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 974
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 975
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080635

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 976
    sub-int v8, v6, v0

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    add-int v10, v6, v0

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 977
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 978
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080635

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 979
    iget v8, v4, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    sub-int v9, v7, v0

    iget v10, v4, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    add-int v11, v7, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 980
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 981
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080635

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 982
    iget v8, v4, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    sub-int v9, v7, v0

    iget v10, v4, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    add-int v11, v7, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 983
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 985
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 986
    .local v5, reh:Landroid/graphics/RectF;
    const/4 v8, 0x1

    invoke-virtual {p3, v5, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 988
    return-void
.end method

.method getHandleCrossing()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    return v0
.end method

.method getHandleExtendPoint(IIILandroid/webkit/WebViewCore$SelectionCopiedData;)Landroid/graphics/Point;
    .locals 10
    .parameter "contentX"
    .parameter "contentY"
    .parameter "handleType"
    .parameter "copyInfo"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 432
    if-nez p4, :cond_1

    .line 433
    const/4 v5, 0x0

    .line 502
    :cond_0
    :goto_0
    return-object v5

    .line 436
    :cond_1
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 437
    .local v5, value:Landroid/graphics/Point;
    const/4 v0, 0x0

    .line 438
    .local v0, deltaX:I
    const/4 v1, 0x0

    .line 439
    .local v1, deltaY:I
    iget-object v6, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v6}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 441
    .local v4, selectRect:Landroid/graphics/Rect;
    iget v6, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v6, v6, 0xa

    if-nez v6, :cond_3

    move v6, v7

    :goto_1
    iget v9, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v9, v9, 0xa

    if-nez v9, :cond_4

    move v9, v7

    :goto_2
    xor-int v2, v6, v9

    .line 443
    .local v2, exclusiveUpsideDown:Z
    iget-boolean v6, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    if-eqz v6, :cond_5

    if-nez v2, :cond_5

    move v3, v7

    .line 444
    .local v3, forceUpsideDown:Z
    :goto_3
    iget-boolean v6, p0, Landroid/webkit/WebTextSelectionControls;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 445
    if-eqz v3, :cond_2

    const-string v6, "WebSelectionControls"

    const-string v8, "getHandleExtendPoint: forceUpsideDown is set"

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_2
    if-ne v7, p3, :cond_9

    .line 449
    iget v6, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v6, v6, 0xa

    if-nez v6, :cond_7

    if-nez v3, :cond_7

    .line 450
    iget-object v6, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v1, v6, p2

    .line 451
    sget v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v6, :cond_6

    .line 452
    sget v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v6, p2

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto :goto_0

    .end local v2           #exclusiveUpsideDown:Z
    .end local v3           #forceUpsideDown:Z
    :cond_3
    move v6, v8

    .line 441
    goto :goto_1

    :cond_4
    move v9, v8

    goto :goto_2

    .restart local v2       #exclusiveUpsideDown:Z
    :cond_5
    move v3, v8

    .line 443
    goto :goto_3

    .line 453
    .restart local v3       #forceUpsideDown:Z
    :cond_6
    if-lez v1, :cond_0

    sget v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v6, :cond_0

    .line 454
    iget-object v6, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 458
    :cond_7
    iget-object v6, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v6

    .line 459
    sget v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v6, :cond_8

    .line 460
    sget v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int v6, p2, v6

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 461
    :cond_8
    if-lez v1, :cond_0

    sget v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v6, :cond_0

    .line 462
    iget-object v6, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 466
    :cond_9
    const/4 v6, 0x2

    if-ne v6, p3, :cond_d

    .line 467
    iget v6, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v6, v6, 0xa

    if-nez v6, :cond_b

    if-nez v3, :cond_b

    .line 468
    iget-object v6, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v6

    .line 469
    sget v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v6, :cond_a

    .line 470
    sget v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int v6, p2, v6

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 471
    :cond_a
    if-lez v1, :cond_0

    sget v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v6, :cond_0

    .line 472
    sub-int v6, p2, v1

    add-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 476
    :cond_b
    iget-object v6, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v1, v6, p2

    .line 477
    sget v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v6, :cond_c

    .line 478
    sget v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v6, p2

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 479
    :cond_c
    if-lez v1, :cond_0

    sget v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v6, :cond_0

    .line 480
    iget-object v6, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 484
    :cond_d
    const/4 v6, 0x5

    if-eq v6, p3, :cond_e

    const/4 v6, 0x6

    if-ne v6, p3, :cond_10

    .line 485
    :cond_e
    if-lez p1, :cond_f

    iget v6, v4, Landroid/graphics/Rect;->left:I

    if-ge p1, v6, :cond_f

    .line 486
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iput v6, v5, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 487
    :cond_f
    if-lez p1, :cond_0

    iget v6, v4, Landroid/graphics/Rect;->right:I

    if-le p1, v6, :cond_0

    .line 488
    iget v6, v4, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 490
    :cond_10
    const/4 v6, 0x3

    if-eq v6, p3, :cond_11

    const/4 v6, 0x4

    if-ne v6, p3, :cond_0

    .line 491
    :cond_11
    if-lez p2, :cond_12

    iget v6, v4, Landroid/graphics/Rect;->top:I

    if-ge p2, v6, :cond_12

    .line 492
    iget v6, v4, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 493
    :cond_12
    if-lez p2, :cond_0

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    if-le p2, v6, :cond_0

    .line 494
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_0
.end method

.method getHandleHeight()I
    .locals 1

    .prologue
    .line 341
    sget v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    return v0
.end method

.method public getHandleState(I)I
    .locals 3
    .parameter "handleType"

    .prologue
    .line 172
    packed-switch p1, :pswitch_data_0

    .line 179
    const-string v0, "WebSelectionControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandleState : Unsupported handle type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 174
    :pswitch_0
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    goto :goto_0

    .line 176
    :pswitch_1
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getHandleType(IILandroid/webkit/WebViewCore$SelectionCopiedData;)I
    .locals 14
    .parameter "ptX"
    .parameter "ptY"
    .parameter "copyInfo"

    .prologue
    .line 350
    if-nez p3, :cond_0

    .line 352
    const/4 v11, 0x0

    .line 427
    :goto_0
    return v11

    .line 355
    :cond_0
    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 356
    .local v2, controllerWidth:I
    sget v1, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    .line 357
    .local v1, controllerHeight:I
    const/4 v6, 0x0

    .local v6, selectX:I
    const/4 v7, 0x0

    .line 359
    .local v7, selectY:I
    move-object/from16 v0, p3

    iget v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_5

    .line 360
    new-instance v8, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v11, v12, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 362
    .local v8, selectionCtrl:Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 363
    .local v5, selectRect:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    if-eqz v11, :cond_1

    .line 364
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v11}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 367
    :cond_1
    if-eqz v5, :cond_7

    .line 369
    div-int/lit8 v9, v2, 0x2

    .line 370
    .local v9, xRadius:I
    div-int/lit8 v10, v1, 0x2

    .line 373
    .local v10, yRadius:I
    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    div-int/lit8 v6, v11, 0x2

    .line 374
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 375
    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 376
    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 377
    const/4 v11, 0x5

    goto :goto_0

    .line 380
    :cond_2
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 381
    iget v11, v5, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    div-int/lit8 v7, v11, 0x2

    .line 382
    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 383
    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 384
    const/4 v11, 0x3

    goto :goto_0

    .line 387
    :cond_3
    iget v6, v5, Landroid/graphics/Rect;->right:I

    .line 388
    iget v11, v5, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    div-int/lit8 v7, v11, 0x2

    .line 389
    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 390
    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 391
    const/4 v11, 0x4

    goto :goto_0

    .line 394
    :cond_4
    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    div-int/lit8 v6, v11, 0x2

    .line 395
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 396
    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 397
    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 398
    const/4 v11, 0x6

    goto/16 :goto_0

    .line 401
    .end local v5           #selectRect:Landroid/graphics/Rect;
    .end local v8           #selectionCtrl:Landroid/graphics/Rect;
    .end local v9           #xRadius:I
    .end local v10           #yRadius:I
    :cond_5
    new-instance v4, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v4, v11, v12, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 405
    .local v4, rtCtrlTouchArea:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    if-eqz v11, :cond_6

    .line 406
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Landroid/webkit/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v3

    .line 407
    .local v3, pos:Landroid/graphics/Point;
    iget v11, v3, Landroid/graphics/Point;->x:I

    iget v12, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 410
    move/from16 v0, p2

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 411
    const/4 v11, 0x2

    goto/16 :goto_0

    .line 416
    .end local v3           #pos:Landroid/graphics/Point;
    :cond_6
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v11, :cond_7

    .line 417
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Landroid/webkit/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v3

    .line 418
    .restart local v3       #pos:Landroid/graphics/Point;
    iget v11, v3, Landroid/graphics/Point;->x:I

    iget v12, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 421
    move/from16 v0, p2

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 422
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 427
    .end local v3           #pos:Landroid/graphics/Point;
    .end local v4           #rtCtrlTouchArea:Landroid/graphics/Rect;
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method getHandleWidth()I
    .locals 1

    .prologue
    .line 345
    sget v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    return v0
.end method

.method getSelectionBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "rt"

    .prologue
    .line 278
    move-object v7, p1

    .line 279
    .local v7, rtSelection:Landroid/graphics/Rect;
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v9, v7, Landroid/graphics/Rect;->right:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v3

    .line 280
    .local v3, bitmapwidth:I
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    iget v10, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v2

    .line 281
    .local v2, bitmapheight:I
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v9, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewClassic;->viewToContentXf(I)F

    move-result v4

    .line 282
    .local v4, bitmapx:F
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewClassic;->viewToContentYf(I)F

    move-result v5

    .line 291
    .local v5, bitmapy:F
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v6

    .line 292
    .local v6, picture:Landroid/graphics/Picture;
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 293
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 295
    .local v1, bitmapCanvas:Landroid/graphics/Canvas;
    neg-float v8, v4

    neg-float v9, v5

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 296
    invoke-virtual {v6, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 297
    return-object v0
.end method

.method getSelectionBitmap(Landroid/graphics/Region;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "region"

    .prologue
    .line 230
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 231
    .local v3, rectContentView:Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5, v3}, Landroid/webkit/WebViewClassic;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 233
    invoke-virtual {p1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 234
    .local v4, rectSelection:Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 235
    iget-object v5, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5, v4}, Landroid/webkit/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 237
    iget-object v5, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v2

    .line 238
    .local v2, picture:Landroid/graphics/Picture;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 240
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 241
    .local v1, bitmapCanvas:Landroid/graphics/Canvas;
    iget v5, v4, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, v4, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 242
    invoke-virtual {v2, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 243
    iget-boolean v5, p0, Landroid/webkit/WebTextSelectionControls;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 244
    const-string v5, "/sdcard/selectionBitmap.jpg"

    invoke-virtual {p0, v0, v5}, Landroid/webkit/WebTextSelectionControls;->saveImageToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 246
    :cond_0
    return-object v0
.end method

.method public getSelectionCursorRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    return-object v0
.end method

.method getSelectionPicture(Landroid/graphics/Region;)Landroid/graphics/Picture;
    .locals 10
    .parameter "region"

    .prologue
    .line 250
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 251
    .local v3, rectContentView:Landroid/graphics/Rect;
    iget-object v7, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7, v3}, Landroid/webkit/WebViewClassic;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 254
    .local v4, rectSelection:Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 256
    iget-boolean v7, p0, Landroid/webkit/WebTextSelectionControls;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 257
    const-string v7, "LOGTAG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSelectionPicture: region - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/graphics/Region;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    iget-object v7, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v1

    .line 261
    .local v1, picture:Landroid/graphics/Picture;
    new-instance v6, Landroid/graphics/Picture;

    invoke-direct {v6}, Landroid/graphics/Picture;-><init>()V

    .line 262
    .local v6, visiblePicture:Landroid/graphics/Picture;
    iget-object v7, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v5

    .line 263
    .local v5, scale:F
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    .line 264
    .local v2, pictureCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 265
    invoke-virtual {v2, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 266
    iget v7, v4, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 268
    invoke-virtual {p1}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v0

    .line 269
    .local v0, path:Landroid/graphics/Path;
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 270
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 271
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 272
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 273
    invoke-virtual {v6}, Landroid/graphics/Picture;->endRecording()V

    .line 274
    return-object v6
.end method

.method public getSelectionRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionEndRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionStartRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    return-object v0
.end method

.method public saveImage(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "filepath"
    .parameter "rt"

    .prologue
    .line 206
    invoke-virtual {p0, p2}, Landroid/webkit/WebTextSelectionControls;->getSelectionBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 207
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v2, mFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 210
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 213
    :cond_0
    const/4 v3, 0x0

    .line 216
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 217
    .end local v3           #out:Ljava/io/FileOutputStream;
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 222
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v3, :cond_1

    .line 223
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 227
    :cond_1
    :goto_1
    return-void

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 218
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    goto :goto_0

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v5

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method saveImageToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 6
    .parameter "bitmap"
    .parameter "fullpath"

    .prologue
    .line 301
    if-nez p1, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .local v1, mFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 304
    :cond_2
    const/4 v2, 0x0

    .line 306
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 307
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 312
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 308
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    goto :goto_1

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method setHandleCrossing(Z)V
    .locals 0
    .parameter "crossing"

    .prologue
    .line 329
    iput-boolean p1, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    .line 330
    return-void
.end method

.method public setHandleState(II)V
    .locals 3
    .parameter "handleType"
    .parameter "state"

    .prologue
    .line 190
    packed-switch p1, :pswitch_data_0

    .line 200
    const-string v0, "WebSelectionControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHandleState : Unsupported handle type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_0
    return-void

    .line 192
    :pswitch_0
    iput p2, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    goto :goto_0

    .line 196
    :pswitch_1
    iput p2, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method toggleHandleCrossing()V
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    .line 338
    return-void

    .line 337
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
