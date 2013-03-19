.class public Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLCamcorderBaseIndicators.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final BATTERY_INDICATOR_VISIBLE_LEVEL:I = 0x0

.field private static FOCUS_BUTTON_POS_X:I = 0x0

.field private static FOCUS_BUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final FULL_SCREEN_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final FULL_SCREEN_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_GORUP_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_GROUP_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_GROUP_LANDSCAPE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_GROUP_PORTRAIT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_GROUP_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_TEXT_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PERCENTAGE_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final REMAIN_COUNTER_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final REMAIN_TIME_VISIBLE_RATIO:F = 0.0f

.field private static final SECONDS_IN_A_MINUTE:I = 0x3c

#the value of this static final field might be set in the static constructor
.field private static final SIDE_MENU_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SPEED_REC_WIDTH:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLCamcorderBaseIndicators"


# instance fields
.field private final MAX_RECORDING_TIME:I

.field private final SECONDS_IN_AN_HOUR:I

.field private final SECONDS_IN_A_DAY:I

.field private mAudioOffIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecIndicator;

.field private mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

.field private mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

.field private mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

.field private mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

.field private mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

.field private mHMS:Ljava/lang/String;

.field private mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

.field private mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRemainTime:I

.field private mRemainTimeIndicator:Lcom/sec/android/glview/TwGLText;

.field private mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

.field private mTotalStorage:J

.field private mTouchFocusRectCenterX:I

.field private mTouchFocusRectCenterY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const v0, 0x7f070079

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_WIDTH:I

    .line 28
    const v0, 0x7f07007a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_HEIGHT:I

    .line 29
    const v0, 0x7f070097

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->SIDE_MENU_WIDTH:I

    .line 31
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v1

    const v1, 0x7f0700b7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    .line 32
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_HEIGHT:I

    const v1, 0x7f0700ba

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_PORTRAIT_POS_X:I

    .line 33
    const v0, 0x7f0700b8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    .line 34
    const v0, 0x7f0700bc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_WIDTH:I

    .line 35
    const v0, 0x7f0700bd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_HEIGHT:I

    .line 36
    const v0, 0x7f080021

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_TEXT_SIZE:I

    .line 37
    const v0, 0x7f0700bf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->REMAIN_COUNTER_WIDTH:I

    .line 38
    const v0, 0x7f0700c2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->PERCENTAGE_WIDTH:I

    .line 40
    const v0, 0x7f070016

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->SPEED_REC_WIDTH:I

    .line 42
    const v0, 0x7f080002

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->BATTERY_INDICATOR_VISIBLE_LEVEL:I

    .line 43
    const v0, 0x7f080003

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->REMAIN_TIME_VISIBLE_RATIO:F

    .line 45
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FOCUS_BUTTON_POS_X:I

    .line 46
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FOCUS_BUTTON_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 8
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    const/4 v7, 0x1

    .line 72
    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 49
    const/16 v0, 0xe10

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->SECONDS_IN_AN_HOUR:I

    .line 50
    const v0, 0x15180

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->SECONDS_IN_A_DAY:I

    .line 51
    const v0, 0x1517f

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->MAX_RECORDING_TIME:I

    .line 63
    const-string v0, "00:00:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mHMS:Ljava/lang/String;

    .line 67
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FOCUS_BUTTON_POS_X:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTouchFocusRectCenterX:I

    .line 68
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FOCUS_BUTTON_POS_Y:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTouchFocusRectCenterY:I

    .line 74
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setCaptureEnabled(Z)V

    .line 75
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setTouchHandled(Z)V

    .line 77
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 80
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->init()V

    .line 81
    return-void
.end method

.method private hmsConvert(I)V
    .locals 9
    .parameter "seconds"

    .prologue
    const/16 v8, 0xa

    .line 335
    const v6, 0x1517f

    if-le p1, v6, :cond_0

    .line 336
    const p1, 0x1517f

    .line 339
    :cond_0
    rem-int/lit8 v4, p1, 0x3c

    .line 340
    .local v4, sec:I
    div-int/lit16 v0, p1, 0xe10

    .line 341
    .local v0, hr:I
    div-int/lit8 v6, p1, 0x3c

    mul-int/lit8 v7, v0, 0x3c

    sub-int v2, v6, v7

    .line 344
    .local v2, min:I
    if-ge v4, v8, :cond_1

    .line 345
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, secString:Ljava/lang/String;
    :goto_0
    if-ge v2, v8, :cond_2

    .line 351
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, minString:Ljava/lang/String;
    :goto_1
    if-ge v0, v8, :cond_3

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, hrString:Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mHMS:Ljava/lang/String;

    .line 363
    return-void

    .line 347
    .end local v1           #hrString:Ljava/lang/String;
    .end local v3           #minString:Ljava/lang/String;
    .end local v5           #secString:Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #secString:Ljava/lang/String;
    goto :goto_0

    .line 353
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #minString:Ljava/lang/String;
    goto :goto_1

    .line 359
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #hrString:Ljava/lang/String;
    goto :goto_2
