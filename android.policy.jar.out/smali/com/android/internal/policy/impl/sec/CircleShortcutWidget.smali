.class public Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;
.super Landroid/widget/LinearLayout;
.source "CircleShortcutWidget.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ShortcutWidgetUpdateForContextCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;,
        Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;
    }
.end annotation


# static fields
.field private static final ACTION_USER_ACTIVITY_BY_SHORTCUT:Ljava/lang/String; = "com.android.internal.policy.impl.sec.UserActivityByShortcut"

.field private static final APPLICATION_SEPERATOR:C = ';'

.field private static final BADGE_COLUMNS:[Ljava/lang/String; = null

.field private static final BADGE_URI:Landroid/net/Uri; = null

.field private static final MAX_SHORTCUT_COUNT_WHEN_CONTEXTUAL_MODE:I = 0x5

.field private static final PACKAGE_CLASS_SEPERATOR:C = '/'

.field private static final mBlurPaint:Landroid/graphics/Paint;

.field private static mGlowCanvas:Landroid/graphics/Canvas;

.field private static final mHolographicPaint:Landroid/graphics/Paint;

.field private static mOuterGlowColor:I

.field private static final mSaturationPaint:Landroid/graphics/Paint;

.field private static mShortcutImageViewHeight:I

.field private static mShortcutImageViewWidth:I

.field private static mTempOffset:[I

.field private static sBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private static sCoarseClipTable:Landroid/graphics/MaskFilter;

.field private static sFontSizeDefault:I

.field private static sFontSizeSmall:I

.field private static sIconCenterXOffset:I

.field private static sIconTopToTopOffset:I

.field private static sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# instance fields
.field private final CAMERA_ACTIVITY_NAME:Ljava/lang/String;

.field private final CAMERA_PACKAGE_NAME:Ljava/lang/String;

.field private DBG:Z

.field private final FADE_IN_OUT_ANIMATION_DURATION:I

.field private final MISSED_EVENT_UPDATE:I

.field private TAG:Ljava/lang/String;

.field private final mBadgeObserver:Landroid/database/ContentObserver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCircleUnlockWidget:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mHandler:Landroid/os/Handler;

.field private mIconDpi:I

.field private mIconHeight:I

.field private mIconWidth:I

.field private mIsFaceLockOn:Z

.field private mIsTablet:Z

.field private mIsTouchExplorationEnabled:Z

.field private mItemCount:I

.field private mOldBounds:Landroid/graphics/Rect;

.field private mOrientation:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mShortcutListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private shortcutItemName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mHolographicPaint:Landroid/graphics/Paint;

    .line 123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mBlurPaint:Landroid/graphics/Paint;

    .line 124
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mSaturationPaint:Landroid/graphics/Paint;

    .line 126
    const/16 v0, 0xc8

    invoke-static {v2, v0}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    .line 127
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mTempOffset:[I

    .line 149
    sput v2, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mShortcutImageViewWidth:I

    .line 150
    sput v2, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mShortcutImageViewHeight:I

    .line 156
    const-string v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->BADGE_URI:Landroid/net/Uri;

    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "badgecount"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->BADGE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Landroid/content/res/Configuration;ZLcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 14
    .parameter "context"
    .parameter "callback"
    .parameter "circleUnlockWidget"
    .parameter "configuration"
    .parameter "facelockOn"
    .parameter "updateMonitor"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 84
    const-string v10, "CircleShortcutWidget"

    iput-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    .line 85
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->DBG:Z

    .line 98
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIconWidth:I

    .line 99
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIconHeight:I

    .line 106
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    invoke-direct {v10, v11, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 107
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 108
    const/16 v10, 0x12c

    iput v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->FADE_IN_OUT_ANIMATION_DURATION:I

    .line 112
    const-string v10, "com.sec.android.app.camera"

    iput-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->CAMERA_PACKAGE_NAME:Ljava/lang/String;

    .line 113
    const-string v10, "com.sec.android.app.camera.Camera"

    iput-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->CAMERA_ACTIVITY_NAME:Ljava/lang/String;

    .line 117
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mItemCount:I

    .line 146
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIsTouchExplorationEnabled:Z

    .line 159
    const/16 v10, 0x12c2

    iput v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->MISSED_EVENT_UPDATE:I

    .line 160
    new-instance v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$1;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$1;-><init>(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)V

    iput-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mHandler:Landroid/os/Handler;

    .line 170
    new-instance v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$2;

    iget-object v11, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mHandler:Landroid/os/Handler;

    invoke-direct {v10, p0, v11}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$2;-><init>(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;Landroid/os/Handler;)V

    iput-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 184
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 185
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mCircleUnlockWidget:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    .line 186
    move-object/from16 v0, p4

    iget v10, v0, Landroid/content/res/Configuration;->orientation:I

    iput v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mOrientation:I

    .line 187
    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIsFaceLockOn:Z

    .line 188
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 190
    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 191
    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v11, 0x12c

    invoke-virtual {v10, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 193
    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 194
    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v11, 0x12c

    invoke-virtual {v10, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_screen_shortcut"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_0

    .line 201
    const/16 v10, 0x8

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->setVisibility(I)V

    .line 398
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isShortcutApplied()Z

    move-result v10

    if-nez v10, :cond_1

    .line 206
    const/16 v10, 0x8

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->setVisibility(I)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "easy_mode_switch"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v7, 0x0

    .line 214
    .local v7, isEasyUxOn:Z
    :goto_1
    if-eqz v7, :cond_3

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x111004f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v7, 0x1

    .line 216
    :goto_2
    if-eqz v7, :cond_4

    .line 217
    const/16 v10, 0x8

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->setVisibility(I)V

    goto :goto_0

    .line 213
    .end local v7           #isEasyUxOn:Z
    :cond_2
    const/4 v7, 0x1

    goto :goto_1

    .line 214
    .restart local v7       #isEasyUxOn:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 232
    :cond_4
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIsTablet:Z

    .line 239
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mOldBounds:Landroid/graphics/Rect;

    .line 240
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10}, Landroid/graphics/Canvas;-><init>()V

    iput-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mCanvas:Landroid/graphics/Canvas;

    .line 241
    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mCanvas:Landroid/graphics/Canvas;

    new-instance v11, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v12, 0x4

    const/4 v13, 0x2

    invoke-direct {v11, v12, v13}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 244
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10}, Landroid/graphics/Canvas;-><init>()V

    sput-object v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mGlowCanvas:Landroid/graphics/Canvas;

    .line 245
    sget-object v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mGlowCanvas:Landroid/graphics/Canvas;

    new-instance v11, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v12, 0x4

    const/4 v13, 0x2

    invoke-direct {v11, v12, v13}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 247
    sget-object v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mHolographicPaint:Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 248
    sget-object v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mHolographicPaint:Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 249
    new-instance v10, Landroid/graphics/BlurMaskFilter;

    const/high16 v11, 0x40c0

    sget-object v12, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v10, v11, v12}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 250
    sget-object v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mBlurPaint:Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 251
    sget-object v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mBlurPaint:Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 252
    sget-object v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v11, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 253
    const/4 v10, -0x1

    sput v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mOuterGlowColor:I

    .line 255
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 256
    .local v2, cm:Landroid/graphics/ColorMatrix;
    const/high16 v10, 0x3f00

    const/high16 v11, 0x3f00

    invoke-static {v2, v10, v11}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->setContrastSaturation(Landroid/graphics/ColorMatrix;FF)V

    .line 259
    sget-object v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mSaturationPaint:Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 260
    sget-object v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mSaturationPaint:Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 261
    sget-object v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mSaturationPaint:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v11, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mPm:Landroid/content/pm/PackageManager;

    .line 265
    new-instance v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$3;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$3;-><init>(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)V

    iput-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mShortcutListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    .line 306
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getLauncherLargeIconDensity()I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIconDpi:I

    .line 308
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->DBG:Z

    if-eqz v10, :cond_5

    .line 309
    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "density = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIconDpi:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_5
    move-object/from16 v0, p6

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerShortcutWidgetUpdateForContextCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ShortcutWidgetUpdateForContextCallback;)V

    .line 315
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIsTouchExplorationEnabled:Z

    if-nez v10, :cond_6

    .line 316
    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "touch_exploration_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 318
    .local v5, exploreByTouchMode:I
    const/4 v10, 0x1

    if-ne v5, v10, :cond_7

    .line 319
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIsTouchExplorationEnabled:Z

    .line 320
    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v11, "explore by touch mode on"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v5           #exploreByTouchMode:I
    :cond_6
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x105006e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    sput v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mShortcutImageViewWidth:I

    .line 328
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x105006f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    sput v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mShortcutImageViewHeight:I

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10802b4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    sput-object v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050070

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    sput v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->sFontSizeDefault:I

    .line 331
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050071

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    sput v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->sFontSizeSmall:I

    .line 332
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050072

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    sput v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->sIconCenterXOffset:I

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050073

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    sput v10, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->sIconTopToTopOffset:I

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->BADGE_URI:Landroid/net/Uri;

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 345
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_screen_shortcut_app_list"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, activityList:Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 354
    const/4 v4, 0x0

    .line 357
    .local v4, dummyItem:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->shortcutItemName:Ljava/util/ArrayList;

    .line 358
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->totalItemList:Ljava/util/ArrayList;

    .line 362
    new-instance v9, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v10, 0x3b

    invoke-direct {v9, v10}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 363
    .local v9, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v9, v1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 364
    const/4 v3, 0x0

    .line 365
    .local v3, count:I
    invoke-interface {v9}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 366
    .local v8, pkgActivity:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->shortcutItemName:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-direct {p0, p1, v8, v3}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->setEachItem(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    goto :goto_4

    .line 322
    .end local v1           #activityList:Ljava/lang/String;
    .end local v3           #count:I
    .end local v4           #dummyItem:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #pkgActivity:Ljava/lang/String;
    .end local v9           #splitter:Landroid/text/TextUtils$StringSplitter;
    .restart local v5       #exploreByTouchMode:I
    :cond_7
    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v11, "explore by touch mode off"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 385
    .end local v5           #exploreByTouchMode:I
    .restart local v1       #activityList:Ljava/lang/String;
    .restart local v3       #count:I
    .restart local v4       #dummyItem:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #splitter:Landroid/text/TextUtils$StringSplitter;
    :cond_8
    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mItemCount:I

    goto/16 :goto_0

    .line 396
    .end local v3           #count:I
    .end local v4           #dummyItem:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #splitter:Landroid/text/TextUtils$StringSplitter;
    :cond_9
    const/16 v10, 0x8

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->reloadBadges()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIconWidth:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIconWidth:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIconHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$1400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->BADGE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->BADGE_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIsTouchExplorationEnabled:Z

    return v0
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->sFontSizeDefault:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->sIconTopToTopOffset:I

    return v0
.end method

.method static synthetic access$2100()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->sIconCenterXOffset:I

    return v0
.end method

.method static synthetic access$2200()Landroid/graphics/MaskFilter;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method static synthetic access$2300()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mHolographicPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2400()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mOuterGlowColor:I

    return v0
.end method

.method static synthetic access$2500()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mSaturationPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2600()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mShortcutImageViewWidth:I

    return v0
.end method

.method static synthetic access$2700()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mShortcutImageViewHeight:I

    return v0
.end method

.method static synthetic access$2800()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mBlurPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2900()[I
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mTempOffset:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$3000()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->sFontSizeSmall:I

    return v0
.end method

.method static synthetic access$3100()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->DBG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mCircleUnlockWidget:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mShortcutListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->hideOtherShortcuts(Landroid/view/View;Z)V

    return-void
.end method

.method private compareItem(Landroid/net/Uri;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;I)Ljava/lang/String;
    .locals 17
    .parameter "ContextUri"
    .parameter "contextMode"
    .parameter "count"

    .prologue
    .line 560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 562
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 563
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v4, "Success to get cursor."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 567
    .local v16, rowcount:I
    invoke-interface {v11}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    .line 571
    .local v9, columncount:I
    :cond_0
    const/4 v15, 0x0

    .line 572
    .local v15, isDuplicateItem:Z
    const-string v3, "package_name"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 573
    .local v14, idxOfPkg:I
    const-string v3, "class_name"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 575
    .local v13, idxOfActivity:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 577
    .local v10, contextualItemName:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move/from16 v0, p3

    if-ge v12, v0, :cond_2

    .line 578
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->shortcutItemName:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 579
    const/4 v15, 0x1

    .line 577
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 583
    :cond_2
    if-nez v15, :cond_3

    .line 584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v4, "Set contextual shortcut item additionally."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 603
    .end local v9           #columncount:I
    .end local v10           #contextualItemName:Ljava/lang/String;
    .end local v12           #i:I
    .end local v13           #idxOfActivity:I
    .end local v14           #idxOfPkg:I
    .end local v15           #isDuplicateItem:Z
    .end local v16           #rowcount:I
    :goto_1
    return-object v10

    .line 588
    .restart local v9       #columncount:I
    .restart local v10       #contextualItemName:Ljava/lang/String;
    .restart local v12       #i:I
    .restart local v13       #idxOfActivity:I
    .restart local v14       #idxOfPkg:I
    .restart local v15       #isDuplicateItem:Z
    .restart local v16       #rowcount:I
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 590
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 592
    if-eqz v15, :cond_6

    .line 593
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v4, "Contextual shortcut item is duplicated with shortcut items on settings."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->selectItemAmongDefaultApp(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 597
    .end local v9           #columncount:I
    .end local v10           #contextualItemName:Ljava/lang/String;
    .end local v12           #i:I
    .end local v13           #idxOfActivity:I
    .end local v14           #idxOfPkg:I
    .end local v15           #isDuplicateItem:Z
    .end local v16           #rowcount:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v4, "Fail to get cursor because DB empty."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    if-eqz v11, :cond_5

    .line 599
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 600
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->selectItemAmongDefaultApp(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 602
    .restart local v9       #columncount:I
    .restart local v10       #contextualItemName:Ljava/lang/String;
    .restart local v12       #i:I
    .restart local v13       #idxOfActivity:I
    .restart local v14       #idxOfPkg:I
    .restart local v15       #isDuplicateItem:Z
    .restart local v16       #rowcount:I
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 603
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->selectItemAmongDefaultApp(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1
.end method

.method private createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 22
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 874
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIconWidth:I

    move/from16 v16, v0

    .line 875
    .local v16, width:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIconHeight:I

    .line 877
    .local v9, height:I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 878
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "PaintDrawable"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v13, v0

    .line 881
    .local v13, painter:Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 882
    invoke-virtual {v13, v9}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 893
    .end local v13           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 894
    .local v12, iconWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 896
    .local v11, iconHeight:I
    if-lez v16, :cond_5

    if-lez v9, :cond_5

    .line 897
    move/from16 v0, v16

    if-lt v0, v12, :cond_2

    if-ge v9, v11, :cond_a

    .line 898
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "width < iconWidth || height < iconHeight"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_3
    int-to-float v0, v12

    move/from16 v19, v0

    int-to-float v0, v11

    move/from16 v21, v0

    div-float v14, v19, v21

    .line 902
    .local v14, ratio:F
    if-le v12, v11, :cond_8

    .line 903
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v9, v0

    .line 908
    :cond_4
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v19

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 909
    .local v7, c:Landroid/graphics/Bitmap$Config;
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIconWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIconHeight:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 910
    .local v15, thumb:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mCanvas:Landroid/graphics/Canvas;

    .line 911
    .local v8, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 918
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIconWidth:I

    move/from16 v19, v0

    sub-int v19, v19, v16

    div-int/lit8 v17, v19, 0x2

    .line 919
    .local v17, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIconHeight:I

    move/from16 v19, v0

    sub-int v19, v19, v9

    div-int/lit8 v18, v19, 0x2

    .line 920
    .local v18, y:I
    add-int v19, v17, v16

    add-int v21, v18, v9

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 921
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 924
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local p1
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 p1, v10

    .line 943
    .end local v7           #c:Landroid/graphics/Bitmap$Config;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .end local v14           #ratio:F
    .end local v15           #thumb:Landroid/graphics/Bitmap;
    .end local v17           #x:I
    .end local v18           #y:I
    .restart local p1
    :cond_5
    :goto_3
    monitor-exit v20

    .line 945
    return-object p1

    .line 883
    .end local v11           #iconHeight:I
    .end local v12           #iconWidth:I
    :cond_6
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 884
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "BitmapDrawable"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_7
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    .line 888
    .local v6, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 889
    .local v5, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v19

    if-nez v19, :cond_1

    .line 890
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .line 943
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v9           #height:I
    .end local v16           #width:I
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 904
    .restart local v9       #height:I
    .restart local v11       #iconHeight:I
    .restart local v12       #iconWidth:I
    .restart local v14       #ratio:F
    .restart local v16       #width:I
    :cond_8
    if-le v11, v12, :cond_4

    .line 905
    int-to-float v0, v9

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    goto/16 :goto_1

    .line 908
    :cond_9
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_2

    .line 926
    .end local v14           #ratio:F
    :cond_a
    move/from16 v0, v16

    if-ge v12, v0, :cond_5

    if-ge v11, v9, :cond_5

    .line 927
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->DBG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v21, "iconWidth < width && iconHeight < height"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_b
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 930
    .restart local v7       #c:Landroid/graphics/Bitmap$Config;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIconWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIconHeight:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 931
    .restart local v15       #thumb:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mCanvas:Landroid/graphics/Canvas;

    .line 932
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    invoke-virtual {v8, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 934
    sub-int v19, v16, v12

    div-int/lit8 v17, v19, 0x2

    .line 935
    .restart local v17       #x:I
    sub-int v19, v9, v11

    div-int/lit8 v18, v19, 0x2

    .line 936
    .restart local v18       #y:I
    add-int v19, v17, v12

    add-int v21, v18, v11

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 937
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 939
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1
    .restart local v10       #icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 p1, v10

    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p1
    goto/16 :goto_3
.end method

.method private getLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .parameter "cn"

    .prologue
    .line 853
    const/4 v0, 0x0

    .line 854
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 855
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 856
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 857
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 858
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 860
    :cond_0
    return-object v0
.end method

.method private hideOtherShortcuts(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hide"

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getChildCount()I

    move-result v0

    .local v0, children:I
    :goto_0
    if-ltz v0, :cond_2

    .line 668
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 669
    .local v1, tmpView:Landroid/view/View;
    instance-of v2, v1, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;

    if-eqz v2, :cond_0

    if-eq p1, v1, :cond_0

    .line 670
    if-eqz p2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->isDummy()Z

    move-result v2

    if-nez v2, :cond_1

    .line 671
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 667
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 672
    check-cast v2, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->isDummy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 673
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 676
    .end local v1           #tmpView:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private isScreenLarge()Z
    .locals 2

    .prologue
    .line 949
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 950
    .local v0, screenSize:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshShortcutItems()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 693
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getChildCount()I

    move-result v0

    .local v0, children:I
    :goto_0
    if-ltz v0, :cond_1

    .line 694
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 695
    .local v1, tmpView:Landroid/view/View;
    instance-of v2, v1, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 696
    check-cast v2, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->onPressed(Z)V

    .line 697
    check-cast v1, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;

    .end local v1           #tmpView:Landroid/view/View;
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->setOpacity(D)V

    .line 693
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 700
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->hideOtherShortcuts(Landroid/view/View;Z)V

    .line 701
    return-void
.end method

.method private reloadBadges()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 643
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getChildCount()I

    move-result v7

    .local v7, children:I
    :goto_0
    if-ltz v7, :cond_2

    .line 644
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 645
    .local v8, tmpView:Landroid/view/View;
    instance-of v0, v8, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;

    if-eqz v0, :cond_1

    move-object v0, v8

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->isDummy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->BADGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->BADGE_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, v8

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\" and class=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, v8

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 648
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 649
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 651
    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->setBadgeCount(I)V

    .line 652
    check-cast v8, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;

    .end local v8           #tmpView:Landroid/view/View;
    invoke-virtual {v8}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->refreshBadgeCount()V

    .line 654
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 643
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 658
    :cond_2
    return-void
.end method

.method private selectItemAmongDefaultApp(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;I)Ljava/lang/String;
    .locals 9
    .parameter "contextMode"
    .parameter "count"

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 608
    .local v5, resources:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 609
    .local v1, candidateApp:[Ljava/lang/String;
    const/4 v0, 0x5

    .line 611
    .local v0, DEFAULT_APPS_COUNT:I
    sget-object v6, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_SPEN:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    if-ne p1, v6, :cond_2

    .line 612
    const v6, 0x107004f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 621
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 623
    .local v3, isDuplicateItem:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/4 v6, 0x5

    if-ge v2, v6, :cond_7

    .line 624
    const/4 v3, 0x0

    .line 625
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-ge v4, p2, :cond_5

    .line 626
    aget-object v6, v1, v2

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->shortcutItemName:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 627
    const/4 v3, 0x1

    .line 625
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 613
    .end local v2           #i:I
    .end local v3           #isDuplicateItem:Z
    .end local v4           #j:I
    :cond_2
    sget-object v6, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_EARPHONE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    if-ne p1, v6, :cond_3

    .line 614
    const v6, 0x1070050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 615
    :cond_3
    sget-object v6, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_CARCRADLE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    if-ne p1, v6, :cond_4

    .line 616
    const v6, 0x1070051

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 617
    :cond_4
    sget-object v6, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_DESKCRADLE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    if-ne p1, v6, :cond_0

    .line 618
    const v6, 0x1070052

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 631
    .restart local v2       #i:I
    .restart local v3       #isDuplicateItem:Z
    .restart local v4       #j:I
    :cond_5
    if-nez v3, :cond_6

    .line 632
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set default contextual shortcut : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    aget-object v6, v1, v2

    .line 637
    .end local v4           #j:I
    :goto_3
    return-object v6

    .line 623
    .restart local v4       #j:I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 636
    .end local v4           #j:I
    :cond_7
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v7, "There is a fault so devive should set duplicate shortcut."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v6, 0x0

    aget-object v6, v1, v6

    goto :goto_3
.end method

.method private setContextualItem(Landroid/content/Context;I)I
    .locals 0
    .parameter "context"
    .parameter "count"

    .prologue
    .line 556
    return p2
.end method

.method private static setContrastSaturation(Landroid/graphics/ColorMatrix;FF)V
    .locals 11
    .parameter "cm"
    .parameter "contrast"
    .parameter "saturation"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    .line 1184
    add-float v4, p1, v10

    .line 1185
    .local v4, scale:F
    const/high16 v6, -0x4100

    mul-float/2addr v6, v4

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    const/high16 v7, 0x437f

    mul-float v5, v6, v7

    .line 1186
    .local v5, translate:F
    sub-float v3, v10, p2

    .line 1187
    .local v3, invSat:F
    const v6, 0x3e5a1cac

    mul-float v2, v6, v3

    .line 1188
    .local v2, R:F
    const v6, 0x3f370a3d

    mul-float v1, v6, v3

    .line 1189
    .local v1, G:F
    const v6, 0x3d9374bc

    mul-float v0, v6, v3

    .line 1191
    .local v0, B:F
    const/16 v6, 0x14

    new-array v6, v6, [F

    const/4 v7, 0x0

    add-float v8, v2, p2

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v1, v6, v7

    const/4 v7, 0x2

    aput v0, v6, v7

    const/4 v7, 0x3

    aput v9, v6, v7

    const/4 v7, 0x4

    aput v5, v6, v7

    const/4 v7, 0x5

    aput v2, v6, v7

    const/4 v7, 0x6

    add-float v8, v1, p2

    aput v8, v6, v7

    const/4 v7, 0x7

    aput v0, v6, v7

    const/16 v7, 0x8

    aput v9, v6, v7

    const/16 v7, 0x9

    aput v5, v6, v7

    const/16 v7, 0xa

    aput v2, v6, v7

    const/16 v7, 0xb

    aput v1, v6, v7

    const/16 v7, 0xc

    add-float v8, v0, p2

    aput v8, v6, v7

    const/16 v7, 0xd

    aput v9, v6, v7

    const/16 v7, 0xe

    aput v5, v6, v7

    const/16 v7, 0xf

    aput v9, v6, v7

    const/16 v7, 0x10

    aput v9, v6, v7

    const/16 v7, 0x11

    aput v9, v6, v7

    const/16 v7, 0x12

    aput v10, v6, v7

    const/16 v7, 0x13

    aput v9, v6, v7

    invoke-virtual {p0, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 1197
    return-void
.end method

.method private setEachItem(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 8
    .parameter "context"
    .parameter "pkgActivity"
    .parameter "count"

    .prologue
    .line 402
    add-int/lit8 p3, p3, 0x1

    .line 404
    const/16 v5, 0x2f

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 405
    .local v2, commaIndex:I
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, pkgName:Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, activityName:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->DBG:Z

    if-eqz v5, :cond_0

    .line 408
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkg name ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", activityName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    const/4 v1, 0x0

    .line 422
    .local v1, cn:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cn:Landroid/content/ComponentName;
    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    .restart local v1       #cn:Landroid/content/ComponentName;
    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;

    const/4 v5, 0x1

    invoke-direct {v4, p0, p1, v1, v5}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;-><init>(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 426
    .local v4, testItem:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;
    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->access$400(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 427
    new-instance v5, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$4;-><init>(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 491
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->addView(Landroid/view/View;)V

    .line 492
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->totalItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    :goto_0
    const/4 v1, 0x0

    .line 525
    const/4 v4, 0x0

    .line 527
    return p3

    .line 518
    :cond_1
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->DBG:Z

    if-eqz v5, :cond_2

    .line 519
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v6, "mIntent=null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0
.end method


# virtual methods
.method public ShortcutWidgetUpdateForContext(ILcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;)V
    .locals 4
    .parameter "isPush"
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    .line 1204
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v2, "Enter callback method to update shortcut widget."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-nez v1, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1210
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getCurrentContextMode()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_NONE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    if-ne v1, v2, :cond_2

    if-ne p1, v3, :cond_2

    .line 1211
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->pushContextMode(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;)V

    .line 1212
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mItemCount:I

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->setContextualItem(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mItemCount:I

    .line 1213
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v2, "Add contextual shortcut item."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v2, "After update shortcut widget by callback,"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentContextMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getCurrentContextMode()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", PreviousContextMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPreviousContextMode()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isShowingAndNotHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1247
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->invalidate()V

    goto :goto_0

    .line 1215
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPreviousContextMode()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_NONE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    if-ne v1, v2, :cond_4

    if-nez p1, :cond_4

    .line 1216
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->popContextMode(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;)V

    .line 1217
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_CARCRADLE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    if-ne p2, v1, :cond_3

    .line 1218
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    sget-object v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_DESKCRADLE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->popContextMode(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;)V

    .line 1220
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getChildCount()I

    move-result v0

    .line 1221
    .local v0, index:I
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->removeViewAt(I)V

    .line 1222
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->totalItemList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1223
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mItemCount:I

    .line 1224
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v2, "Remove last contextual shortcut item."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1226
    .end local v0           #index:I
    :cond_4
    if-ne p1, v3, :cond_6

    .line 1227
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->pushContextMode(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;)V

    .line 1234
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getChildCount()I

    move-result v0

    .line 1235
    .restart local v0       #index:I
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->removeViewAt(I)V

    .line 1236
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->totalItemList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1237
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mItemCount:I

    .line 1239
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mItemCount:I

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->setContextualItem(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mItemCount:I

    .line 1240
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v2, "Remove last contextual shortcut item and add new item."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1229
    .end local v0           #index:I
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->popContextMode(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;)V

    .line 1230
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_CARCRADLE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    if-ne p2, v1, :cond_5

    .line 1231
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    sget-object v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_DESKCRADLE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->popContextMode(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;)V

    goto :goto_2
.end method

.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 704
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->DBG:Z

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 708
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 709
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 710
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mShortcutListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    .line 711
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mOldBounds:Landroid/graphics/Rect;

    .line 712
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mCanvas:Landroid/graphics/Canvas;

    .line 713
    return-void
.end method

.method public getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 991
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "info"

    .prologue
    .line 966
    const/4 v1, 0x0

    .line 968
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    .line 969
    const/4 v3, 0x0

    .line 975
    .local v3, resources:Landroid/content/res/Resources;
    :goto_0
    if-eqz v3, :cond_3

    .line 976
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v4, :cond_1

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 978
    if-eqz v1, :cond_2

    move-object v4, v1

    .line 987
    :goto_2
    return-object v4

    .line 971
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .restart local v3       #resources:Landroid/content/res/Resources;
    goto :goto_0

    .line 972
    .end local v3           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 973
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .restart local v3       #resources:Landroid/content/res/Resources;
    goto :goto_0

    .line 976
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 982
    :cond_2
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    .line 983
    .local v2, iconId:I
    if-eqz v2, :cond_3

    .line 984
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    .line 987
    .end local v2           #iconId:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "resources"
    .parameter "iconId"

    .prologue
    .line 956
    :try_start_0
    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 961
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    .line 957
    :catch_0
    move-exception v1

    .line 958
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 961
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mItemCount:I

    return v0
.end method

.method public getLauncherLargeIconDensity()I
    .locals 5

    .prologue
    const/16 v3, 0x140

    .line 1265
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1266
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1267
    .local v0, density:I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1269
    .local v2, sw:I
    const/16 v4, 0x258

    if-ge v2, v4, :cond_0

    .line 1290
    .end local v0           #density:I
    :goto_0
    return v0

    .line 1274
    .restart local v0       #density:I
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 1290
    int-to-float v3, v0

    const/high16 v4, 0x3fc0

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v0, v3

    goto :goto_0

    .line 1276
    :sswitch_0
    const/16 v0, 0xa0

    goto :goto_0

    .line 1278
    :sswitch_1
    const/16 v0, 0xf0

    goto :goto_0

    :sswitch_2
    move v0, v3

    .line 1280
    goto :goto_0

    :sswitch_3
    move v0, v3

    .line 1282
    goto :goto_0

    .line 1284
    :sswitch_4
    const/16 v0, 0x1e0

    goto :goto_0

    .line 1286
    :sswitch_5
    const/16 v0, 0x280

    goto :goto_0

    .line 1274
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 679
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->DBG:Z

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->refreshShortcutItems()V

    .line 683
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->DBG:Z

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->refreshShortcutItems()V

    .line 690
    return-void
.end method

.method public setContextualItemAddAnimation(I)V
    .locals 10
    .parameter "count"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 1252
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1254
    .local v9, set:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x4000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1257
    .local v0, ani:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1258
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1260
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->totalItemList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;

    invoke-virtual {v1, v9}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1261
    return-void
.end method
