.class public Landroid/widget/HoverPopupWindow;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HoverPopupWindow$Gravity;,
        Landroid/widget/HoverPopupWindow$HoverPopupContainer;,
        Landroid/widget/HoverPopupWindow$TouchablePopupContainer;,
        Landroid/widget/HoverPopupWindow$HoverPopupListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field private static final HOVER_DETECT_TIME_MS:I = 0x12c

.field private static final MSG_DISMISS_POPUP:I = 0x2

.field private static final MSG_SHOW_POPUP:I = 0x1

.field private static final POPUP_TIMEOUT_MS:I = 0x2710

.field static final TAG:Ljava/lang/String; = "HoverPopupWindow"

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2

.field private static final UI_THREAD_BUSY_TIME_MS:I = 0x3e8


# instance fields
.field private final ID_TOOLTIP_VIEW:I

.field protected final MARGIN_FOR_HOVER_RING:I

.field private mAnchorRect:Landroid/graphics/Rect;

.field protected mAnchorView:Landroid/view/View;

.field protected mAnimationStyle:I

.field protected mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

.field private mContentHeight:I

.field protected mContentLP:Landroid/view/ViewGroup$LayoutParams;

.field protected mContentResId:I

.field protected mContentText:Ljava/lang/CharSequence;

.field protected mContentView:Landroid/view/View;

.field private mContentWidth:I

.field protected final mContext:Landroid/content/Context;

.field private mDismissPopupRunnable:Ljava/lang/Runnable;

.field private mDisplayFrame:Landroid/graphics/Rect;

.field protected mEnabled:Z

.field protected mGuideLineColor:I

.field protected mGuideLineFadeOffset:I

.field protected mGuideRingDrawableId:I

.field private mHashCodeForViewState:I

.field protected mHoverDetectTimeMS:I

.field private mHoverPaddingBottom:I

.field private mHoverPaddingLeft:I

.field private mHoverPaddingRight:I

.field private mHoverPaddingTop:I

.field protected mHoveringPointX:I

.field protected mHoveringPointY:I

.field protected mIsGuideLineEnabled:Z

.field private mIsHoverPaddingEnabled:Z

.field private mIsPopupTouchable:Z

.field private mIsSPenPointChanged:Z

.field protected mIsShowMessageSent:Z

.field private mIsTryingShowPopup:Z

.field protected mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

.field private mNeedToMeasureContentView:Z

.field protected final mParentView:Landroid/view/View;

.field protected mPopup:Landroid/widget/PopupWindow;

.field protected mPopupGravity:I

.field protected mPopupOffsetX:I

.field protected mPopupOffsetY:I

.field protected mPopupPosX:I

.field protected mPopupPosY:I

.field protected mPopupType:I

.field protected mShowPopupAlways:Z

.field private mShowPopupRunnable:Ljava/lang/Runnable;

.field protected mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

.field protected mWindowGapX:I

.field protected mWindowGapY:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "parentView"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 3
    .parameter "parentView"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 194
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const v0, 0x7010001

    iput v0, p0, Landroid/widget/HoverPopupWindow;->ID_TOOLTIP_VIEW:I

    .line 80
    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/HoverPopupWindow;->MARGIN_FOR_HOVER_RING:I

    .line 90
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 140
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 142
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 144
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    .line 146
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    .line 148
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 150
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    .line 152
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 154
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 163
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 195
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    .line 197
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 199
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->initInstance()V

    .line 200
    invoke-virtual {p0, p2}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    .line 201
    return-void
.end method