.end method

.method private init()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    .line 86
    .local v1, glContext:Lcom/sec/android/glview/TwGLContext;
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 87
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_HEIGHT:I

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v6, 0x7f0b0009

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->handleGuidelineSettingsChanged(I)V

    .line 100
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    .line 102
    new-instance v0, Lcom/sec/android/glview/TwGLIndicator;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLIndicator;->setRotatable(Z)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->SIDE_MENU_WIDTH:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_PORTRAIT_POS_X:I

    int-to-float v3, v3

    invoke-virtual {v0, v7, v2, v3}, Lcom/sec/android/glview/TwGLIndicator;->setLeftTop(IFF)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v10, v2, v3}, Lcom/sec/android/glview/TwGLIndicator;->setLeftTop(IFF)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->SIDE_MENU_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_PORTRAIT_POS_X:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v11, v2, v3}, Lcom/sec/android/glview/TwGLIndicator;->setLeftTop(IFF)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getRemainStorage()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTime:I

    .line 109
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTime:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->hmsConvert(I)V

    .line 110
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->REMAIN_COUNTER_WIDTH:I

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mHMS:Ljava/lang/String;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_TEXT_SIZE:I

    int-to-float v7, v2

    move v2, v8

    move v3, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTimeIndicator:Lcom/sec/android/glview/TwGLText;

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTimeIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v11, v10}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTimeIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 114
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CheckMemory;->getTotalStorage(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTotalStorage:J

    .line 116
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-direct {v0, v1, v8, v8}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setVisibility(I)V

    .line 118
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->PERCENTAGE_WIDTH:I

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v2

    const-string v6, ""

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_TEXT_SIZE:I

    int-to-float v7, v2

    move v2, v8

    move v3, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v11, v10}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 122
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    invoke-direct {v0, v1, v8, v8}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setVisibility(I)V

    .line 125
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v2

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mAudioOffIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecIndicator;

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mAudioOffIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecIndicator;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecIndicator;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTimeIndicator:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBatteryLevel()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isBatteryCharging()Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setBatteryLevel(IZ)V

    .line 141
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTime:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRemainTime(I)V

    .line 143
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->initGPSIndicator()V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 149
    return-void
.end method


# virtual methods
.method protected ChangeGPS(I)V
    .locals 3
    .parameter "modeid"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    if-nez v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 465
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 467
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    .line 470
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 171
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 172
    return-void
.end method

.method public getTouchFocusRectCenterX()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTouchFocusRectCenterX:I

    return v0
.end method

.method public getTouchFocusRectCenterY()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTouchFocusRectCenterY:I

    return v0
.end method

.method public getTouchRectHeight()F
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getYDelta()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getTouchRectWidth()F
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getXDelta()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public hideAudioOffIndicator()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mAudioOffIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecIndicator;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mAudioOffIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecIndicator;->setVisibility(I)V

    .line 497
    :cond_0
    return-void
.end method

.method public hideFocusIndicator()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    .line 243
    :cond_0
    return-void
.end method

.method public hideFocusRect()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->hideFocusRect()V

    .line 313
    :cond_0
    return-void
.end method

.method public initGPSIndicator()V
    .locals 2

    .prologue
    .line 454
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v1, :cond_0

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 458
    .local v0, camSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->ChangeGPS(I)V

    goto :goto_0
.end method

