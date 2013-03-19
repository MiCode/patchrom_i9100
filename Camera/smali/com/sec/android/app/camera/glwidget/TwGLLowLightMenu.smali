.class public Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLLowLightMenu.java"


# static fields
.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_POS_X:F

.field private static final HELP_TEXT_POS_Y:F

.field private static final HELP_TEXT_SIZE:F

.field private static final HELP_TEXT_WIDTH:F

.field private static LOWLIGHTSHOT_POPUP_GROUP_HEIGHT:F

.field private static LOWLIGHTSHOT_POPUP_GROUP_WIDTH:F

.field private static LOWLIGHTSHOT_POPUP_GROUP_X:F

.field private static LOWLIGHTSHOT_POPUP_GROUP_Y:F

.field private static LOWLIGHTSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

.field private static LOWLIGHTSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

.field private static LOWLIGHTSHOT_PROGRESSBAR_HEIGHT:F

.field private static LOWLIGHTSHOT_PROGRESSBAR_WIDTH:F

.field private static LOWLIGHTSHOT_PROGRESSBAR_X:F

.field private static LOWLIGHTSHOT_PROGRESSBAR_Y:F

.field private static LOWLIGHTSHOT_PROGRESS_TEXT_HEIGHT:F

.field private static LOWLIGHTSHOT_PROGRESS_TEXT_SIZE:F

.field private static LOWLIGHTSHOT_PROGRESS_TEXT_WIDTH:F

.field private static LOWLIGHTSHOT_PROGRESS_TEXT_X:F

.field private static LOWLIGHTSHOT_PROGRESS_TEXT_Y:F


# instance fields
.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mProgressText:Lcom/sec/android/glview/TwGLText;

.field private mSideMenuHidden:Z

.field private mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    const v0, 0x7f070171

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_POPUP_GROUP_X:F

    .line 38
    const v0, 0x7f070172

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_POPUP_GROUP_Y:F

    .line 39
    const v0, 0x7f070173

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_POPUP_GROUP_WIDTH:F

    .line 40
    const v0, 0x7f070174

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_POPUP_GROUP_HEIGHT:F

    .line 41
    const v0, 0x7f070185

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_PROGRESS_TEXT_X:F

    .line 42
    const v0, 0x7f070187

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_PROGRESS_TEXT_Y:F

    .line 43
    const v0, 0x7f070188

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_PROGRESS_TEXT_WIDTH:F

    .line 44
    const v0, 0x7f070189

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_PROGRESS_TEXT_HEIGHT:F

    .line 45
    const v0, 0x7f080022

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_PROGRESS_TEXT_SIZE:F

    .line 46
    const v0, 0x7f070177

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_PROGRESSBAR_WIDTH:F

    .line 47
    const v0, 0x7f070178

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_PROGRESSBAR_HEIGHT:F

    .line 48
    const v0, 0x7f070182

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_PROGRESSBAR_X:F

    .line 49
    const v0, 0x7f070183

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_PROGRESSBAR_Y:F

    .line 50
    new-array v0, v4, [F

    const v1, 0x7f07018a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f07018b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    .line 52
    new-array v0, v4, [F

    const v1, 0x7f07018c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f07018d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    .line 55
    const v0, 0x7f07018e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->HELP_TEXT_WIDTH:F

    .line 56
    const v0, 0x7f07018f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->HELP_TEXT_HEIGHT:F

    .line 57
    const v0, 0x7f070079

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    const v1, 0x7f070097

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->HELP_TEXT_POS_X:F

    .line 58
    const v0, 0x7f07007a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->HELP_TEXT_POS_Y:F

    .line 59
    const v0, 0x7f080023

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->HELP_TEXT_SIZE:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 9
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 72
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mSideMenuHidden:Z

    .line 74
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_POPUP_GROUP_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_POPUP_GROUP_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_POPUP_GROUP_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_POPUP_GROUP_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 76
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_PROGRESS_TEXT_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_PROGRESS_TEXT_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_PROGRESS_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_PROGRESS_TEXT_HEIGHT:F

    const v6, 0x7f09000c

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_PROGRESS_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    .line 79
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_PROGRESSBAR_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_PROGRESSBAR_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_PROGRESSBAR_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_PROGRESSBAR_HEIGHT:F

    const v6, 0x7f0201fc

    const v7, 0x7f0201fb

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 81
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->HELP_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->HELP_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->HELP_TEXT_HEIGHT:F

    const v6, 0x7f0900d7

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setRotatable(Z)V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->setCaptureEnabled(Z)V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->setTouchHandled(Z)V

    .line 101
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->init()V

    .line 102
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x0

    const/high16 v6, 0x4000

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0201f6

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v3

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v3

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_PROGRESSBAR_X:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLProgressBar;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    const v2, 0x7f07007a

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_PROGRESSBAR_Y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->LOWLIGHTSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v4

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->HELP_TEXT_HEIGHT:F

    const v2, 0x7f07007e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->HELP_TEXT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->HELP_TEXT_POS_X:F

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const v1, 0x7f07007d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->HELP_TEXT_WIDTH:F

    const v3, 0x7f07007e

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->resetAcquisitionProgress()V

    .line 129
    return-void
.end method


# virtual methods
.method public getProgressValue()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 141
    :cond_0
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 189
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->showHelpText()V

    .line 191
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 156
    :cond_0
    return-void
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->hideHelpText()V

    .line 150
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 205
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 207
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 215
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 217
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->resetAcquisitionProgress()V

    .line 234
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->reset()V

    .line 238
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->showHelpText()V

    .line 145
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->hidePostCaptureLayout()V

    .line 146
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 226
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->hidePostCaptureLayout()V

    .line 227
    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->setTouchHandled(Z)V

    .line 164
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mSideMenuHidden:Z

    .line 165
    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1
    .parameter "nProgress"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 171
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mSideMenuHidden:Z

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->setTouchHandled(Z)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenuItems()V

    .line 176
    :cond_0
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 180
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 184
    return-void
.end method

.method public setRederingProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 202
    return-void
.end method

.method public showHelpText()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 135
    :cond_0
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLLowLightMenu;->hideHelpText()V

    .line 198
    return-void
.end method
