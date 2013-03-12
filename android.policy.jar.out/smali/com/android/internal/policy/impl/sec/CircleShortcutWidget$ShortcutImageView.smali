.class Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;
.super Landroid/widget/ImageView;
.source "CircleShortcutWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortcutImageView"
.end annotation


# instance fields
.field private mBadgeCount:I

.field private mBoundsRect:Landroid/graphics/Rect;

.field private mDistanceRatio:D

.field private mIsPressed:Z

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1004
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 995
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mIsPressed:Z

    .line 996
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    .line 999
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mBadgeCount:I

    .line 1001
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    .line 1005
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1006
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1009
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1010
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1012
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1015
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 995
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mIsPressed:Z

    .line 996
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    .line 999
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mBadgeCount:I

    .line 1001
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    .line 1016
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1019
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    .line 1020
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1021
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$1900()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1022
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1023
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1024
    return-void
.end method


# virtual methods
.method public createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 24
    .parameter "badgeCount"

    .prologue
    .line 1129
    if-nez p1, :cond_0

    const/16 v20, 0x0

    .line 1179
    :goto_0
    return-object v20

    .line 1131
    :cond_0
    const/16 v19, 0x0

    .line 1132
    .local v19, width:I
    const/4 v12, 0x0

    .line 1134
    .local v12, height:I
    const/16 v20, 0x64

    move/from16 v0, p1

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$3000()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1140
    :goto_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$3100()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 1141
    .local v14, iwidth:I
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$3100()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 1142
    .local v13, iheight:I
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$3100()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    .line 1144
    .local v16, paddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    .line 1145
    .local v18, paddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    .line 1146
    .local v15, paddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    .line 1147
    .local v17, paddingRight:I
    sub-int v20, v14, v16

    sub-int v11, v20, v17

    .line 1148
    .local v11, defaultContentsWidth:I
    sub-int v20, v13, v18

    sub-int v10, v20, v15

    .line 1151
    .local v10, defaultContentsHeight:I
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1152
    .local v5, badgeText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mBoundsRect:Landroid/graphics/Rect;

    .line 1153
    .local v6, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1155
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 1156
    .local v9, contentsWidth:I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 1157
    .local v8, contentsHeight:I
    if-ge v9, v10, :cond_3

    .line 1158
    move v9, v11

    .line 1163
    :goto_2
    if-ge v8, v10, :cond_1

    .line 1164
    move v8, v10

    .line 1167
    :cond_1
    add-int v20, v9, v16

    add-int v19, v20, v17

    .line 1168
    add-int v20, v8, v18

    add-int v12, v20, v15

    .line 1170
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1171
    .local v4, b:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1173
    .local v7, c:Landroid/graphics/Canvas;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$3100()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1174
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$3100()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1176
    div-int/lit8 v20, v19, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-int/lit8 v21, v12, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->ascent()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->descent()F

    move-result v23

    add-float v22, v22, v23

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    sub-float v21, v21, v22

    const/high16 v22, 0x3f80

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v7, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1179
    new-instance v20, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1137
    .end local v4           #b:Landroid/graphics/Bitmap;
    .end local v5           #badgeText:Ljava/lang/String;
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v7           #c:Landroid/graphics/Canvas;
    .end local v8           #contentsHeight:I
    .end local v9           #contentsWidth:I
    .end local v10           #defaultContentsHeight:I
    .end local v11           #defaultContentsWidth:I
    .end local v13           #iheight:I
    .end local v14           #iwidth:I
    .end local v15           #paddingBottom:I
    .end local v16           #paddingLeft:I
    .end local v17           #paddingRight:I
    .end local v18           #paddingTop:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$1900()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_1

    .line 1160
    .restart local v5       #badgeText:Ljava/lang/String;
    .restart local v6       #bounds:Landroid/graphics/Rect;
    .restart local v8       #contentsHeight:I
    .restart local v9       #contentsWidth:I
    .restart local v10       #defaultContentsHeight:I
    .restart local v11       #defaultContentsWidth:I
    .restart local v13       #iheight:I
    .restart local v14       #iwidth:I
    .restart local v15       #paddingBottom:I
    .restart local v16       #paddingLeft:I
    .restart local v17       #paddingRight:I
    .restart local v18       #paddingTop:I
    :cond_3
    add-int/lit8 v9, v9, 0xa

    goto/16 :goto_2
.end method

