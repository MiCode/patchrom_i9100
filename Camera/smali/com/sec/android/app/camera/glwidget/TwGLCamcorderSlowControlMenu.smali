.class public Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLCamcorderSlowControlMenu.java"


# static fields
.field private static final SPEEDCONTROL_BUTTON_POX_X:[I = null

.field private static final SPEEDCONTROL_BUTTON_POX_Y:[I = null

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

.field protected static final TAG:Ljava/lang/String; = "TwGLCamcorderSlowControlMenu"


# instance fields
.field private final SPEED_2X_SLOWER:I

.field private final SPEED_4X_SLOWER:I

.field private final SPEED_8X_SLOWER:I

.field private final SPEED_ERROR:I

.field private mCurrentSlowSpeed:I

.field private mIsBlockSlowButton:Z

.field private mModeButton2:Lcom/sec/android/glview/TwGLButton;

.field private mModeButton3:Lcom/sec/android/glview/TwGLButton;

.field private mModeButtonLine:Lcom/sec/android/glview/TwGLImage;

.field private mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

.field private mSlowControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mSlowSpeedText:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
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

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEEDCONTROL_BUTTON_POX_X:[I

    .line 50
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

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEEDCONTROL_BUTTON_POX_Y:[I

    .line 58
    const v0, 0x7f0700cd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEED_CONTROL_BUTTON_WIDTH:I

    .line 59
    const v0, 0x7f0700ce

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEED_CONTROL_BUTTON_HEIGHT:I

    .line 60
    const v0, 0x7f0700cf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEED_CONTROL_BUTTON_TEXT_SIZE:I

    .line 61
    const v0, 0x7f0700d9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPPED_CONTROL_LIST_ITEM_WIDTH:I

    .line 62
    const v0, 0x7f0700da

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPPED_CONTROL_LIST_ITEM_HEIGHT:I

    .line 63
    const v0, 0x7f0700d8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPPED_CONTROL_LIST_ITEM_TEXT_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 10
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 83
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEED_ERROR:I

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEED_2X_SLOWER:I

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEED_4X_SLOWER:I

    .line 68
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEED_8X_SLOWER:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mIsBlockSlowButton:Z

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mCurrentSlowSpeed:I

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "X 1/2"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "X 1/4"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "X 1/8"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowSpeedText:[Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEEDCONTROL_BUTTON_POX_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEEDCONTROL_BUTTON_POX_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEED_CONTROL_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEED_CONTROL_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02017b

    const v7, 0x7f02017c

    const v8, 0x7f02017c

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    .line 88
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEEDCONTROL_BUTTON_POX_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEEDCONTROL_BUTTON_POX_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEED_CONTROL_BUTTON_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPPED_CONTROL_LIST_ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPPED_CONTROL_LIST_ITEM_HEIGHT:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 90
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPPED_CONTROL_LIST_ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPPED_CONTROL_LIST_ITEM_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mModeButton2:Lcom/sec/android/glview/TwGLButton;

    .line 91
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPPED_CONTROL_LIST_ITEM_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPPED_CONTROL_LIST_ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPPED_CONTROL_LIST_ITEM_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mModeButton3:Lcom/sec/android/glview/TwGLButton;

    .line 92
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPPED_CONTROL_LIST_ITEM_HEIGHT:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    const v4, 0x7f02017e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mModeButtonLine:Lcom/sec/android/glview/TwGLImage;

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mModeButton2:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mModeButton3:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mModeButtonLine:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mModeButton2:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mModeButton2:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mModeButton3:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mModeButton3:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 115
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->setCaptureEnabled(Z)V

    .line 116
    invoke-virtual {p0, p3, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->init(Lcom/sec/android/glview/TwGLViewGroup;I)V

    .line 118
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mIsBlockSlowButton:Z

    return p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 136
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    .line 138
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 139
    return-void
.end method

.method public getSpeedControl()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mCurrentSlowSpeed:I

    return v0
.end method

.method public init(Lcom/sec/android/glview/TwGLViewGroup;I)V
    .locals 9
    .parameter "parent"
    .parameter "viewId"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEEDCONTROL_BUTTON_POX_X:[I

    aget v1, v1, v6

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEEDCONTROL_BUTTON_POX_Y:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEEDCONTROL_BUTTON_POX_X:[I

    aget v1, v1, v7

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEEDCONTROL_BUTTON_POX_Y:[I

    aget v2, v2, v7

    int-to-float v2, v2

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEEDCONTROL_BUTTON_POX_X:[I

    aget v1, v1, v8

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEEDCONTROL_BUTTON_POX_Y:[I

    aget v2, v2, v8

    int-to-float v2, v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowSpeedText:[Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mCurrentSlowSpeed:I

    aget-object v1, v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEED_CONTROL_BUTTON_TEXT_SIZE:I

    int-to-float v2, v2

    const/16 v3, 0x88

    const/16 v4, 0xa0

    const/16 v5, 0xb9

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEEDCONTROL_BUTTON_POX_X:[I

    aget v1, v1, v6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEED_CONTROL_BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEEDCONTROL_BUTTON_POX_Y:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEEDCONTROL_BUTTON_POX_X:[I

    aget v1, v1, v7

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEEDCONTROL_BUTTON_POX_Y:[I

    aget v2, v2, v7

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEED_CONTROL_BUTTON_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEEDCONTROL_BUTTON_POX_X:[I

    aget v1, v1, v8

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEED_CONTROL_BUTTON_HEIGHT:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEEDCONTROL_BUTTON_POX_Y:[I

    aget v2, v2, v8

    int-to-float v2, v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f02017d

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 130
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 180
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 270
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mIsBlockSlowButton:Z

    if-eqz v1, :cond_0

    .line 318
    :goto_0
    return v2

    .line 273
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mIsBlockSlowButton:Z

    .line 305
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 315
    .local v0, blockSlowButtonThread:Ljava/lang/Thread;
    const-string v1, "blockSlowButtonThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->onHideSlowControlButton()V

    .line 158
    return-void
.end method

.method public onHideSlowControlButton()V
    .locals 8

    .prologue
    const v2, 0x7f02017c

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f02017b

    invoke-virtual {v0, v1, v2, v2, v6}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowSpeedText:[Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mCurrentSlowSpeed:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEED_CONTROL_BUTTON_TEXT_SIZE:I

    int-to-float v2, v2

    const/16 v3, 0x88

    const/16 v4, 0xa0

    const/16 v5, 0xb9

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 176
    :cond_1
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->onHideSlowControlButton()V

    .line 154
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->onHideSlowControlButton()V

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->onShowSlowControlButton()V

    goto :goto_0
.end method

.method public onShowSlowControlButton()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 164
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 184
    const-string v0, "TwGLCamcorderSlowControlMenu"

    const-string v1, "SpeedControl Menu restart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->setTouchHandled(Z)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowSpeedText:[Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mCurrentSlowSpeed:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEED_CONTROL_BUTTON_TEXT_SIZE:I

    int-to-float v2, v2

    const/16 v3, 0x88

    const/16 v4, 0xa0

    const/16 v5, 0xb9

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 195
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

    .line 251
    if-ne p1, v6, :cond_0

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowSpeedText:[Ljava/lang/String;

    aget-object v1, v1, v5

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEED_CONTROL_BUTTON_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mModeButton2:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowSpeedText:[Ljava/lang/String;

    aget-object v1, v1, v6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPPED_CONTROL_LIST_ITEM_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mModeButton3:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowSpeedText:[Ljava/lang/String;

    aget-object v1, v1, v7

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPPED_CONTROL_LIST_ITEM_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 266
    :goto_0
    return-void

    .line 255
    :cond_0
    if-ne p1, v7, :cond_1

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowSpeedText:[Ljava/lang/String;

    aget-object v1, v1, v6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEED_CONTROL_BUTTON_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mModeButton2:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowSpeedText:[Ljava/lang/String;

    aget-object v1, v1, v5

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPPED_CONTROL_LIST_ITEM_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mModeButton3:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowSpeedText:[Ljava/lang/String;

    aget-object v1, v1, v7

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPPED_CONTROL_LIST_ITEM_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    goto :goto_0

    .line 259
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowSpeedText:[Ljava/lang/String;

    aget-object v1, v1, v7

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPEED_CONTROL_BUTTON_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mModeButton2:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowSpeedText:[Ljava/lang/String;

    aget-object v1, v1, v5

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPPED_CONTROL_LIST_ITEM_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mModeButton3:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowSpeedText:[Ljava/lang/String;

    aget-object v1, v1, v6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->SPPED_CONTROL_LIST_ITEM_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    goto :goto_0

    .line 264
    :cond_2
    const-string v0, "TwGLCamcorderSlowControlMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SlowRecording] ModeButton is Error(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCurrentSlowSpeed(I)I
    .locals 4
    .parameter "select"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 233
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mCurrentSlowSpeed:I

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mCurrentSlowSpeed:I

    if-ne v0, v2, :cond_1

    if-eq p1, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mCurrentSlowSpeed:I

    if-ne v0, v3, :cond_3

    if-ne p1, v1, :cond_3

    .line 236
    :cond_2
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mCurrentSlowSpeed:I

    .line 247
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mCurrentSlowSpeed:I

    return v0

    .line 237
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mCurrentSlowSpeed:I

    if-ne v0, v1, :cond_4

    if-eq p1, v1, :cond_6

    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mCurrentSlowSpeed:I

    if-ne v0, v2, :cond_5

    if-eqz p1, :cond_6

    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mCurrentSlowSpeed:I

    if-ne v0, v3, :cond_7

    if-ne p1, v2, :cond_7

    .line 240
    :cond_6
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mCurrentSlowSpeed:I

    goto :goto_0

    .line 241
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mCurrentSlowSpeed:I

    if-ne v0, v1, :cond_8

    if-eq p1, v2, :cond_a

    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mCurrentSlowSpeed:I

    if-ne v0, v2, :cond_9

    if-eq p1, v2, :cond_a

    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mCurrentSlowSpeed:I

    if-ne v0, v3, :cond_b

    if-nez p1, :cond_b

    .line 244
    :cond_a
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mCurrentSlowSpeed:I

    goto :goto_0

    .line 246
    :cond_b
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mCurrentSlowSpeed:I

    goto :goto_0
.end method

.method public setSpeedControl(I)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 326
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mCurrentSlowSpeed:I

    .line 327
    return-void
.end method

.method public starButtonAnimation(Z)V
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v5, 0x1

    .line 199
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLButton;->getOrientation()I

    move-result v3

    .line 203
    .local v3, orientation:I
    packed-switch v3, :pswitch_data_0

    .line 217
    const-string v4, "TwGLCamcorderSlowControlMenu"

    const-string v5, "TwGLCamcorderSlowControlMenu: tarButtonAnimation orientation is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    return-void

    .line 205
    :pswitch_0
    const/4 v1, 0x2

    .line 220
    .local v1, direction:I
    :goto_1
    if-eqz p1, :cond_0

    .line 221
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {v4, v1, v5}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    .line 222
    .local v0, anim:Landroid/view/animation/Animation;
    const/4 v2, 0x0

    .line 228
    .local v2, isHide:Z
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4, v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 229
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    goto :goto_0

    .line 208
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v1           #direction:I
    .end local v2           #isHide:Z
    :pswitch_1
    const/4 v1, 0x1

    .line 209
    .restart local v1       #direction:I
    goto :goto_1

    .line 211
    .end local v1           #direction:I
    :pswitch_2
    const/4 v1, 0x3

    .line 212
    .restart local v1       #direction:I
    goto :goto_1

    .line 214
    .end local v1           #direction:I
    :pswitch_3
    const/4 v1, 0x0

    .line 215
    .restart local v1       #direction:I
    goto :goto_1

    .line 224
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSlowControlMenu;->mSlowControlButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {v4, v1, v5}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    .line 225
    .restart local v0       #anim:Landroid/view/animation/Animation;
    const/4 v2, 0x1

    .restart local v2       #isHide:Z
    goto :goto_2

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