.method public isFocusIndicatorShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 279
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-nez v1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 176
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 198
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 206
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->isCAFDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    const-string v0, "TwGLCamcorderBaseIndicators"

    const-string v1, "slow motion is enabled, hide focus indicator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->hideFocusIndicator()V

    goto :goto_0

    .line 200
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->handleGuidelineSettingsChanged(I)V

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    goto :goto_0

    .line 214
    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mStorageIndicator:Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->setStorage(I)V

    .line 217
    :cond_3
    invoke-static {p2}, Lcom/sec/android/app/camera/CheckMemory;->getTotalStorage(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTotalStorage:J

    goto :goto_0

    .line 220
    :sswitch_4
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->ChangeGPS(I)V

    goto :goto_0

    .line 198
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_1
        0x68 -> :sswitch_1
        0x75 -> :sswitch_3
        0x77 -> :sswitch_0
        0x7b -> :sswitch_2
        0x82 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 191
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 192
    return-void
.end method

.method public resetFocus(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FOCUS_BUTTON_POS_X:I

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FOCUS_BUTTON_POS_Y:I

    .line 162
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    .line 163
    return-void
.end method

.method public resetPosIndicator()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->resetPosIndicator()V

    .line 307
    :cond_0
    return-void
.end method

.method public resetTouchFocusRectView()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->reset()V

    .line 296
    :cond_0
    return-void
.end method

.method public restoreMenu()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 183
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    .line 184
    return-void
.end method

.method public setBatteryLevel(IZ)V
    .locals 7
    .parameter "level"
    .parameter "ischarging"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 410
    if-eqz p2, :cond_0

    .line 411
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 412
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    .line 413
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 452
    :goto_0
    return-void

    .line 416
    :cond_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->BATTERY_INDICATOR_VISIBLE_LEVEL:I

    if-gt p1, v1, :cond_1

    if-nez p1, :cond_2

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 418
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0

    .line 422
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 423
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getDisplayBatteryPercentageEnabled()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 424
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 425
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryPercentage:Lcom/sec/android/glview/TwGLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 428
    :cond_3
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->BATTERY_INDICATOR_VISIBLE_LEVEL:I

    div-int/lit8 v0, v1, 0x5

    .line 429
    .local v0, factor:I
    div-int v1, p1, v0

    packed-switch v1, :pswitch_data_0

    .line 449
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 431
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 434
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 437
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 440
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 443
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 446
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mBatteryIndicator:Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->setLevel(I)V

    goto :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setConnectingStateGPS(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    if-nez v0, :cond_0

    .line 491
    :goto_0
    return-void

    .line 480
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 488
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    .line 482
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    .line 485
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGPSIndicator:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->setGPS(I)V

    goto :goto_0

    .line 480
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFocusIndicator(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setFocusIndicator(I)V

    .line 237
    :cond_0
    return-void
.end method

.method public setGuideLineSize(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mGuideLineView:Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->setGuideLineSize(Landroid/view/View;)V

    .line 332
    :cond_0
    return-void
.end method

.method public setRecordingLayout(Z)V
    .locals 6
    .parameter "isRecording"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 384
    if-eqz p1, :cond_1

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->SIDE_MENU_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setLeftTop(IFF)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_PORTRAIT_POS_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setLeftTop(IFF)V

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTimeIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 398
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLIndicator;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLIndicator;->setOrientation(I)V

    .line 399
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_LANDSCAPE_POS_X:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setLeftTop(IFF)V

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GORUP_POS_Y:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->SIDE_MENU_WIDTH:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FULL_SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->INDICATOR_GROUP_PORTRAIT_POS_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setLeftTop(IFF)V

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAvailableStorage()J

    move-result-wide v0

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTotalStorage:J

    long-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->REMAIN_TIME_VISIBLE_RATIO:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTimeIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_0
.end method

.method public setRemainTime(I)V
    .locals 3
    .parameter "seconds"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_0

    .line 367
    const-string v0, "TwGLCamcorderBaseIndicators"

    const-string v1, "failed to set remain time - activity null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CheckMemory;->getTotalStorage(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTotalStorage:J

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAvailableStorage()J

    move-result-wide v0

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTotalStorage:J

    long-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->REMAIN_TIME_VISIBLE_RATIO:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTimeIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    .line 378
    :goto_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTime:I

    .line 379
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->hmsConvert(I)V

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTimeIndicator:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mIndicatorGroup:Lcom/sec/android/glview/TwGLIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mRemainTimeIndicator:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLIndicator;->setVisibility(Lcom/sec/android/glview/TwGLView;I)V

    goto :goto_1
.end method

.method public setTouchFocusRectCenter(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 269
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTouchFocusRectCenterX:I

    .line 270
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTouchFocusRectCenterY:I

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->onFocus(II)V

    .line 276
    :cond_1
    return-void
.end method

.method public showAudioOffIndicator()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mAudioOffIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecIndicator;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mAudioOffIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecIndicator;->setAudioRecord(I)V

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mAudioOffIndicator:Lcom/sec/android/app/camera/glwidget/TwGLAudioRecIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecIndicator;->setVisibility(I)V

    goto :goto_0
.end method

.method public showFocusIndicator()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator(Z)V

    goto :goto_0
.end method

.method public showFocusIndicator(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->showFocusIndicator(I)V

    .line 319
    :cond_0
    return-void
.end method

.method public showFocusIndicator(Z)V
    .locals 2
    .parameter "resetPosition"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    .line 260
    :goto_0
    if-eqz p1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->resetPosIndicator()V

    .line 262
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FOCUS_BUTTON_POS_X:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTouchFocusRectCenterX:I

    .line 263
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->FOCUS_BUTTON_POS_Y:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mTouchFocusRectCenterY:I

    .line 266
    :cond_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public shrinkFocusRect()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->mFocusButton:Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLFocusButton;->shrinkRect()V

    .line 302
    :cond_0
    return-void
.end method