.method public getBadgeCount()I
    .locals 1

    .prologue
    .line 1124
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mBadgeCount:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 1028
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1031
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mBadgeCount:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1032
    .local v6, overlay:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1033
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1034
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->getPaddingTop()I

    move-result v11

    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2000()I

    move-result v12

    add-int v9, v11, v12

    .line 1035
    .local v9, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->getWidth()I

    move-result v10

    .line 1036
    .local v10, viewWidth:I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 1037
    .local v7, overlayWidth:I
    div-int/lit8 v11, v10, 0x2

    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2100()I

    move-result v12

    add-int v4, v11, v12

    .line 1039
    .local v4, left:I
    add-int v11, v4, v7

    if-le v11, v10, :cond_0

    .line 1040
    add-int v11, v4, v7

    sub-int/2addr v11, v10

    sub-int/2addr v4, v11

    .line 1043
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->getScrollX()I

    move-result v11

    add-int/2addr v4, v11

    .line 1044
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    add-int/2addr v12, v9

    invoke-virtual {v6, v4, v9, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1046
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1049
    .end local v4           #left:I
    .end local v7           #overlayWidth:I
    .end local v9           #top:I
    .end local v10           #viewWidth:I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mIsPressed:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 1052
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2300()Landroid/graphics/Paint;

    move-result-object v11

    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2200()Landroid/graphics/MaskFilter;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1053
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2300()Landroid/graphics/Paint;

    move-result-object v11

    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2400()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1055
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_3

    .line 1056
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2500()Landroid/graphics/Paint;

    move-result-object v11

    const/16 v12, 0xff

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1057
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2300()Landroid/graphics/Paint;

    move-result-object v11

    const/16 v12, 0xff

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1081
    :goto_0
    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1082
    new-instance v11, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v12, 0x4

    const/4 v13, 0x2

    invoke-direct {v11, v12, v13}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 1086
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 1087
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1090
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v8, 0x2

    .line 1093
    .local v8, padding:I
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2600()I

    move-result v11

    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2700()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v5, v11, 0x2

    .line 1096
    .local v5, outerPadding:I
    const/4 v11, 0x0

    new-instance v12, Landroid/graphics/Rect;

    add-int v13, v8, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->getWidth()I

    move-result v14

    sub-int/2addr v14, v8

    sub-int/2addr v14, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->getHeight()I

    move-result v15

    sub-int/2addr v15, v8

    invoke-direct {v12, v13, v8, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2500()Landroid/graphics/Paint;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1098
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2800()Landroid/graphics/Paint;

    move-result-object v11

    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2900()[I

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1099
    .local v3, glow:Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    new-instance v12, Landroid/graphics/Rect;

    neg-int v13, v8

    add-int/2addr v13, v5

    neg-int v14, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->getWidth()I

    move-result v15

    add-int/2addr v15, v8

    sub-int/2addr v15, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->getHeight()I

    move-result v16

    add-int v16, v16, v8

    invoke-direct/range {v12 .. v16}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2300()Landroid/graphics/Paint;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1102
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1105
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #glow:Landroid/graphics/Bitmap;
    .end local v5           #outerPadding:I
    .end local v8           #padding:I
    :cond_2
    return-void

    .line 1058
    :cond_3
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-lez v11, :cond_4

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    const-wide v13, 0x3fe999999999999aL

    cmpg-double v11, v11, v13

    if-gez v11, :cond_4

    .line 1061
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2500()Landroid/graphics/Paint;

    move-result-object v11

    const-wide/high16 v12, 0x4040

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    mul-double/2addr v12, v14

    const-wide v14, 0x3fb999999999999aL

    div-double/2addr v12, v14

    double-to-int v12, v12

    rsub-int v12, v12, 0xff

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1062
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2300()Landroid/graphics/Paint;

    move-result-object v11

    const/16 v12, 0xff

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 1064
    :cond_4
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    const-wide/high16 v13, 0x3ff0

    cmpg-double v11, v11, v13

    if-gez v11, :cond_5

    .line 1065
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2500()Landroid/graphics/Paint;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1066
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2300()Landroid/graphics/Paint;

    move-result-object v11

    const/16 v12, 0xff

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 1068
    :cond_5
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    const-wide v13, 0x3ff4cccccccccccdL

    cmpg-double v11, v11, v13

    if-gez v11, :cond_6

    .line 1069
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2500()Landroid/graphics/Paint;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1072
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2300()Landroid/graphics/Paint;

    move-result-object v11

    const-wide v12, 0x4055400000000000L

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    const-wide/high16 v16, 0x3ff0

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    const-wide v14, 0x3fb999999999999aL

    div-double/2addr v12, v14

    double-to-int v12, v12

    rsub-int v12, v12, 0xff

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 1075
    :cond_6
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2500()Landroid/graphics/Paint;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1076
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$2300()Landroid/graphics/Paint;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0
.end method

.method public onPressed(Z)V
    .locals 2
    .parameter "pressed"

    .prologue
    .line 1108
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mIsPressed:Z

    .line 1109
    if-eqz p1, :cond_0

    .line 1110
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    .line 1111
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->postInvalidate()V

    .line 1112
    return-void
.end method

.method public setBadgeCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 1120
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mBadgeCount:I

    .line 1121
    return-void
.end method

.method public setDistanceRatio(D)V
    .locals 0
    .parameter "distanceRatio"

    .prologue
    .line 1115
    iput-wide p1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    .line 1116
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->postInvalidate()V

    .line 1117
    return-void
.end method
