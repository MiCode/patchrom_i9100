.class public Lcom/sec/android/glview/HoverPopupWindow;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/HoverPopupWindow$Gravity;,
        Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final BOTTOM_ITEM_HOVER_POPUP_OFFSET_Y:I = 0x0

.field static final DEBUG:Z = false

.field private static final HOVER_DETECT_TIME_MS:I = 0x12c

#the value of this static final field might be set in the static constructor
.field private static final ITEM_HOVER_POPUP_OFFSET_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ITEM_HOVER_POPUP_OFFSET_Y:I = 0x0

.field private static final POPUP_TIMEOUT_MS:I = 0x2710

.field static final TAG:Ljava/lang/String; = "HoverPopupWindow"

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2

.field private static final UI_THREAD_BUSY_TIME_MS:I = 0x7d0


# instance fields
.field private final ID_TOOLTIP_VIEW:I

.field protected final mAnchorGLView:Lcom/sec/android/glview/TwGLView;

.field private mAnchorRect:Landroid/graphics/Rect;

.field protected mAnchorView:Landroid/view/View;

.field protected mAnimationStyle:I

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

.field private mHoverView:Landroid/view/ViewGroup;

.field protected mHoveringPointX:I

.field protected mHoveringPointY:I

.field protected mIsGuideLineEnabled:Z

.field private mIsHoverPaddingEnabled:Z

.field private mIsPopupTouchable:Z

.field private mIsSPenPointChanged:Z

.field protected mIsShowMessageSent:Z

.field private mIsTryingShowPopup:Z

.field protected mListener:Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;

.field private mNeedToMeasureContentView:Z

.field private mOrientation:I

.field protected final mParentView:Landroid/view/View;

.field protected mPopup:Landroid/widget/PopupWindow;

.field protected mPopupBottomOffsetY:I

.field protected mPopupGravity:I

.field private mPopupHeight:I

.field protected mPopupOffsetX:I

.field protected mPopupOffsetY:I

.field protected mPopupPosX:I

.field protected mPopupPosY:I

.field protected mPopupType:I

.field private mPopupWidth:I

.field protected mShowPopupAlways:Z

.field private mShowPopupRunnable:Ljava/lang/Runnable;

.field protected mWindowGapX:I