.method static synthetic access$000(Landroid/widget/HoverPopupWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->dismissPopup()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/HoverPopupWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->showPopup()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/HoverPopupWindow;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 6
    .parameter "anchorRect"
    .parameter "displayFrame"
    .parameter "contentWidth"
    .parameter "contentHeight"

    .prologue
    .line 933
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 934
    iput-object p2, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 935
    iput p3, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    .line 936
    iput p4, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    .line 938
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 939
    .local v1, posX:I
    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 945
    .local v2, posY:I
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    and-int/lit16 v0, v4, 0xf0f

    .line 946
    .local v0, hGravity:I
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    const v5, 0xf0f0

    and-int v3, v4, v5

    .line 948
    .local v3, vGravity:I
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    if-nez v4, :cond_2

    .line 950
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 951
    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 1031
    :goto_0
    iget v4, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, p3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1032
    const/4 v4, 0x0

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1035
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1036
    const/high16 v4, 0x40e0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1039
    :cond_0
    iget v4, p2, Landroid/graphics/Rect;->top:I

    if-ge v2, v4, :cond_5

    .line 1041
    const/16 v4, 0x3030

    if-ne v3, v4, :cond_4

    .line 1042
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-lt v4, p4, :cond_3

    .line 1043
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 1044
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    sub-int/2addr v2, v4

    .line 1063
    :cond_1
    :goto_1
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    .line 1064
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .line 1065
    return-void

    .line 955
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 993
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 998
    :goto_2
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    add-int/2addr v1, v4

    .line 1002
    sparse-switch v3, :sswitch_data_1

    .line 1019
    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 1024
    :goto_3
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    add-int/2addr v2, v4

    goto :goto_0

    .line 957
    :sswitch_0
    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, v4, p3

    .line 958
    goto :goto_2

    .line 961
    :sswitch_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 962
    goto :goto_2

    .line 965
    :sswitch_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int v1, v4, p3

    .line 966
    goto :goto_2

    .line 969
    :sswitch_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    div-int/lit8 v5, p3, 0x2

    sub-int v1, v4, v5

    .line 970
    goto :goto_2

    .line 973
    :sswitch_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 974
    goto :goto_2

    .line 977
    :sswitch_5
    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, p3

    .line 978
    goto :goto_2

    .line 981
    :sswitch_6
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 982
    goto :goto_2

    .line 985
    :sswitch_7
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    div-int/lit8 v5, p3, 0x2

    sub-int v1, v4, v5

    .line 986
    goto :goto_2

    .line 989
    :sswitch_8
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    div-int/lit8 v5, p3, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int v1, v4, v5

    .line 990
    goto :goto_2

    .line 1004
    :sswitch_9
    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int v2, v4, p4

    .line 1005
    goto :goto_3

    .line 1007
    :sswitch_a
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 1008
    goto :goto_3

    .line 1010
    :sswitch_b
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    div-int/lit8 v5, p4, 0x2

    sub-int v2, v4, v5

    .line 1011
    goto :goto_3

    .line 1013
    :sswitch_c
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v4, p4

    .line 1014
    goto :goto_3

    .line 1016
    :sswitch_d
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 1017
    goto :goto_3

    .line 1046
    :cond_3
    iget v2, p2, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 1049
    :cond_4
    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    .line 1051
    :cond_5
    add-int v4, v2, p4

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_1

    .line 1053
    const/16 v4, 0x5050

    if-ne v3, v4, :cond_6

    .line 1054
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-lt v4, p4, :cond_1

    .line 1055
    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int v2, v4, p4

    .line 1056
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    sub-int/2addr v2, v4

    goto/16 :goto_1

    .line 1059
    :cond_6
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto/16 :goto_1

    .line 955
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_1
        0x5 -> :sswitch_5
        0x101 -> :sswitch_7
        0x103 -> :sswitch_2
        0x105 -> :sswitch_4
        0x201 -> :sswitch_8
        0x303 -> :sswitch_0
        0x505 -> :sswitch_6
    .end sparse-switch

    .line 1002
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_b
        0x30 -> :sswitch_a
        0x50 -> :sswitch_c
        0x3030 -> :sswitch_9
        0x5050 -> :sswitch_d
    .end sparse-switch
.end method

.method private dismissPopup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1295
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1296
    :cond_0
    const-string v0, "HoverPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissPopup(), remove message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1299
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1300
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 1301
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 1302
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    .line 1308
    :cond_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 1309
    const-string v0, "HoverPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissPopup(), close popup  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1312
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1314
    :cond_2
    return-void
.end method

.method private getStateHashCode()I
    .locals 4

    .prologue
    .line 1359
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 1360
    .local v0, hashCode:I
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1362
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 1369
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 1370
    .local v1, location:[I
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1371
    const/4 v2, 0x0

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x14

    const/4 v3, 0x1

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 1374
    .end local v1           #location:[I
    :cond_0
    return v0
.end method

.method private getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 484
    :goto_0
    return-object v0

    .line 481
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 482
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 484
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeToolTipContentView()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const v4, 0x7010001

    .line 656
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 658
    .local v1, text:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 660
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 671
    :goto_0
    return-void

    .line 663
    :cond_0
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 664
    :cond_1
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 665
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x109004a

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 666
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setHoverPopupType(I)V

    .line 667
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 669
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private pointInValidHoverArea(FF)Z
    .locals 2
    .parameter "localX"
    .parameter "localY"

    .prologue
    .line 1342
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPopupContent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 609
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    packed-switch v3, :pswitch_data_0

    .line 633
    iput-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 638
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    if-eqz v3, :cond_1

    .line 639
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-interface {v3, v4, p0}, Landroid/widget/HoverPopupWindow$HoverPopupListener;->onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z

    .line 642
    :cond_1
    return-void

    .line 611
    :pswitch_0
    iput-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 614
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->makeToolTipContentView()V

    goto :goto_0

    .line 617
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->makeDefaultContentView()V

    goto :goto_0

    .line 620
    :pswitch_3
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 621
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    if-eqz v3, :cond_0

    .line 622
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 624
    .local v1, inflater:Landroid/view/LayoutInflater;
    :try_start_0
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 625
    .local v2, v:Landroid/view/View;
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 626
    .end local v2           #v:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 627
    .local v0, ie:Landroid/view/InflateException;
    iput-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 609
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPopup()V
    .locals 3

    .prologue
    .line 558
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHashCodeForViewState:I

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getStateHashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 559
    const-string v0, "HoverPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPopup() is cancelled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mHashCodeForViewState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getStateHashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 577
    :goto_0
    return-void

    .line 564
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/HoverPopupWindow;->showPenPointEffect(Z)V

    .line 567
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 571
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    .line 572
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->setPopupContent()V

    .line 573
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->updateHoverPopup()V

    .line 576
    const-string v0, "timestamp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PERF][Hovering] Displayed ( view : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected computePopupPosition(Landroid/view/View;III)V
    .locals 38
    .parameter "anchor"
    .parameter "gravity"
    .parameter "offX"
    .parameter "offY"

    .prologue
    .line 683
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 925
    :goto_0
    return-void

    .line 687
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 688
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 689
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 690
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 692
    if-eqz p1, :cond_9

    move-object/from16 v13, p1

    .line 693
    .local v13, anchorView:Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    .line 696
    .local v25, displayMetrics:Landroid/util/DisplayMetrics;
    const/4 v12, 0x0

    .line 697
    .local v12, anchorRect:Landroid/graphics/Rect;
    const/4 v4, 0x2

    new-array v11, v4, [I

    .line 698
    .local v11, anchorLocOnScr:[I
    const/4 v4, 0x2

    new-array v10, v4, [I

    .line 699
    .local v10, anchorLocInWindow:[I
    invoke-virtual {v13, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 700
    invoke-virtual {v13, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 703
    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    .line 704
    .local v24, displayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 711
    invoke-virtual {v13}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v13}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_a

    .line 713
    const/4 v4, 0x0

    aget v4, v11, v4

    const/4 v5, 0x0

    aget v5, v10, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 714
    const/4 v4, 0x1

    aget v4, v11, v4

    const/4 v5, 0x1

    aget v5, v10, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 716
    new-instance v12, Landroid/graphics/Rect;

    .end local v12           #anchorRect:Landroid/graphics/Rect;
    const/4 v4, 0x0

    aget v4, v10, v4

    const/4 v5, 0x1

    aget v5, v10, v5

    const/4 v6, 0x0

    aget v6, v10, v6

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v6, v9

    const/4 v9, 0x1

    aget v9, v10, v9

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v37

    add-int v9, v9, v37

    invoke-direct {v12, v4, v5, v6, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 737
    .restart local v12       #anchorRect:Landroid/graphics/Rect;
    :goto_2
    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_2

    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_2

    .line 738
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v32

    .line 739
    .local v32, root:Landroid/view/View;
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    .line 741
    .local v34, vlp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v34

    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_2

    move-object/from16 v36, v34

    .line 742
    check-cast v36, Landroid/view/WindowManager$LayoutParams;

    .line 743
    .local v36, wlp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v36

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move-object/from16 v0, v36

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v4, v5

    and-int/lit16 v4, v4, 0x404

    if-nez v4, :cond_b

    const/16 v28, 0x1

    .line 746
    .local v28, isSystemUiVisible:Z
    :goto_3
    const/16 v33, 0x0

    .line 748
    .local v33, statusBarHeight:I
    move-object/from16 v0, v36

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x200

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    if-eqz v28, :cond_1

    .line 749
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v33

    .line 752
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 753
    move/from16 v0, v33

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 754
    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 755
    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 760
    .end local v28           #isSystemUiVisible:Z
    .end local v32           #root:Landroid/view/View;
    .end local v33           #statusBarHeight:I
    .end local v34           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v36           #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 761
    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 762
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 763
    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 771
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    if-nez v4, :cond_c

    .line 772
    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x8000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v35

    .line 774
    .local v35, widthMeasureSpec:I
    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x8000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    .line 797
    .local v26, heightMeasureSpec:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move/from16 v0, v35

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 798
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 799
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    .line 800
    .local v23, contentWidth:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    .line 802
    .local v21, contentHeight:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 803
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 806
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-direct {v0, v12, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 812
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v30, v0

    .line 813
    .local v30, posX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v31, v0

    .line 814
    .local v31, posY:I
    const/4 v14, 0x0

    .line 815
    .local v14, canDraw:Z
    add-int v4, v31, v21

    iget v5, v12, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_3

    iget v4, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v31

    if-lt v0, v4, :cond_4

    .line 816
    :cond_3
    const/4 v14, 0x1

    .line 819
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v4, :cond_14

    if-eqz v14, :cond_14

    .line 821
    const/16 v27, 0x1

    .line 823
    .local v27, isPopupAboveHorizontal:Z
    const/high16 v4, 0x4100

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v29

    .line 827
    .local v29, marginForHoverRing:I
    iget v4, v12, Landroid/graphics/Rect;->left:I

    sub-int v4, v4, v29

    move/from16 v0, v30

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 829
    .local v15, containerLeftOnWindow:I
    add-int v4, v30, v23

    iget v5, v12, Landroid/graphics/Rect;->right:I

    add-int v5, v5, v29

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 834
    .local v20, containerRightOnWindow:I
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    move/from16 v0, v31

    if-le v0, v4, :cond_f

    .line 835
    const/16 v27, 0x0

    .line 841
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-nez v4, :cond_5

    .line 842
    new-instance v4, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 843
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setBackgroundColor(I)V

    .line 844
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    .line 848
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    .line 849
    .local v22, contentLP:Landroid/view/ViewGroup$LayoutParams;
    if-nez v22, :cond_10

    .line 850
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v23

    move/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 858
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->removeAllViews()V

    .line 861
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v4

    if-nez v4, :cond_7

    .line 862
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->addView(Landroid/view/View;)V

    .line 865
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 866
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 869
    sub-int v4, v15, v30

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v17

    .line 870
    .local v17, containerPaddingLeft:I
    add-int v4, v30, v23

    sub-int v4, v20, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v18

    .line 871
    .local v18, containerPaddingRight:I
    const/16 v19, 0x0

    .line 872
    .local v19, containerPaddingTop:I
    const/16 v16, 0x0

    .line 873
    .local v16, containerPaddingBottom:I
    if-eqz v27, :cond_11

    .line 874
    iget v4, v12, Landroid/graphics/Rect;->bottom:I

    add-int v4, v4, v29

    add-int v5, v31, v21

    sub-int v16, v4, v5

    .line 875
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    .line 882
    :goto_7
    if-eqz v27, :cond_12

    .line 883
    move/from16 v30, v15

    .line 892
    :goto_8
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    sub-int v4, v4, v30

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int v7, v4, v5

    .line 893
    .local v7, hoverPointXonContainer:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    sub-int v4, v4, v31

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    sub-int v8, v4, v5

    .line 894
    .local v8, hoverPointYonContainer:I
    if-eqz v27, :cond_13

    .line 895
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v23, 0x2

    add-int v5, v5, v17

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v21, v6

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZ)V

    .line 923
    .end local v7           #hoverPointXonContainer:I
    .end local v8           #hoverPointYonContainer:I
    .end local v15           #containerLeftOnWindow:I
    .end local v16           #containerPaddingBottom:I
    .end local v17           #containerPaddingLeft:I
    .end local v18           #containerPaddingRight:I
    .end local v19           #containerPaddingTop:I
    .end local v20           #containerRightOnWindow:I
    .end local v22           #contentLP:Landroid/view/ViewGroup$LayoutParams;
    .end local v27           #isPopupAboveHorizontal:Z
    .end local v29           #marginForHoverRing:I
    :cond_8
    :goto_9
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    .line 924
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    goto/16 :goto_0

    .line 692
    .end local v10           #anchorLocInWindow:[I
    .end local v11           #anchorLocOnScr:[I
    .end local v12           #anchorRect:Landroid/graphics/Rect;
    .end local v13           #anchorView:Landroid/view/View;
    .end local v14           #canDraw:Z
    .end local v21           #contentHeight:I
    .end local v23           #contentWidth:I
    .end local v24           #displayFrame:Landroid/graphics/Rect;
    .end local v25           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v26           #heightMeasureSpec:I
    .end local v30           #posX:I
    .end local v31           #posY:I
    .end local v35           #widthMeasureSpec:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    .line 721
    .restart local v10       #anchorLocInWindow:[I
    .restart local v11       #anchorLocOnScr:[I
    .restart local v12       #anchorRect:Landroid/graphics/Rect;
    .restart local v13       #anchorView:Landroid/view/View;
    .restart local v24       #displayFrame:Landroid/graphics/Rect;
    .restart local v25       #displayMetrics:Landroid/util/DisplayMetrics;
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 722
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 724
    new-instance v12, Landroid/graphics/Rect;

    .end local v12           #anchorRect:Landroid/graphics/Rect;
    const/4 v4, 0x0

    aget v4, v11, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    const/4 v6, 0x0

    aget v6, v11, v6

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v6, v9

    const/4 v9, 0x1

    aget v9, v11, v9

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v37

    add-int v9, v9, v37

    invoke-direct {v12, v4, v5, v6, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 730
    .restart local v12       #anchorRect:Landroid/graphics/Rect;
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 731
    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 732
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 733
    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 743
    .restart local v32       #root:Landroid/view/View;
    .restart local v34       #vlp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v36       #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_b
    const/16 v28, 0x0

    goto/16 :goto_3

    .line 777
    .end local v32           #root:Landroid/view/View;
    .end local v34           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v36           #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_d

    .line 778
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v5, 0x4000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v35

    .line 786
    .restart local v35       #widthMeasureSpec:I
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_e

    .line 787
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v5, 0x4000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    .restart local v26       #heightMeasureSpec:I
    goto/16 :goto_4

    .line 781
    .end local v26           #heightMeasureSpec:I
    .end local v35           #widthMeasureSpec:I
    :cond_d
    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x8000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v35

    .restart local v35       #widthMeasureSpec:I
    goto :goto_a

    .line 790
    :cond_e
    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x8000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    .restart local v26       #heightMeasureSpec:I
    goto/16 :goto_4

    .line 837
    .restart local v14       #canDraw:Z
    .restart local v15       #containerLeftOnWindow:I
    .restart local v20       #containerRightOnWindow:I
    .restart local v21       #contentHeight:I
    .restart local v23       #contentWidth:I
    .restart local v27       #isPopupAboveHorizontal:Z
    .restart local v29       #marginForHoverRing:I
    .restart local v30       #posX:I
    .restart local v31       #posY:I
    :cond_f
    const/16 v27, 0x1

    goto/16 :goto_5

    .line 852
    .restart local v22       #contentLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_10
    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 853
    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_6

    .line 877
    .restart local v16       #containerPaddingBottom:I
    .restart local v17       #containerPaddingLeft:I
    .restart local v18       #containerPaddingRight:I
    .restart local v19       #containerPaddingTop:I
    :cond_11
    iget v4, v12, Landroid/graphics/Rect;->top:I

    sub-int v4, v4, v29

    sub-int v19, v31, v4

    .line 878
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    goto/16 :goto_7

    .line 886
    :cond_12
    move/from16 v30, v15

    .line 887
    sub-int v31, v31, v19

    goto/16 :goto_8

    .line 899
    .restart local v7       #hoverPointXonContainer:I
    .restart local v8       #hoverPointYonContainer:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v23, 0x2

    add-int v5, v5, v17

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v19

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZ)V

    goto/16 :goto_9

    .line 906
    .end local v7           #hoverPointXonContainer:I
    .end local v8           #hoverPointYonContainer:I
    .end local v15           #containerLeftOnWindow:I
    .end local v16           #containerPaddingBottom:I
    .end local v17           #containerPaddingLeft:I
    .end local v18           #containerPaddingRight:I
    .end local v19           #containerPaddingTop:I
    .end local v20           #containerRightOnWindow:I
    .end local v22           #contentLP:Landroid/view/ViewGroup$LayoutParams;
    .end local v27           #isPopupAboveHorizontal:Z
    .end local v29           #marginForHoverRing:I
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v4, :cond_17

    .line 907
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-nez v4, :cond_15

    .line 908
    new-instance v4, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    .line 910
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->getChildCount()I

    move-result v4

    if-nez v4, :cond_16

    .line 911
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    goto/16 :goto_9

    .line 912
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 913
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->removeAllViews()V

    .line 914
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    goto/16 :goto_9

    .line 916
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_8

    .line 918
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->removeAllViews()V

    .line 919
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    goto/16 :goto_9
.end method

.method protected convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 2
    .parameter "dp"
    .parameter "displayMetrics"

    .prologue
    .line 1352
    if-nez p2, :cond_0

    .line 1353
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 1355
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected createPopupWindow()Landroid/widget/PopupWindow;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 586
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 587
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 588
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 589
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 590
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 591
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 592
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 593
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 594
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 596
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 1284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HoverPopupWindow;->showPenPointEffect(Z)V

    .line 1286
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->dismissPopup()V

    .line 1287
    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 307
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method protected getPriorityContentText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 470
    :goto_0
    return-object v0

    .line 467
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 470
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initInstance()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 207
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 208
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    .line 209
    const/16 v1, 0x12c

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 211
    const/16 v1, 0x3031

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 212
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    .line 213
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .line 214
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    .line 215
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    .line 216
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 217
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 218
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 219
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 220
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    .line 221
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    .line 222
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    .line 223
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    .line 225
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .line 226
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 228
    const v1, 0x103032b

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 229
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 230
    iput v2, p0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    .line 231
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 232
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 233
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    .line 234
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 235
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    .line 236
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    .line 237
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 238
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mShowPopupAlways:Z

    .line 240
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 241
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x125

    const v2, 0x10802c0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    .line 242
    const/16 v1, 0x124

    const v2, -0x866e57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    .line 243
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 244
    return-void
.end method

.method public isHoverPopupPossible()Z
    .locals 3

    .prologue
    .line 264
    const/4 v0, 0x1

    .line 266
    .local v0, ret:Z
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-nez v1, :cond_1

    .line 267
    const/4 v0, 0x0

    .line 277
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 269
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 272
    :cond_3
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 273
    const/4 v0, 0x0

    goto :goto_0

    .line 274
    :cond_4
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 275
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isHoveringSettingEnabled(I)Z
    .locals 5
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 285
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 287
    .local v0, isHoveringOn:Z
    :goto_0
    if-eqz v0, :cond_4

    .line 288
    if-ne p1, v1, :cond_2

    .line 289
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_icon_label"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 297
    :cond_0
    :goto_1
    return v1

    .end local v0           #isHoveringOn:Z
    :cond_1
    move v0, v2

    .line 285
    goto :goto_0

    .line 291
    .restart local v0       #isHoveringOn:Z
    :cond_2
    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 292
    :cond_3
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_information_preview"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    :cond_4
    move v1, v2

    .line 297
    goto :goto_1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 391
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeDefaultContentView()V
    .locals 0

    .prologue
    .line 649
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->makeToolTipContentView()V

    .line 650
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 1191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1192
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 1193
    .local v8, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 1195
    .local v9, y:F
    const/16 v10, 0x9

    if-ne v0, v10, :cond_3

    .line 1197
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    sub-long v6, v10, v12

    .line 1198
    .local v6, timeDealy:J
    const-wide/16 v10, 0x3e8

    cmp-long v10, v6, v10

    if-lez v10, :cond_0

    .line 1199
    const-string v10, "HoverPopupWindow"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not show HoverPopup because UI thread seems busy.1  event delay : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const/4 v10, 0x1

    .line 1265
    .end local v6           #timeDealy:J
    :goto_0
    return v10

    .line 1204
    .restart local v6       #timeDealy:J
    :cond_0
    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v10, :cond_1

    .line 1205
    invoke-direct {p0, v8, v9}, Landroid/widget/HoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v2

    .line 1207
    .local v2, isPointInValidHoverArea:Z
    if-eqz v2, :cond_2

    .line 1208
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1265
    .end local v2           #isPointInValidHoverArea:Z
    .end local v6           #timeDealy:J
    :cond_1
    :goto_1
    const/4 v10, 0x0

    goto :goto_0

    .line 1210
    .restart local v2       #isPointInValidHoverArea:Z
    .restart local v6       #timeDealy:J
    :cond_2
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    goto :goto_1

    .line 1213
    .end local v2           #isPointInValidHoverArea:Z
    .end local v6           #timeDealy:J
    :cond_3
    const/4 v10, 0x7

    if-ne v0, v10, :cond_7

    .line 1214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v4, v10

    .line 1215
    .local v4, rawX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v5, v10

    .line 1216
    .local v5, rawY:I
    invoke-virtual {p0, v4, v5}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    .line 1218
    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v10, :cond_6

    .line 1219
    invoke-direct {p0, v8, v9}, Landroid/widget/HoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v2

    .line 1221
    .restart local v2       #isPointInValidHoverArea:Z
    if-eqz v2, :cond_5

    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-nez v10, :cond_5

    .line 1225
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    sub-long v6, v10, v12

    .line 1226
    .restart local v6       #timeDealy:J
    const-wide/16 v10, 0x3e8

    cmp-long v10, v6, v10

    if-lez v10, :cond_4

    .line 1227
    const-string v10, "HoverPopupWindow"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not show HoverPopup because UI thread seems busy.2  event delay : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1229
    const/4 v10, 0x1

    goto :goto_0

    .line 1234
    :cond_4
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1235
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->show()V

    .line 1236
    const/4 v10, 0x1

    goto :goto_0

    .line 1237
    .end local v6           #timeDealy:J
    :cond_5
    if-nez v2, :cond_6

    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v10, :cond_6

    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-nez v10, :cond_6

    .line 1241
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1242
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 1243
    const/4 v10, 0x1

    goto :goto_0

    .line 1248
    .end local v2           #isPointInValidHoverArea:Z
    :cond_6
    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1249
    iget-object v10, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    .line 1250
    .local v3, popupView:Landroid/view/View;
    instance-of v10, v3, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v10, :cond_1

    move-object v1, v3

    .line 1251
    check-cast v1, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 1252
    .local v1, containerView:Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    iget v10, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    sub-int v10, v4, v10

    iget v11, p0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    sub-int v11, v5, v11

    iget v12, p0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    sub-int/2addr v11, v12

    invoke-virtual {v1, v10, v11}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    .line 1255
    invoke-virtual {v1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    goto/16 :goto_1

    .line 1258
    .end local v1           #containerView:Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .end local v3           #popupView:Landroid/view/View;
    .end local v4           #rawX:I
    .end local v5           #rawY:I
    :cond_7
    const/16 v10, 0xa

    if-ne v0, v10, :cond_1

    .line 1261
    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1262
    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.method protected postDismiss(I)V
    .locals 4
    .parameter "ms"

    .prologue
    .line 1270
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    new-instance v1, Landroid/widget/HoverPopupWindow$3;

    invoke-direct {v1, p0}, Landroid/widget/HoverPopupWindow$3;-><init>(Landroid/widget/HoverPopupWindow;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1277
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 429
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 430
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 2
    .parameter "aniStyle"

    .prologue
    .line 1141
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 1142
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1145
    :cond_0
    return-void
.end method

.method public setContent(I)V
    .locals 1
    .parameter "resId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 336
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 338
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 346
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "lp"

    .prologue
    .line 357
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 358
    iput-object p2, p0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 360
    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 369
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 371
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 302
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    .line 303
    return-void
.end method

.method public setGuideLineEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1165
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 1166
    return-void
.end method

.method public setGuideLineFadeOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 1175
    int-to-float v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    .line 1176
    return-void
.end method

.method public setGuideLineStyle(II)V
    .locals 0
    .parameter "ringDrawable"
    .parameter "lineColor"

    .prologue
    .line 1182
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    .line 1183
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    .line 1184
    return-void
.end method

.method public setHoverDetectTime(I)V
    .locals 0
    .parameter "ms"

    .prologue
    .line 401
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 402
    return-void
.end method

.method public setHoverPaddingArea(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 406
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    .line 407
    iput p3, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    .line 408
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    .line 409
    iput p4, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    .line 411
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    if-eqz v0, :cond_1

    .line 413
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 415
    :cond_1
    return-void
.end method

.method public setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 326
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .line 327
    return-void
.end method

.method public setHoveringPoint(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 459
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    .line 460
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    .line 461
    return-void
.end method

.method protected setInstanceByType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 251
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 252
    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 253
    const/16 v0, 0x3133

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 254
    const v0, 0x103032b

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 256
    :cond_0
    return-void
.end method

.method public setPopupGravity(I)V
    .locals 0
    .parameter "gravity"

    .prologue
    .line 438
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 439
    return-void
.end method

.method public setPopupPosOffset(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 448
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 449
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 450
    return-void
.end method

.method public setShowPopupAlways(Z)V
    .locals 0
    .parameter "always"

    .prologue
    .line 418
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mShowPopupAlways:Z

    .line 419
    return-void
.end method

.method public setTouchablePopup(Z)V
    .locals 2
    .parameter "isTouchable"

    .prologue
    .line 1153
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    .line 1154
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1157
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 489
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    invoke-virtual {p0, v0}, Landroid/widget/HoverPopupWindow;->show(I)V

    .line 490
    return-void
.end method

.method public show(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    .line 501
    const-string v0, "timestamp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PERF][Hovering] Focused ( view : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-eq p1, v0, :cond_0

    .line 504
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 505
    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    .line 509
    :cond_0
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isHoverPopupPossible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->isHoveringSettingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_3

    .line 550
    :cond_2
    :goto_0
    return-void

    .line 516
    :cond_3
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getStateHashCode()I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mHashCodeForViewState:I

    .line 519
    invoke-virtual {p0, v4}, Landroid/widget/HoverPopupWindow;->showPenPointEffect(Z)V

    .line 523
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-ne v0, v4, :cond_4

    .line 524
    new-instance v0, Landroid/widget/HoverPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/HoverPopupWindow$1;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 531
    :cond_4
    new-instance v0, Landroid/widget/HoverPopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/HoverPopupWindow$2;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 540
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 541
    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    goto :goto_0
.end method

.method protected showPenPointEffect(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/4 v3, 0x1

    .line 1318
    if-ne p1, v3, :cond_1

    .line 1322
    const/16 v1, 0xa

    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    :goto_0
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    .line 1339
    :cond_0
    :goto_1
    return-void

    .line 1323
    :catch_0
    move-exception v0

    .line 1324
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "HoverPopupWindow"

    const-string v2, "Failed to change Pen Point to HOVERING_SPENICON_MORE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1328
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    if-ne v1, v3, :cond_0

    .line 1332
    const/4 v1, 0x1

    const/4 v2, -0x1

    :try_start_1
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1337
    :goto_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    goto :goto_1

    .line 1333
    :catch_1
    move-exception v0

    .line 1334
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v1, "HoverPopupWindow"

    const-string v2, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public updateHoverPopup()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1071
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    if-nez v0, :cond_0

    .line 1072
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 1073
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1077
    :goto_0
    return-void

    .line 1075
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    :goto_1
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_1
.end method

.method public updateHoverPopup(Landroid/view/View;III)V
    .locals 6
    .parameter "anchor"
    .parameter "gravity"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    const/4 v5, 0x0

    .line 1083
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1132
    :goto_0
    return-void

    .line 1089
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/HoverPopupWindow;->computePopupPosition(Landroid/view/View;III)V

    .line 1091
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    if-nez v1, :cond_1

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    if-nez v1, :cond_1

    .line 1092
    const-string v1, "HoverPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHoverPopup(), returns dueto content size 0   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1097
    :cond_1
    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-eqz v1, :cond_2

    .line 1098
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1113
    :goto_1
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1114
    const-string v1, "HoverPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHoverPopup(), returns dueto mPopup.getContentView()==null   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1099
    :cond_2
    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v1, :cond_3

    .line 1100
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 1102
    :cond_3
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 1104
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1105
    .local v0, oldParent:Landroid/view/ViewParent;
    if-eqz v0, :cond_4

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 1106
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #oldParent:Landroid/view/ViewParent;
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1110
    :cond_4
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 1119
    :cond_5
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1120
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    iget v4, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    iget v5, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0

    .line 1123
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_7

    .line 1124
    const-string v1, "HoverPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent view may be on sub-panel window, popup will be attached with Application Token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v4, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto/16 :goto_0

    .line 1129
    :cond_7
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v1, p1, v5, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method
