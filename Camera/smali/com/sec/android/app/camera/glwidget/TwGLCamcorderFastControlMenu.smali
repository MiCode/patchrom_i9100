.class public Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLCamcorderFastControlMenu.java"


# static fields
.field private static final CONVERT_BASE_NUMBER:I = 0x6

.field private static final DROPDOWM_ITEM_SIZE:I = 0x2

.field private static final SPEEDCONTROL_BUTTON_POX_X:[I = null

.field private static final SPEEDCONTROL_BUTTON_POX_Y:[I = null

.field private static final SPEED_2X_FAST:I = 0x6

.field private static final SPEED_4X_FAST:I = 0x7

.field private static final SPEED_8X_FAST:I = 0x8

#the value of this static final field might be set in the static constructor
.field private static final SPEED_CONTROL_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SPEED_CONTROL_BUTTON_TEXT_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SPEED_CONTROL_BUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SPPED_CONTROL_LIST_ITEM_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SPPED_CONTROL_LIST_ITEM_TEXT_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SPPED_CONTROL_LIST_ITEM_WIDTH:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLCamcorderFastControlMenu"

.field private static final TIMELAPSE_10_SEC:I = 0x11

.field private static final TIMELAPSE_1_5_SEC:I = 0xc

.field private static final TIMELAPSE_1_SEC:I = 0xb

.field private static final TIMELAPSE_2_5_SEC:I = 0xe

.field private static final TIMELAPSE_2_SEC:I = 0xd

.field private static final TIMELAPSE_3_SEC:I = 0xf

.field private static final TIMELAPSE_5_SEC:I = 0x10

.field private static final TIMELAPSE_ERROR:I = 0xa


# instance fields
.field private mCurrentFastSpeed:I

.field private mFastControlButton:Lcom/sec/android/glview/TwGLButton;

.field private mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mIsBlockFastButton:Z

.field private mModeButton2:Lcom/sec/android/glview/TwGLButton;

.field private mModeButton3:Lcom/sec/android/glview/TwGLButton;

.field private mModeButtonLine:[Lcom/sec/android/glview/TwGLImage;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-array v0, v6, [I

    const v1, 0x7f0700d0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0700d1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0700d2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0700d3

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEEDCONTROL_BUTTON_POX_X:[I

    .line 53
    new-array v0, v6, [I

    const v1, 0x7f0700d4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0700d5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0700d6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0700d7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEEDCONTROL_BUTTON_POX_Y:[I

    .line 61
    const v0, 0x7f0700cd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEED_CONTROL_BUTTON_WIDTH:I

    .line 62
    const v0, 0x7f0700ce

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEED_CONTROL_BUTTON_HEIGHT:I

    .line 63
    const v0, 0x7f0700cf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEED_CONTROL_BUTTON_TEXT_SIZE:I

    .line 65
    const v0, 0x7f0700d9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPPED_CONTROL_LIST_ITEM_WIDTH:I

    .line 66
    const v0, 0x7f0700da

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPPED_CONTROL_LIST_ITEM_HEIGHT:I

    .line 67
    const v0, 0x7f0700d8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPPED_CONTROL_LIST_ITEM_TEXT_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 11
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 101
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mIsBlockFastButton:Z

    .line 86
    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderFastMotion()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mModeButtonLine:[Lcom/sec/android/glview/TwGLImage;

    .line 103
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEEDCONTROL_BUTTON_POX_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEEDCONTROL_BUTTON_POX_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEED_CONTROL_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEED_CONTROL_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02017b

    const v7, 0x7f02017c

    const v8, 0x7f02017c

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    .line 107
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEEDCONTROL_BUTTON_POX_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEEDCONTROL_BUTTON_POX_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEED_CONTROL_BUTTON_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPPED_CONTROL_LIST_ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPPED_CONTROL_LIST_ITEM_HEIGHT:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 110
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPPED_CONTROL_LIST_ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPPED_CONTROL_LIST_ITEM_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mModeButton2:Lcom/sec/android/glview/TwGLButton;

    .line 111
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPPED_CONTROL_LIST_ITEM_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPPED_CONTROL_LIST_ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPPED_CONTROL_LIST_ITEM_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mModeButton3:Lcom/sec/android/glview/TwGLButton;

    .line 117
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    const/4 v0, 0x2

    if-ge v10, v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mModeButtonLine:[Lcom/sec/android/glview/TwGLImage;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPPED_CONTROL_LIST_ITEM_HEIGHT:I

    mul-int/2addr v4, v10

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    const v5, 0x7f02017e

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v1, v0, v10

    .line 117
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mModeButton2:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mModeButton3:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 137
    const/4 v10, 0x0

    :goto_1
    const/4 v0, 0x2

    if-ge v10, v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mModeButtonLine:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v10

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 137
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mModeButton2:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mModeButton2:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mModeButton3:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mModeButton3:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 157
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->setCaptureEnabled(Z)V

    .line 159
    invoke-direct {p0, p3, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->init(Lcom/sec/android/glview/TwGLViewGroup;I)V

    .line 161
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mIsBlockFastButton:Z

    return p1
.end method

.method private covertSelectToSpeed(I)I
    .locals 1
    .parameter "select"

    .prologue
    .line 513
    add-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private covertSpeedToSelect(I)I
    .locals 1
    .parameter "speed"

    .prologue
    .line 517
    add-int/lit8 v0, p1, -0x6

    return v0
.end method

.method private getMenuString(I)Ljava/lang/String;
    .locals 1
    .parameter "speed"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->getSpeedResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Lcom/sec/android/glview/TwGLViewGroup;I)V
    .locals 9
    .parameter "parent"
    .parameter "viewId"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEEDCONTROL_BUTTON_POX_X:[I

    aget v1, v1, v6

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEEDCONTROL_BUTTON_POX_Y:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEEDCONTROL_BUTTON_POX_X:[I

    aget v1, v1, v7

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEEDCONTROL_BUTTON_POX_Y:[I

    aget v2, v2, v7

    int-to-float v2, v2

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEEDCONTROL_BUTTON_POX_X:[I

    aget v1, v1, v8

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEEDCONTROL_BUTTON_POX_Y:[I

    aget v2, v2, v8

    int-to-float v2, v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->getMenuString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEED_CONTROL_BUTTON_TEXT_SIZE:I

    int-to-float v2, v2

    const/16 v3, 0x88

    const/16 v4, 0xa0

    const/16 v5, 0xb9

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEEDCONTROL_BUTTON_POX_X:[I

    aget v1, v1, v6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEED_CONTROL_BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEEDCONTROL_BUTTON_POX_Y:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEEDCONTROL_BUTTON_POX_X:[I

    aget v1, v1, v7

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEEDCONTROL_BUTTON_POX_Y:[I

    aget v2, v2, v7

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEED_CONTROL_BUTTON_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEEDCONTROL_BUTTON_POX_X:[I

    aget v1, v1, v8

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEED_CONTROL_BUTTON_HEIGHT:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEEDCONTROL_BUTTON_POX_Y:[I

    aget v2, v2, v8

    int-to-float v2, v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f02017d

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 173
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 180
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    .line 182
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 183
    return-void
.end method

.method public endAnimation()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x12c

    const/4 v8, 0x0

    const/high16 v5, 0x4348

    const/high16 v4, -0x3cb8

    const/4 v7, 0x0

    .line 282
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLButton;->getOrientation()I

    move-result v2

    .line 283
    .local v2, to:I
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 286
    .local v1, animation:Landroid/view/animation/AnimationSet;
    packed-switch v2, :pswitch_data_0

    .line 300
    const-string v3, "TwGLCamcorderFastControlMenu"

    const-string v4, "TwGLCamcorderFastControlMenu: tarButtonAnimation orientation is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_0
    return-void

    .line 288
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v7, v7, v7, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 303
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 305
    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 306
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 307
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 308
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 310
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v3, 0x3f80

    invoke-direct {v0, v3, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 311
    .restart local v0       #anim:Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 312
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 313
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 315
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 316
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    goto :goto_0

    .line 291
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v7, v5, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 292
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 294
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v7, v7, v7, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 295
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 297
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v7, v4, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 298
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getSelectedItem(I)I
    .locals 6
    .parameter "select"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x7

    const/4 v1, 0x6

    .line 320
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    if-ne v0, v2, :cond_1

    if-eq p1, v4, :cond_2

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    if-ne v0, v3, :cond_3

    if-ne p1, v4, :cond_3

    .line 322
    :cond_2
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    .line 366
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    return v0

    .line 323
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    if-ne v0, v1, :cond_4

    if-eq p1, v4, :cond_6

    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    if-ne v0, v2, :cond_5

    if-eqz p1, :cond_6

    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    if-ne v0, v3, :cond_7

    if-ne p1, v5, :cond_7

    .line 325
    :cond_6
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    goto :goto_0

    .line 326
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    if-ne v0, v1, :cond_8

    if-eq p1, v5, :cond_a

    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    if-ne v0, v2, :cond_9

    if-eq p1, v5, :cond_a

    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    if-ne v0, v3, :cond_b

    if-nez p1, :cond_b

    .line 328
    :cond_a
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    goto :goto_0

    .line 365
    :cond_b
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    goto :goto_0
.end method

.method public getSpeedControl()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    return v0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 224
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 9
    .parameter "view"

    .prologue
    const/16 v8, 0xa0

    const/16 v7, 0x88

    const/4 v6, 0x1

    const v3, 0x7f02017c

    const/4 v5, 0x0

    .line 446
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mIsBlockFastButton:Z

    if-eqz v1, :cond_0

    .line 501
    :goto_0
    return v6

    .line 449
    :cond_0
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mIsBlockFastButton:Z

    .line 450
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v1, :cond_2

    .line 451
    const-string v1, "TwGLCamcorderFastControlMenu"

    const-string v2, "mFastControlButton on clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->getSelectedItem(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->setChangeModeButton(I)V

    .line 454
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 455
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    const v2, 0x7f02017b

    invoke-virtual {v1, v2, v3, v3, v5}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 456
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->getMenuString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEED_CONTROL_BUTTON_TEXT_SIZE:I

    int-to-float v3, v3

    const/16 v4, 0xb9

    invoke-static {v7, v8, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 457
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->endAnimation()V

    .line 488
    :goto_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 498
    .local v0, blockFastButtonThread:Ljava/lang/Thread;
    const-string v1, "blockFastButtonThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 459
    .end local v0           #blockFastButtonThread:Ljava/lang/Thread;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v3, v3, v3, v5}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 460
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->starAnimation()V

    .line 461
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 464
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mModeButton2:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v1, :cond_4

    .line 465
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->getSelectedItem(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->setChangeModeButton(I)V

    .line 482
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    const v2, 0x7f02017b

    invoke-virtual {v1, v2, v3, v3, v5}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 483
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->getMenuString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEED_CONTROL_BUTTON_TEXT_SIZE:I

    int-to-float v3, v3

    const/16 v4, 0xb9

    invoke-static {v7, v8, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 484
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    invoke-virtual {v1, v2, v6, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCamcorderSpeedMenuSelect(IZZ)V

    .line 485
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 486
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->endAnimation()V

    goto :goto_1

    .line 466
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mModeButton3:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v1, :cond_3

    .line 467
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->getSelectedItem(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->setChangeModeButton(I)V

    goto :goto_2
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->onHideFastControlButton()V

    .line 202
    return-void
.end method

.method public onHideFastControlButton()V
    .locals 8

    .prologue
    const v2, 0x7f02017c

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f02017b

    invoke-virtual {v0, v1, v2, v2, v6}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->getMenuString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEED_CONTROL_BUTTON_TEXT_SIZE:I

    int-to-float v2, v2

    const/16 v3, 0x88

    const/16 v4, 0xa0

    const/16 v5, 0xb9

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 220
    :cond_1
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->onHideFastControlButton()V

    .line 198
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderFastMotionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->onHideFastControlButton()V

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->onShowFastControlButton()V

    goto :goto_0
.end method

.method public onShowFastControlButton()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 208
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 228
    const-string v0, "TwGLCamcorderFastControlMenu"

    const-string v1, "SpeedControl Menu restart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->setTouchHandled(Z)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->getMenuString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEED_CONTROL_BUTTON_TEXT_SIZE:I

    int-to-float v2, v2

    const/16 v3, 0x88

    const/16 v4, 0xa0

    const/16 v5, 0xb9

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 239
    :cond_1
    return-void
.end method

.method public setChangeModeButton(I)V
    .locals 8
    .parameter "mode"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v3, 0xfe

    const/4 v5, 0x0

    const/16 v4, 0xff

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->getMenuString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPEED_CONTROL_BUTTON_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 372
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mModeButton2:Lcom/sec/android/glview/TwGLButton;

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->covertSelectToSpeed(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->getMenuString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPPED_CONTROL_LIST_ITEM_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mModeButton3:Lcom/sec/android/glview/TwGLButton;

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->covertSelectToSpeed(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->getMenuString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPPED_CONTROL_LIST_ITEM_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 442
    :goto_0
    return-void

    .line 375
    :cond_0
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mModeButton2:Lcom/sec/android/glview/TwGLButton;

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->covertSelectToSpeed(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->getMenuString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPPED_CONTROL_LIST_ITEM_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mModeButton3:Lcom/sec/android/glview/TwGLButton;

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->covertSelectToSpeed(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->getMenuString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPPED_CONTROL_LIST_ITEM_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    goto :goto_0

    .line 378
    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mModeButton2:Lcom/sec/android/glview/TwGLButton;

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->covertSelectToSpeed(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->getMenuString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPPED_CONTROL_LIST_ITEM_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mModeButton3:Lcom/sec/android/glview/TwGLButton;

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->covertSelectToSpeed(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->getMenuString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->SPPED_CONTROL_LIST_ITEM_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    goto :goto_0

    .line 440
    :cond_2
    const-string v0, "TwGLCamcorderFastControlMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FastRecording] ModeButton is Error(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSpeedControl(I)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 509
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mCurrentFastSpeed:I

    .line 510
    return-void
.end method

.method public starAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v5, 0x4248

    const/high16 v4, -0x3db8

    const/4 v7, 0x0

    .line 242
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLButton;->getOrientation()I

    move-result v2

    .line 243
    .local v2, from:I
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 246
    .local v1, animation:Landroid/view/animation/AnimationSet;
    packed-switch v2, :pswitch_data_0

    .line 260
    const-string v3, "TwGLCamcorderFastControlMenu"

    const-string v4, "TwGLCamcorderFastControlMenu: tarButtonAnimation orientation is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_0
    return-void

    .line 248
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v7, v7, v4, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 264
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 267
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 268
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 269
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 270
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 272
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v3, 0x3f80

    invoke-direct {v0, v7, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 273
    .restart local v0       #anim:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 274
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 275
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 277
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v1, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 278
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderFastControlMenu;->mFastControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    goto :goto_0

    .line 251
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v5, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 252
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 254
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v7, v7, v5, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 255
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 257
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v4, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 258
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