.field protected mWindowGapY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const v0, 0x7f070076

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/HoverPopupWindow;->ITEM_HOVER_POPUP_OFFSET_X:I

    .line 168
    const v0, 0x7f070077

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/HoverPopupWindow;->ITEM_HOVER_POPUP_OFFSET_Y:I

    .line 169
    const v0, 0x7f070078

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/HoverPopupWindow;->BOTTOM_ITEM_HOVER_POPUP_OFFSET_Y:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "parentView"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/glview/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 3
    .parameter "parentView"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 188
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const v0, 0x7010001

    iput v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->ID_TOOLTIP_VIEW:I

    .line 75
    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    .line 121
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 123
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 125
    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentWidth:I

    .line 127
    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentHeight:I

    .line 129
    iput-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 131
    iput-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsShowMessageSent:Z

    .line 133
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 135
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 144
    iput-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 158
    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    .line 163
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    .line 189
    iput-object p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    .line 190
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorGLView:Lcom/sec/android/glview/TwGLView;

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    .line 192
    iput p2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->initInstance()V

    .line 195
    invoke-virtual {p0, p2}, Lcom/sec/android/glview/HoverPopupWindow;->setInstanceByType(I)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/sec/android/glview/TwGLView;I)V
    .locals 3
    .parameter "parentView"
    .parameter "anchorGLView"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 205
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const v0, 0x7010001

    iput v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->ID_TOOLTIP_VIEW:I

    .line 75
    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    .line 121
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 123
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 125
    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentWidth:I

    .line 127
    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentHeight:I

    .line 129
    iput-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 131
    iput-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsShowMessageSent:Z

    .line 133
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 135
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 144
    iput-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 158
    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    .line 163
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    .line 206
    iput-object p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    .line 207
    iput-object p2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorGLView:Lcom/sec/android/glview/TwGLView;

    .line 209
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorGLView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorGLView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorGLView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    iput v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    .line 214
    iput p3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->initInstance()V

    .line 217
    invoke-virtual {p0, p3}, Lcom/sec/android/glview/HoverPopupWindow;->setInstanceByType(I)V

    .line 218
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/glview/HoverPopupWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->dismissPopup()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/glview/HoverPopupWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->showPopup()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/glview/HoverPopupWindow;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 22
    .parameter "anchorRect"
    .parameter "displayFrame"
    .parameter "contentWidth"
    .parameter "contentHeight"

    .prologue
    .line 867
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 868
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 869
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mContentWidth:I

    .line 870
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mContentHeight:I

    .line 872
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v13

    .line 873
    .local v13, posX:I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v14

    .line 879
    .local v14, posY:I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v6, v0, 0xf0f

    .line 880
    .local v6, hGravity:I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v19

    const v20, 0xf0f0

    and-int v18, v19, v20

    .line 882
    .local v18, vGravity:I
    const/4 v4, 0x0

    .line 883
    .local v4, contentPosX:I
    const/4 v5, 0x0

    .line 887
    .local v5, contentPosY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0xb4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 888
    :cond_0
    move/from16 v16, p3

    .line 889
    .local v16, rotatedContentWidth:I
    move/from16 v15, p4

    .line 896
    .local v15, rotatedContentHeight:I
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v19

    if-nez v19, :cond_2

    .line 898
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v13

    .line 899
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v14

    .line 1077
    :goto_1
    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosX:I

    .line 1078
    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosY:I

    .line 1079
    return-void

    .line 891
    .end local v15           #rotatedContentHeight:I
    .end local v16           #rotatedContentWidth:I
    :cond_1
    move/from16 v16, p4

    .line 892
    .restart local v16       #rotatedContentWidth:I
    move/from16 v15, p3

    .line 893
    .restart local v15       #rotatedContentHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    sub-int v19, v19, v16

    div-int/lit8 v4, v19, 0x2

    goto :goto_0

    .line 908
    :cond_2
    move/from16 v12, v16

    .line 909
    .local v12, popupWidth:I
    move v8, v15

    .line 912
    .local v8, popupHeight:I
    sparse-switch v6, :sswitch_data_0

    .line 1002
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v13

    .line 1003
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v14

    .line 1011
    :goto_2
    sparse-switch v18, :sswitch_data_1

    .line 1071
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v13

    .line 1072
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v14

    goto :goto_1

    .line 914
    :sswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x5a

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x10e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 915
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v13

    .line 916
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v14

    .line 917
    goto :goto_2

    .line 920
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 922
    .local v2, basePos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 923
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v20

    add-int v19, v19, v20

    sub-int v13, v2, v19

    goto :goto_2

    .line 925
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 926
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v19

    add-int v13, v2, v19

    .line 928
    goto/16 :goto_2

    .line 931
    .end local v2           #basePos:I
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0xb4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 932
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    sub-int v9, v19, v20

    .line 933
    .local v9, popupLeft:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    add-int v10, v19, v20

    .line 934
    .local v10, popupRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 936
    .restart local v2       #basePos:I
    if-le v10, v2, :cond_7

    .line 937
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    sub-int v13, v2, v19

    goto/16 :goto_2

    .line 939
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 940
    if-ge v9, v2, :cond_8

    .line 941
    move v13, v2

    goto/16 :goto_2

    .line 943
    :cond_8
    move v13, v9

    goto/16 :goto_2

    .line 946
    .end local v2           #basePos:I
    .end local v9           #popupLeft:I
    .end local v10           #popupRight:I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    add-int v9, v19, v20

    .line 947
    .restart local v9       #popupLeft:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    sub-int v10, v19, v20

    .line 948
    .restart local v10       #popupRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 949
    .restart local v2       #basePos:I
    if-le v9, v2, :cond_a

    .line 950
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    sub-int v14, v2, v19

    goto/16 :goto_2

    .line 952
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 953
    if-ge v10, v2, :cond_b

    .line 954
    move v14, v2

    goto/16 :goto_2

    .line 956
    :cond_b
    move v14, v10

    .line 959
    goto/16 :goto_2

    .line 962
    .end local v2           #basePos:I
    .end local v9           #popupLeft:I
    .end local v10           #popupRight:I
    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0xb4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 963
    :cond_c
    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 964
    .restart local v9       #popupLeft:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v20, v0

    add-int v10, v19, v20

    .line 965
    .restart local v10       #popupRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 966
    .restart local v2       #basePos:I
    if-le v10, v2, :cond_d

    .line 967
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    sub-int v13, v2, v19

    goto/16 :goto_2

    .line 969
    :cond_d
    move v13, v9

    goto/16 :goto_2

    .line 971
    .end local v2           #basePos:I
    .end local v9           #popupLeft:I
    .end local v10           #popupRight:I
    :cond_e
    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    .line 972
    .restart local v9       #popupLeft:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v20, v0

    sub-int v10, v19, v20

    .line 973
    .restart local v10       #popupRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 974
    .restart local v2       #basePos:I
    if-ge v10, v2, :cond_f

    .line 975
    move v14, v2

    goto/16 :goto_2

    .line 977
    :cond_f
    move v14, v10

    .line 979
    goto/16 :goto_2

    .line 982
    .end local v2           #basePos:I
    .end local v9           #popupLeft:I
    .end local v10           #popupRight:I
    :sswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0xb4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 983
    :cond_10
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    .line 984
    .restart local v9       #popupLeft:I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->right:I

    .line 985
    .restart local v10       #popupRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 986
    .restart local v2       #basePos:I
    if-ge v9, v2, :cond_11

    .line 987
    move v13, v2

    goto/16 :goto_2

    .line 989
    :cond_11
    move v13, v9

    goto/16 :goto_2

    .line 991
    .end local v2           #basePos:I
    .end local v9           #popupLeft:I
    .end local v10           #popupRight:I
    :cond_12
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v20, v0

    add-int v9, v19, v20

    .line 992
    .restart local v9       #popupLeft:I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 993
    .restart local v10       #popupRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 994
    .restart local v2       #basePos:I
    if-le v9, v2, :cond_13

    .line 995
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v19, v0

    sub-int v14, v2, v19

    goto/16 :goto_2

    .line 997
    :cond_13
    move v14, v10

    .line 999
    goto/16 :goto_2

    .line 1013
    .end local v2           #basePos:I
    .end local v9           #popupLeft:I
    .end local v10           #popupRight:I
    :sswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v19, v0

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0xb4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 1014
    :cond_14
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 1015
    .local v11, popupTop:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v7, v19, v8

    .line 1016
    .local v7, popupBottom:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v17, v19, v8

    .line 1017
    .local v17, topAbove:I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1018
    .local v3, bottomUnder:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1019
    .restart local v2       #basePos:I
    if-le v7, v2, :cond_16

    .line 1020
    const/16 v19, 0x301

    move/from16 v0, v19

    if-ne v6, v0, :cond_15

    .line 1021
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupBottomOffsetY()I

    move-result v19

    add-int v14, v17, v19

    goto/16 :goto_1

    .line 1023
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v19

    add-int v14, v17, v19

    goto/16 :goto_1

    .line 1025
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v19

    add-int v14, v3, v19

    goto/16 :goto_1

    .line 1028
    .end local v2           #basePos:I
    .end local v3           #bottomUnder:I
    .end local v7           #popupBottom:I
    .end local v11           #popupTop:I
    .end local v17           #topAbove:I
    :cond_17
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v11, v19, v4

    .line 1029
    .restart local v11       #popupTop:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v7, v19, v12

    .line 1030
    .restart local v7       #popupBottom:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v20, v12, v4

    sub-int v17, v19, v20

    .line 1031
    .restart local v17       #topAbove:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v3, v19, v4

    .line 1032
    .restart local v3       #bottomUnder:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 1033
    .restart local v2       #basePos:I
    if-le v7, v2, :cond_18

    .line 1034
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v19

    add-int v13, v17, v19

    goto/16 :goto_1

    .line 1036
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v19

    add-int v13, v3, v19

    .line 1039
    goto/16 :goto_1

    .line 1042
    .end local v2           #basePos:I
    .end local v3           #bottomUnder:I
    .end local v7           #popupBottom:I
    .end local v11           #popupTop:I
    .end local v17           #topAbove:I
    :sswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v19, v0

    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0xb4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1c

    .line 1043
    :cond_19
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 1044
    .restart local v7       #popupBottom:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v11, v19, v8

    .line 1045
    .restart local v11       #popupTop:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v17, v19, v8

    .line 1046
    .restart local v17       #topAbove:I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1047
    .restart local v3       #bottomUnder:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 1048
    .restart local v2       #basePos:I
    if-ge v11, v2, :cond_1b

    .line 1049
    const/16 v19, 0x301

    move/from16 v0, v19

    if-ne v6, v0, :cond_1a

    .line 1050
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupBottomOffsetY()I

    move-result v19

    sub-int v14, v3, v19

    goto/16 :goto_1

    .line 1052
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v19

    sub-int v14, v3, v19

    goto/16 :goto_1

    .line 1054
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v19

    sub-int v14, v17, v19

    goto/16 :goto_1

    .line 1057
    .end local v2           #basePos:I
    .end local v3           #bottomUnder:I
    .end local v7           #popupBottom:I
    .end local v11           #popupTop:I
    .end local v17           #topAbove:I
    :cond_1c
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 1058
    .restart local v7       #popupBottom:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v11, v19, v12

    .line 1059
    .restart local v11       #popupTop:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v20, v12, v4

    sub-int v17, v19, v20

    .line 1060
    .restart local v17       #topAbove:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v3, v19, v4

    .line 1061
    .restart local v3       #bottomUnder:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 1062
    .restart local v2       #basePos:I
    if-ge v11, v2, :cond_1d

    .line 1063
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v19

    sub-int v13, v3, v19

    goto/16 :goto_1

    .line 1065
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v19

    sub-int v13, v17, v19

    .line 1068
    goto/16 :goto_1

    .line 912
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x301 -> :sswitch_0
    .end sparse-switch

    .line 1011
    :sswitch_data_1
    .sparse-switch
        0x3030 -> :sswitch_5
        0x5050 -> :sswitch_4
    .end sparse-switch
