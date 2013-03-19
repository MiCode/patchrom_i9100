.class public final Lcom/android/settings/guide/GuideModeHelper;
.super Ljava/lang/Object;
.source "GuideModeHelper.java"


# static fields
.field private static mIsTablet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/guide/GuideModeHelper;->mIsTablet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwHelpDialog;Landroid/app/Activity;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/android/settings/guide/GuideModeHelper;->placeHandPointer(Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwHelpDialog;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static drawActionPointerForSwitcher(Lcom/sec/android/touchwiz/widget/TwHelpDialog;Landroid/app/Activity;)V
    .locals 5
    .parameter "dialog"
    .parameter "activity"

    .prologue
    .line 179
    if-nez p0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 185
    .local v0, ab:Landroid/app/ActionBar;
    :goto_1
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 189
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 192
    invoke-static {v2, p0, p1}, Lcom/android/settings/guide/GuideModeHelper;->placeHandPointer(Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwHelpDialog;Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 194
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 195
    .local v3, vto:Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/settings/guide/GuideModeHelper$1;

    invoke-direct {v1, v2, p0, p1, v3}, Lcom/android/settings/guide/GuideModeHelper$1;-><init>(Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwHelpDialog;Landroid/app/Activity;Landroid/view/ViewTreeObserver;)V

    .line 209
    .local v1, listener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v3, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 183
    .end local v0           #ab:Landroid/app/ActionBar;
    .end local v1           #listener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .end local v2           #v:Landroid/view/View;
    .end local v3           #vto:Landroid/view/ViewTreeObserver;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/sec/android/touchwiz/widget/TwHelpDialog;)V
    .locals 16
    .parameter "activity"
    .parameter "helpDialog"

    .prologue
    .line 310
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v9

    .line 318
    .local v9, focus:Landroid/view/View;
    instance-of v1, v9, Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 319
    check-cast v9, Landroid/widget/ListView;

    .end local v9           #focus:Landroid/view/View;
    invoke-virtual {v9}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v9

    .line 322
    .restart local v9       #focus:Landroid/view/View;
    :cond_2
    if-eqz v9, :cond_0

    .line 323
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 324
    .local v13, rect:Landroid/graphics/Rect;
    const/4 v1, 0x2

    new-array v10, v1, [I

    .line 326
    .local v10, location:[I
    invoke-virtual {v9, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 327
    const/4 v1, 0x0

    aget v1, v10, v1

    const/4 v2, 0x1

    aget v2, v10, v2

    const/4 v3, 0x0

    aget v3, v10, v3

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v10, v4

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 330
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    iget v1, v13, Landroid/graphics/Rect;->left:I

    iget v2, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    div-int/lit8 v14, v1, 0x2

    .line 332
    .local v14, x:I
    iget v1, v13, Landroid/graphics/Rect;->bottom:I

    iget v2, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    div-int/lit8 v15, v1, 0x2

    .line 333
    .local v15, y:I
    const v1, 0x7f0b0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;

    .line 336
    .local v12, punchView:Lcom/sec/android/touchwiz/widget/TwTouchPunchView;
    const-wide/16 v1, 0x64

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    int-to-float v6, v14

    int-to-float v7, v15

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 345
    .local v11, motionEvent:Landroid/view/MotionEvent;
    if-eqz v12, :cond_3

    .line 346
    invoke-virtual {v12, v11}, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->processGlobalCoordinatesTouch(Landroid/view/MotionEvent;)V

    .line 349
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 350
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 352
    const-wide/16 v1, 0x64

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    add-long/2addr v3, v5

    const/4 v5, 0x1

    int-to-float v6, v14

    int-to-float v7, v15

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 361
    if-eqz v12, :cond_4

    .line 362
    invoke-virtual {v12, v11}, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->processGlobalCoordinatesTouch(Landroid/view/MotionEvent;)V

    .line 365
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 366
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0
.end method

.method static getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .parameter "b"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 95
    const-string v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v1, "settings:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const-string v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 103
    :cond_0
    return-object v0
.end method

.method static getGuideModeFromIntent(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .parameter "savedInstanceState"
    .parameter "bundle"

    .prologue
    .line 74
    if-eqz p0, :cond_1

    const-string v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, result:Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 78
    invoke-static {p1}, Lcom/android/settings/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_0
    return-object v0

    .line 74
    .end local v0           #result:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 442
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/guide/GuideModeHelper;->mIsTablet:Z

    .line 443
    return-void
.end method

.method static isGuideCompleted(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "b"

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, result:Z
    if-eqz p0, :cond_0

    .line 110
    const-string v1, "settings:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "settings:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 112
    const-string v1, "settings:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 116
    :cond_0
    return v0
.end method

.method static isGuideModeBluetooth(Ljava/lang/String;)Z
    .locals 2
    .parameter "mode"

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, result:Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    const-string v1, "bt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 160
    :cond_0
    return v0
.end method

.method static isGuideModeWiFi(Ljava/lang/String;)Z
    .locals 2
    .parameter "mode"

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, result:Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 147
    :cond_0
    return v0
.end method

.method static isInGuideMode(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "savedInstanceState"
    .parameter "b"

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, result:Z
    if-eqz p0, :cond_1

    const-string v1, "settings:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    const-string v1, "settings:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    if-eqz p1, :cond_0

    .line 127
    const-string v1, "settings:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const-string v1, "settings:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 129
    const-string v1, "settings:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static isTablet()Z
    .locals 1

    .prologue
    .line 431
    sget-boolean v0, Lcom/android/settings/guide/GuideModeHelper;->mIsTablet:Z

    return v0
.end method

.method private static placeHandPointer(Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwHelpDialog;Landroid/app/Activity;)Z
    .locals 13
    .parameter "view"
    .parameter "dialog"
    .parameter "activity"

    .prologue
    const v12, 0x7f0b0003

    const/4 v11, -0x2

    const/4 v9, 0x1

    .line 229
    const/4 v8, -0x1

    .line 230
    .local v8, viewX:I
    invoke-virtual {p1, v12}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 231
    .local v2, handPointer:Landroid/widget/ImageView;
    const v10, 0x7f0b0004

    invoke-virtual {p1, v10}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;

    .line 232
    .local v6, punchView:Lcom/sec/android/touchwiz/widget/TwTouchPunchView;
    const v10, 0x7f0b0006

    invoke-virtual {p1, v10}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 233
    .local v1, bubbleView:Landroid/widget/TextView;
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 235
    .local v7, resources:Landroid/content/res/Resources;
    if-eqz p0, :cond_0

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 239
    :cond_0
    if-lez v8, :cond_3

    .line 241
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 245
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0x9

    invoke-virtual {v3, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 246
    const/16 v10, 0xa

    invoke-virtual {v3, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 247
    const v10, 0x7f0f0038

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    add-int/2addr v10, v8

    iput v10, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 249
    const v10, 0x7f0f0037

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iput v10, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 252
    if-nez v2, :cond_4

    .line 253
    new-instance v2, Landroid/widget/ImageView;

    .end local v2           #handPointer:Landroid/widget/ImageView;
    invoke-direct {v2, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 254
    .restart local v2       #handPointer:Landroid/widget/ImageView;
    const v10, 0x7f020364

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    const v10, 0x7f090d70

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 258
    const v10, 0x7f0b0005

    invoke-virtual {p1, v10}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 260
    .local v4, parent:Landroid/widget/RelativeLayout;
    if-eqz v4, :cond_1

    .line 261
    invoke-virtual {v4, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setId(I)V

    .line 269
    .end local v4           #parent:Landroid/widget/RelativeLayout;
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 271
    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 274
    .local v5, punchParams:Landroid/widget/RelativeLayout$LayoutParams;
    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 276
    invoke-virtual {v6, v5}, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->invalidate()V

    .line 284
    .end local v5           #punchParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    if-eqz v1, :cond_3

    .line 285
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 288
    .local v0, bubbleParams:Landroid/widget/RelativeLayout$LayoutParams;
    const v10, 0x7f0f0039

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    sub-int v10, v8, v10

    iput v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 291
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 296
    .end local v0           #bubbleParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    if-lez v8, :cond_5

    :goto_1
    return v9

    .line 265
    .restart local v3       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 296
    .end local v3           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1
.end method

.method static setSettingsListEnabled(ZLandroid/app/Activity;)V
    .locals 2
    .parameter "enabled"
    .parameter "activity"

    .prologue
    .line 411
    instance-of v1, p1, Landroid/app/ListActivity;

    if-eqz v1, :cond_0

    .line 412
    check-cast p1, Landroid/app/ListActivity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 414
    .local v0, list:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v1

    if-eq v1, p0, :cond_0

    .line 415
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 418
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 423
    .end local v0           #list:Landroid/widget/ListView;
    :cond_0
    return-void
.end method

.method static switchMode(Landroid/app/Activity;)Z
    .locals 3
    .parameter "activity"

    .prologue
    .line 387
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 388
    const/4 v1, 0x0

    .line 398
    :cond_0
    :goto_0
    return v1

    .line 391
    :cond_1
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/settings/guide/GuideFragmentCallback;

    move-result-object v0

    check-cast v0, Lcom/android/settings/guide/GuideFragment;

    .line 392
    .local v0, frag:Lcom/android/settings/guide/GuideFragment;
    const/4 v1, 0x0

    .line 394
    .local v1, retval:Z
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Lcom/android/settings/guide/GuideFragment;->switchGuiderMode()Z

    move-result v1

    goto :goto_0
.end method