.end method

.method private dismissPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1254
    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1258
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1259
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 1260
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 1261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsShowMessageSent:Z

    .line 1263
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 1266
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1267
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1269
    :cond_2
    return-void
.end method

.method private getPopupBottomOffsetY()I
    .locals 2

    .prologue
    .line 1368
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v0

    and-int/lit16 v0, v0, 0xf0f

    const/16 v1, 0x301

    if-ne v0, v1, :cond_0

    .line 1369
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupBottomOffsetY:I

    sget v1, Lcom/sec/android/glview/HoverPopupWindow;->BOTTOM_ITEM_HOVER_POPUP_OFFSET_Y:I

    add-int/2addr v0, v1

    .line 1370
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupBottomOffsetY:I

    goto :goto_0
.end method

.method private getPopupGravity()I
    .locals 8

    .prologue
    const/16 v7, 0x301

    const/16 v6, 0xb4

    const/16 v5, 0x5a

    .line 1374
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupGravity:I

    if-nez v3, :cond_0

    .line 1375
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupGravity:I

    .line 1423
    :goto_0
    return v3

    .line 1377
    :cond_0
    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupGravity:I

    .line 1378
    .local v1, rotatedPopupGravity:I
    and-int/lit16 v0, v1, 0xf0f

    .line 1379
    .local v0, hGravity:I
    const v3, 0xf0f0

    and-int v2, v1, v3

    .line 1382
    .local v2, vGravity:I
    sparse-switch v0, :sswitch_data_0

    .line 1404
    :cond_1
    :goto_1
    sparse-switch v2, :sswitch_data_1

    .line 1423
    :cond_2
    :goto_2
    or-int v3, v0, v2

    goto :goto_0

    .line 1385
    :sswitch_0
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-eq v3, v5, :cond_3

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-ne v3, v6, :cond_1

    .line 1386
    :cond_3
    const/4 v0, 0x5

    goto :goto_1

    .line 1390
    :sswitch_1
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-eq v3, v5, :cond_4

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-ne v3, v6, :cond_1

    .line 1391
    :cond_4
    const/4 v0, 0x3

    goto :goto_1

    .line 1395
    :sswitch_2
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-eq v3, v5, :cond_5

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_1

    .line 1396
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 1406
    :sswitch_3
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-ne v3, v5, :cond_6

    if-eq v0, v7, :cond_6

    .line 1407
    const/16 v2, 0x5050

    goto :goto_2

    .line 1408
    :cond_6
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-ne v3, v6, :cond_2

    .line 1409
    const/16 v2, 0x5050

    goto :goto_2

    .line 1413
    :sswitch_4
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-ne v3, v5, :cond_7

    if-eq v0, v7, :cond_7

    .line 1414
    const/16 v2, 0x3030

    goto :goto_2

    .line 1415
    :cond_7
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-ne v3, v6, :cond_2

    .line 1416
    const/16 v2, 0x3030

    goto :goto_2

    .line 1382
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x301 -> :sswitch_2
    .end sparse-switch

    .line 1404
    :sswitch_data_1
    .sparse-switch
        0x3030 -> :sswitch_3
        0x5050 -> :sswitch_4
    .end sparse-switch
.end method

.method private getPopupOffsetX()I
    .locals 2

    .prologue
    .line 1356
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v0

    and-int/lit16 v0, v0, 0xf0f

    const/16 v1, 0x301

    if-ne v0, v1, :cond_0

    .line 1357
    sget v0, Lcom/sec/android/glview/HoverPopupWindow;->ITEM_HOVER_POPUP_OFFSET_X:I

    .line 1358
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupOffsetX:I

    goto :goto_0
.end method

.method private getPopupOffsetY()I
    .locals 2

    .prologue
    .line 1362
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v0

    and-int/lit16 v0, v0, 0xf0f

    const/16 v1, 0x301

    if-ne v0, v1, :cond_0

    .line 1363
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupOffsetY:I

    sget v1, Lcom/sec/android/glview/HoverPopupWindow;->ITEM_HOVER_POPUP_OFFSET_Y:I

    add-int/2addr v0, v1

    .line 1364
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupOffsetY:I

    goto :goto_0
.end method

.method private getStateHashCode()I
    .locals 4

    .prologue
    .line 1314
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    .line 1315
    .local v0, hashCode:I
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1317
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 1324
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 1325
    .local v1, location:[I
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1326
    const/4 v2, 0x0

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x14

    const/4 v3, 0x1

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 1329
    .end local v1           #location:[I
    :cond_0
    return v0
.end method

.method private getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 499
    :goto_0
    return-object v0

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 499
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeToolTipContentView()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const v4, 0x7010001

    .line 671
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 673
    .local v1, text:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 675
    iput-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 694
    :goto_0
    return-void

    .line 679
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v4, :cond_4

    .line 681
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 683
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 684
    const v2, 0x7f03000b

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    .line 686
    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 687
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 689
    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setHoverPopupType(I)V

    .line 690
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 692
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_4
    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private pointInValidHoverArea(FF)Z
    .locals 2
    .parameter "localX"
    .parameter "localY"

    .prologue
    .line 1297
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingRight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingTop:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingBottom:I

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

    .line 624
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    packed-switch v3, :pswitch_data_0

    .line 648
    iput-object v5, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 653
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mListener:Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;

    if-eqz v3, :cond_1

    .line 654
    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mListener:Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;

    iget-object v4, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-interface {v3, v4, p0}, Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;->onSetContentView(Landroid/view/View;Lcom/sec/android/glview/HoverPopupWindow;)Z

    .line 657
    :cond_1
    return-void

    .line 626
    :pswitch_0
    iput-object v5, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 629
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->makeToolTipContentView()V

    goto :goto_0

    .line 632
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->makeDefaultContentView()V

    goto :goto_0

    .line 635
    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 636
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentResId:I

    if-eqz v3, :cond_0

    .line 637
    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 639
    .local v1, inflater:Landroid/view/LayoutInflater;
    :try_start_0
    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentResId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 640
    .local v2, v:Landroid/view/View;
    iput-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    .end local v2           #v:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 642
    .local v0, ie:Landroid/view/InflateException;
    iput-object v5, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 624
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
    .locals 2

    .prologue
    .line 572
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHashCodeForViewState:I

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getStateHashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    .line 591
    :goto_0
    return-void

    .line 578
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/HoverPopupWindow;->showPenPointEffect(Z)V

    .line 581
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 585
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    .line 586
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->setPopupContent()V

    .line 587
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->updateHoverPopup()V

    goto :goto_0
.end method


# virtual methods
.method protected computePopupPosition(Landroid/view/View;III)V
    .locals 26
    .parameter "anchor"
    .parameter "gravity"
    .parameter "offX"
    .parameter "offY"

    .prologue
    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 859
    :goto_0
    return-void

    .line 710
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 712
    if-eqz p1, :cond_6

    move-object/from16 v8, p1

    .line 713
    .local v8, anchorView:Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    .line 716
    .local v13, displayMetrics:Landroid/util/DisplayMetrics;
    const/4 v7, 0x0

    .line 717
    .local v7, anchorRect:Landroid/graphics/Rect;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v6, v0, [I

    .line 718
    .local v6, anchorLocOnScr:[I
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v5, v0, [I

    .line 719
    .local v5, anchorLocInWindow:[I
    invoke-virtual {v8, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 720
    invoke-virtual {v8, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 721
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 722
    .local v9, anchorWidth:I
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 724
    .local v4, anchorHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorGLView:Lcom/sec/android/glview/TwGLView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorGLView:Lcom/sec/android/glview/TwGLView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v16

    .line 726
    .local v16, rect:Landroid/graphics/Rect;
    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    aput v23, v6, v22

    .line 727
    const/16 v22, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    aput v23, v6, v22

    .line 728
    const/16 v22, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    aput v23, v5, v22

    .line 729
    const/16 v22, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    aput v23, v5, v22

    .line 731
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v22, v0

    const/16 v23, 0xb4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 732
    :cond_1
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v9, v22, v23

    .line 733
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v4, v22, v23

    .line 741
    .end local v16           #rect:Landroid/graphics/Rect;
    :cond_2
    :goto_2
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 742
    .local v12, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {v8, v12}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 749
    invoke-virtual {v8}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v22

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 751
    const/16 v22, 0x0

    aget v22, v6, v22

    const/16 v23, 0x0

    aget v23, v5, v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mWindowGapX:I

    .line 752
    const/16 v22, 0x1

    aget v22, v6, v22

    const/16 v23, 0x1

    aget v23, v5, v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mWindowGapY:I

    .line 754
    new-instance v7, Landroid/graphics/Rect;

    .end local v7           #anchorRect:Landroid/graphics/Rect;
    const/16 v22, 0x0

    aget v22, v5, v22

    const/16 v23, 0x1

    aget v23, v5, v23

    const/16 v24, 0x0

    aget v24, v5, v24

    add-int v24, v24, v9

    const/16 v25, 0x1

    aget v25, v5, v25

    add-int v25, v25, v4

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 775
    .restart local v7       #anchorRect:Landroid/graphics/Rect;
    :goto_3
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    if-gez v22, :cond_4

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    if-gez v22, :cond_4

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v17

    .line 777
    .local v17, root:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .line 779
    .local v19, vlp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v21, v19

    .line 780
    check-cast v21, Landroid/view/WindowManager$LayoutParams;

    .line 781
    .local v21, wlp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v23, v0

    or-int v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x404

    move/from16 v22, v0

    if-nez v22, :cond_9

    const/4 v15, 0x1

    .line 784
    .local v15, isSystemUiVisible:Z
    :goto_4
    const/16 v18, 0x0

    .line 786
    .local v18, statusBarHeight:I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    if-eqz v15, :cond_3

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x105000a

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 790
    :cond_3
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 791
    move/from16 v0, v18

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 792
    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 793
    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    .line 798
    .end local v15           #isSystemUiVisible:Z
    .end local v17           #root:Landroid/view/View;
    .end local v18           #statusBarHeight:I
    .end local v19           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v21           #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    const/16 v22, 0x0

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 799
    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 800
    const/16 v22, 0x0

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 801
    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mWindowGapY:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v22, v0

    if-nez v22, :cond_a

    .line 810
    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    const/high16 v23, -0x8000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 812
    .local v20, widthMeasureSpec:I
    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    const/high16 v23, -0x8000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 835
    .local v14, heightMeasureSpec:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setRotation(F)V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/view/View;->measure(II)V

    .line 838
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 840
    .local v11, contentWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 842
    .local v10, contentHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    move/from16 v22, v0

    const/16 v23, 0xb4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 843
    :cond_5
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    .line 844
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupHeight:I

    .line 854
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupHeight:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 858
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v11, v10}, Lcom/sec/android/glview/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    goto/16 :goto_0

    .line 712
    .end local v4           #anchorHeight:I
    .end local v5           #anchorLocInWindow:[I
    .end local v6           #anchorLocOnScr:[I
    .end local v7           #anchorRect:Landroid/graphics/Rect;
    .end local v8           #anchorView:Landroid/view/View;
    .end local v9           #anchorWidth:I
    .end local v10           #contentHeight:I
    .end local v11           #contentWidth:I
    .end local v12           #displayFrame:Landroid/graphics/Rect;
    .end local v13           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v14           #heightMeasureSpec:I
    .end local v20           #widthMeasureSpec:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    .line 735
    .restart local v4       #anchorHeight:I
    .restart local v5       #anchorLocInWindow:[I
    .restart local v6       #anchorLocOnScr:[I
    .restart local v7       #anchorRect:Landroid/graphics/Rect;
    .restart local v8       #anchorView:Landroid/view/View;
    .restart local v9       #anchorWidth:I
    .restart local v13       #displayMetrics:Landroid/util/DisplayMetrics;
    .restart local v16       #rect:Landroid/graphics/Rect;
    :cond_7
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v4, v22, v23

    .line 736
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v9, v22, v23

    goto/16 :goto_2

    .line 759
    .end local v16           #rect:Landroid/graphics/Rect;
    .restart local v12       #displayFrame:Landroid/graphics/Rect;
    :cond_8
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mWindowGapX:I

    .line 760
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/glview/HoverPopupWindow;->mWindowGapY:I

    .line 762
    new-instance v7, Landroid/graphics/Rect;

    .end local v7           #anchorRect:Landroid/graphics/Rect;
    const/16 v22, 0x0

    aget v22, v6, v22

    const/16 v23, 0x1

    aget v23, v6, v23

    const/16 v24, 0x0

    aget v24, v6, v24

    add-int v24, v24, v9

    const/16 v25, 0x1

    aget v25, v6, v25

    add-int v25, v25, v4

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 768
    .restart local v7       #anchorRect:Landroid/graphics/Rect;
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 769
    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 770
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 771
    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 781
    .restart local v17       #root:Landroid/view/View;
    .restart local v19       #vlp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v21       #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 815
    .end local v17           #root:Landroid/view/View;
    .end local v19           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v21           #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    if-ltz v22, :cond_b

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 824
    .restart local v20       #widthMeasureSpec:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    if-ltz v22, :cond_c

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .restart local v14       #heightMeasureSpec:I
    goto/16 :goto_5

    .line 819
    .end local v14           #heightMeasureSpec:I
    .end local v20           #widthMeasureSpec:I
    :cond_b
    iget v0, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    const/high16 v23, -0x8000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .restart local v20       #widthMeasureSpec:I
    goto :goto_7

    .line 828
    :cond_c
    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    const/high16 v23, -0x8000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .restart local v14       #heightMeasureSpec:I
    goto/16 :goto_5

    .line 846
    .restart local v10       #contentHeight:I
    .restart local v11       #contentWidth:I
    :cond_d
    if-le v10, v11, :cond_e

    .line 847
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    .line 848
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupHeight:I

    goto/16 :goto_6

    .line 850
    :cond_e
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    .line 851
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupHeight:I

    goto/16 :goto_6
.end method

.method protected convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 2
    .parameter "dp"
    .parameter "displayMetrics"

    .prologue
    .line 1307
    if-nez p2, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 1310
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

    .line 600
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 602
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 603
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 604
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 605
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 606
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 607
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 1243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/HoverPopupWindow;->showPenPointEffect(Z)V

    .line 1245
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->dismissPopup()V

    .line 1246
    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mEnabled:Z

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method protected getPriorityContentText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 485
    :goto_0
    return-object v0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 485
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initInstance()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 224
    iput-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mEnabled:Z

    .line 226
    const/16 v1, 0x12c

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 228
    const/16 v1, 0x5053

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupGravity:I

    .line 229
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosX:I

    .line 230
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosY:I

    .line 231
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoveringPointX:I

    .line 232
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoveringPointY:I

    .line 233
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupOffsetX:I

    .line 234
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupOffsetY:I

    .line 235
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupBottomOffsetY:I

    .line 236
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mWindowGapX:I

    .line 237
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mWindowGapY:I

    .line 238
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingLeft:I

    .line 239
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingRight:I

    .line 240
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingTop:I

    .line 241
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingBottom:I

    .line 243
    iput-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mListener:Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;

    .line 244
    iput-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 245
    const v1, 0x103032b

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnimationStyle:I

    .line 246
    iput-boolean v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 247
    iput v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mGuideLineFadeOffset:I

    .line 248
    iput-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 249
    iput-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 250
    iput-boolean v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsSPenPointChanged:Z

    .line 251
    iput-boolean v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsPopupTouchable:Z

    .line 252
    iput-boolean v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 253
    iput-boolean v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupAlways:Z

    .line 255
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 256
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x125

    const v2, 0x10802c0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mGuideRingDrawableId:I

    .line 257
    const/16 v1, 0x124

    const v2, -0x866e57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mGuideLineColor:I

    .line 258
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 259
    return-void
.end method

.method public isHoverPopupPossible()Z
    .locals 3

    .prologue
    .line 279
    const/4 v0, 0x1

    .line 281
    .local v0, ret:Z
    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    if-nez v1, :cond_1

    .line 282
    const/4 v0, 0x0

    .line 292
    :cond_0
    :goto_0
    return v0

    .line 283
    :cond_1
    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 284
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 287
    :cond_3
    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 288
    const/4 v0, 0x0

    goto :goto_0

    .line 289
    :cond_4
    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 290
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isHoveringSettingEnabled(I)Z
    .locals 5
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 300
    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 302
    .local v0, isHoveringOn:Z
    :goto_0
    if-eqz v0, :cond_4

    .line 303
    if-ne p1, v1, :cond_2

    .line 304
    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_icon_label"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 312
    :cond_0
    :goto_1
    return v1

    .end local v0           #isHoveringOn:Z
    :cond_1
    move v0, v2

    .line 300
    goto :goto_0

    .line 306
    .restart local v0       #isHoveringOn:Z
    :cond_2
    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 307
    :cond_3
    iget-object v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_information_preview"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    :cond_4
    move v1, v2

    .line 312
    goto :goto_1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 406
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeDefaultContentView()V
    .locals 0

    .prologue
    .line 664
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->makeToolTipContentView()V

    .line 665
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    .line 1161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1162
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 1163
    .local v6, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 1165
    .local v7, y:F
    const/16 v8, 0x9

    if-ne v0, v8, :cond_3

    .line 1167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 1168
    .local v4, timeDealy:J
    const-wide/16 v8, 0x7d0

    cmp-long v8, v4, v8

    if-lez v8, :cond_0

    .line 1170
    const/4 v8, 0x1

    .line 1224
    .end local v4           #timeDealy:J
    :goto_0
    return v8

    .line 1174
    .restart local v4       #timeDealy:J
    :cond_0
    iget-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v8, :cond_1

    .line 1175
    invoke-direct {p0, v6, v7}, Lcom/sec/android/glview/HoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v1

    .line 1177
    .local v1, isPointInValidHoverArea:Z
    if-eqz v1, :cond_2

    .line 1178
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1224
    .end local v1           #isPointInValidHoverArea:Z
    .end local v4           #timeDealy:J
    :cond_1
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1180
    .restart local v1       #isPointInValidHoverArea:Z
    .restart local v4       #timeDealy:J
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    goto :goto_1

    .line 1183
    .end local v1           #isPointInValidHoverArea:Z
    .end local v4           #timeDealy:J
    :cond_3
    const/4 v8, 0x7

    if-ne v0, v8, :cond_6

    .line 1184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v2, v8

    .line 1185
    .local v2, rawX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v3, v8

    .line 1186
    .local v3, rawY:I
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/glview/HoverPopupWindow;->setHoveringPoint(II)V

    .line 1188
    iget-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v8, :cond_1

    .line 1189
    invoke-direct {p0, v6, v7}, Lcom/sec/android/glview/HoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v1

    .line 1191
    .restart local v1       #isPointInValidHoverArea:Z
    if-eqz v1, :cond_5

    iget-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-nez v8, :cond_5

    .line 1195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 1196
    .restart local v4       #timeDealy:J
    const-wide/16 v8, 0x7d0

    cmp-long v8, v4, v8

    if-lez v8, :cond_4

    .line 1198
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1199
    const/4 v8, 0x1

    goto :goto_0

    .line 1204
    :cond_4
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1206
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->show()V

    .line 1207
    const/4 v8, 0x1

    goto :goto_0

    .line 1208
    .end local v4           #timeDealy:J
    :cond_5
    if-nez v1, :cond_1

    iget-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsPopupTouchable:Z

    if-nez v8, :cond_1

    .line 1212
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 1213
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    .line 1214
    const/4 v8, 0x1

    goto :goto_0

    .line 1217
    .end local v1           #isPointInValidHoverArea:Z
    .end local v2           #rawX:I
    .end local v3           #rawY:I
    :cond_6
    const/16 v8, 0xa

    if-ne v0, v8, :cond_1

    .line 1220
    iget-boolean v8, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1221
    const/4 v8, 0x1

    goto :goto_0
.end method

.method protected postDismiss(I)V
    .locals 4
    .parameter "ms"

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/glview/HoverPopupWindow$3;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/HoverPopupWindow$3;-><init>(Lcom/sec/android/glview/HoverPopupWindow;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1236
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 444
    iput-object p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 445
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 2
    .parameter "aniStyle"

    .prologue
    .line 1150
    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnimationStyle:I

    .line 1151
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1154
    :cond_0
    return-void
.end method

.method public setContent(I)V
    .locals 1
    .parameter "resId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 351
    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentResId:I

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 353
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 361
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/HoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    return-void

    .line 361
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "lp"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 373
    iput-object p2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 375
    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 386
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mEnabled:Z

    .line 318
    return-void
.end method

.method public setHoverDetectTime(I)V
    .locals 0
    .parameter "ms"

    .prologue
    .line 416
    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 417
    return-void
.end method

.method public setHoverPaddingArea(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 421
    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingLeft:I

    .line 422
    iput p3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingRight:I

    .line 423
    iput p2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingTop:I

    .line 424
    iput p4, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingBottom:I

    .line 426
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingLeft:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingRight:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingTop:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverPaddingBottom:I

    if-eqz v0, :cond_1

    .line 428
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 430
    :cond_1
    return-void
.end method

.method public setHoverPopupListener(Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mListener:Lcom/sec/android/glview/HoverPopupWindow$HoverPopupListener;

    .line 342
    return-void
.end method

.method public setHoveringPoint(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 474
    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoveringPointX:I

    .line 475
    iput p2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoveringPointY:I

    .line 476
    return-void
.end method

.method protected setInstanceByType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 266
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 267
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 268
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupGravity:I

    .line 269
    const v0, 0x103032b

    iput v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnimationStyle:I

    .line 271
    :cond_0
    return-void
.end method

.method public setPopupGravity(I)V
    .locals 0
    .parameter "gravity"

    .prologue
    .line 453
    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupGravity:I

    .line 454
    return-void
.end method

.method public setPopupPosOffset(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 463
    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupOffsetX:I

    .line 464
    iput p2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupOffsetY:I

    .line 465
    return-void
.end method

.method public setRotation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1344
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1347
    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mOrientation:I

    .line 1349
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1350
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    .line 1353
    :cond_0
    return-void
.end method

.method public setShowPopupAlways(Z)V
    .locals 0
    .parameter "always"

    .prologue
    .line 433
    iput-boolean p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupAlways:Z

    .line 434
    return-void
.end method

.method public show()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 504
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/HoverPopupWindow;->show(I)V

    .line 505
    return-void
.end method

.method public show(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    .line 518
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    if-eq p1, v0, :cond_0

    .line 519
    iput p1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    .line 520
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/HoverPopupWindow;->setInstanceByType(I)V

    .line 524
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mEnabled:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->isHoverPopupPossible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/glview/HoverPopupWindow;->isHoveringSettingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/glview/HoverPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_3

    .line 564
    :cond_2
    :goto_0
    return-void

    .line 531
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getStateHashCode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHashCodeForViewState:I

    .line 534
    invoke-virtual {p0, v4}, Lcom/sec/android/glview/HoverPopupWindow;->showPenPointEffect(Z)V

    .line 538
    iget v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupType:I

    if-ne v0, v4, :cond_4

    .line 539
    new-instance v0, Lcom/sec/android/glview/HoverPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/HoverPopupWindow$1;-><init>(Lcom/sec/android/glview/HoverPopupWindow;)V

    iput-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 549
    :cond_4
    new-instance v0, Lcom/sec/android/glview/HoverPopupWindow$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/HoverPopupWindow$2;-><init>(Lcom/sec/android/glview/HoverPopupWindow;)V

    iput-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 559
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverDetectTimeMS:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 560
    iput-boolean v4, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsShowMessageSent:Z

    goto :goto_0
.end method

.method protected showPenPointEffect(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x1

    .line 1273
    if-ne p1, v2, :cond_1

    .line 1277
    const/16 v0, 0xa

    const/4 v1, -0x1

    :try_start_0
    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsSPenPointChanged:Z

    .line 1294
    :cond_0
    :goto_1
    return-void

    .line 1283
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsSPenPointChanged:Z

    if-ne v0, v2, :cond_0

    .line 1287
    const/4 v0, 0x1

    const/4 v1, -0x1

    :try_start_1
    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1292
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mIsSPenPointChanged:Z

    goto :goto_1

    .line 1278
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1288
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public updateHoverPopup()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1085
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mNeedToMeasureContentView:Z

    if-nez v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentWidth:I

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/glview/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 1087
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1092
    :goto_0
    return-void

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupGravity()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetX()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/glview/HoverPopupWindow;->getPopupOffsetY()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/glview/HoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow;->mParentView:Landroid/view/View;

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

    .line 1098
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/glview/HoverPopupWindow;->computePopupPosition(Landroid/view/View;III)V

    .line 1106
    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentWidth:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mContentHeight:I

    if-eqz v1, :cond_0

    .line 1111
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 1113
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1114
    .local v0, oldParent:Landroid/view/ViewParent;
    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 1115
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #oldParent:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1119
    :cond_3
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mHoverView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1121
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1127
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1128
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosY:I

    iget v4, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupWidth:I

    iget v5, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 1131
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_5

    .line 1134
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosX:I

    iget v4, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_0

    .line 1137
    :cond_5
    iget-object v1, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Lcom/sec/android/glview/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v1, p1, v5, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
