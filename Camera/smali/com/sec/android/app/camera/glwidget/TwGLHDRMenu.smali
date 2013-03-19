.class public Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLHDRMenu.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final HDRSHOT_BUTTON_HEIGHT:I = 0x0

.field private static final HDRSHOT_BUTTON_ICON_POS_X:[F = null

.field private static final HDRSHOT_BUTTON_ICON_POS_Y:[F = null

#the value of this static final field might be set in the static constructor
.field private static final HDRSHOT_BUTTON_TEXT_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HDRSHOT_BUTTON_WIDTH:I = 0x0

.field private static HDRSHOT_POPUP_GROUP_HEIGHT:F = 0.0f

.field private static HDRSHOT_POPUP_GROUP_WIDTH:F = 0.0f

.field private static HDRSHOT_POPUP_GROUP_X:F = 0.0f

.field private static HDRSHOT_POPUP_GROUP_Y:F = 0.0f

.field private static HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F = null

.field private static HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F = null

.field private static HDRSHOT_PROGRESSBAR_HEIGHT:F = 0.0f

.field private static HDRSHOT_PROGRESSBAR_WIDTH:F = 0.0f

.field private static HDRSHOT_PROGRESSBAR_X:F = 0.0f

.field private static HDRSHOT_PROGRESSBAR_Y:F = 0.0f

.field private static HDRSHOT_PROGRESS_TEXT_HEIGHT:F = 0.0f

.field private static HDRSHOT_PROGRESS_TEXT_SIZE:F = 0.0f

.field private static HDRSHOT_PROGRESS_TEXT_WIDTH:F = 0.0f

.field private static HDRSHOT_PROGRESS_TEXT_X:F = 0.0f

.field private static HDRSHOT_PROGRESS_TEXT_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_POS_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_POS_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_SIZE:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_WIDTH:F = 0.0f

.field protected static final TAG:Ljava/lang/String; = "TwGLHDRMenu"


# instance fields
.field private final HDR_LEVEL_NORMAL:I

.field private final HDR_LEVEL_STRONG:I

.field private mHDRMode:I

.field private mHDRText:[I

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mModeButton:Lcom/sec/android/glview/TwGLButton;

.field private mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mProgressText:Lcom/sec/android/glview/TwGLText;

.field private mSideMenuHidden:Z

.field private mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    const v0, 0x7f070171

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_X:F

    .line 45
    const v0, 0x7f070172

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_Y:F

    .line 46
    const v0, 0x7f070173

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_WIDTH:F

    .line 47
    const v0, 0x7f070174

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_HEIGHT:F

    .line 48
    const v0, 0x7f070185

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_X:F

    .line 49
    const v0, 0x7f070187

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_Y:F

    .line 50
    const v0, 0x7f070188

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_WIDTH:F

    .line 51
    const v0, 0x7f070189

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_HEIGHT:F

    .line 52
    const v0, 0x7f080022

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_SIZE:F

    .line 53
    const v0, 0x7f070177

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_WIDTH:F

    .line 54
    const v0, 0x7f070178

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_HEIGHT:F

    .line 55
    const v0, 0x7f070182

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_X:F

    .line 56
    const v0, 0x7f070183

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_Y:F

    .line 57
    new-array v0, v4, [F

    const v1, 0x7f07018a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f07018b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    .line 59
    new-array v0, v4, [F

    const v1, 0x7f07018c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f07018d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    .line 62
    const v0, 0x7f07018e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    .line 63
    const v0, 0x7f07018f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    .line 64
    const v0, 0x7f070079

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    const v1, 0x7f070097

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_POS_X:F

    .line 65
    const v0, 0x7f07007a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_POS_Y:F

    .line 66
    const v0, 0x7f080023

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_SIZE:F

    .line 68
    const v0, 0x7f0701ec

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_WIDTH:I

    .line 69
    const v0, 0x7f0701ed

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_HEIGHT:I

    .line 70
    const v0, 0x7f0701f6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_TEXT_SIZE:I

    .line 72
    new-array v0, v6, [F

    const v1, 0x7f0701ee

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0701ef

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0701f0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0701f1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_X:[F

    .line 78
    new-array v0, v6, [F

    const v1, 0x7f0701f2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0701f3

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0701f4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0701f5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_Y:[F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 9
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

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDR_LEVEL_NORMAL:I

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDR_LEVEL_STRONG:I

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mSideMenuHidden:Z

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRMode:I

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRText:[I

    .line 103
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POPUP_GROUP_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 105
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_HEIGHT:F

    const v6, 0x7f09000c

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESS_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    .line 108
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_HEIGHT:F

    const v6, 0x7f0201fc

    const v7, 0x7f0201fb

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 110
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    const v6, 0x7f0900d7

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 112
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_Y:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    const v4, 0x7f02000c

    const v5, 0x7f02000d

    const v6, 0x7f02000d

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_HEIGHT:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f090178

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_TEXT_SIZE:I

    int-to-float v2, v2

    const/16 v3, 0x88

    const/16 v4, 0xa0

    const/16 v5, 0xb9

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f090178

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setRotatable(Z)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setCaptureEnabled(Z)V

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setTouchHandled(Z)V

    .line 141
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->init()V

    .line 142
    return-void

    .line 97
    :array_0
    .array-data 0x4
        0x78t 0x1t 0x9t 0x7ft
        0x79t 0x1t 0x9t 0x7ft
    .end array-data
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x4000

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0201f6

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v3

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v3

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_X:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLProgressBar;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    const v2, 0x7f07007a

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_PROGRESSBAR_Y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v4

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    const v2, 0x7f07007e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v7

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_POS_X:F

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const v1, 0x7f07007d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HELP_TEXT_WIDTH:F

    const v3, 0x7f07007e

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_X:[F

    aget v1, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_Y:[F

    aget v2, v2, v4

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_X:[F

    aget v1, v1, v5

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_Y:[F

    aget v2, v2, v5

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_X:[F

    aget v1, v1, v6

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_ICON_POS_Y:[F

    aget v2, v2, v6

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->resetAcquisitionProgress()V

    .line 173
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 307
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    .line 309
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 310
    return-void
.end method

.method public getHDRMode()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRMode:I

    return v0
.end method

.method public getProgressValue()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 185
    :cond_0
    return-void
.end method

.method public hideModeButton()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 197
    :cond_0
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 249
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 214
    :cond_0
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 8
    .parameter "view"

    .prologue
    const/16 v7, 0xb9

    const/16 v6, 0xa0

    const/16 v5, 0x88

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_3

    .line 315
    const-string v0, "TwGLHDRMenu"

    const-string v3, "mHDRmodeButton clicked Change mode"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "TwGLHDRMenu"

    const-string v2, "HDRshot is Capturing"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 337
    :goto_0
    return v0

    .line 322
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRMode:I

    if-nez v0, :cond_2

    .line 323
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRMode:I

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->setHDRShotModeChanged(I)V

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->onHDRModeSelect(I)V

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRText:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_TEXT_SIZE:I

    int-to-float v4, v4

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRText:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    :cond_1
    :goto_1
    move v0, v2

    .line 335
    goto :goto_0

    .line 328
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRMode:I

    if-ne v0, v2, :cond_1

    .line 329
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRMode:I

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setHDRShotModeChanged(I)V

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onHDRModeSelect(I)V

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRText:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_TEXT_SIZE:I

    int-to-float v4, v4

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRText:[I

    aget v1, v4, v1

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 337
    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hideHelpText()V

    .line 207
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hideModeButton()V

    .line 208
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 264
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 266
    const/4 v0, 0x1

    .line 270
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
    .line 274
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 276
    const/4 v0, 0x1

    .line 280
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->resetAcquisitionProgress()V

    .line 293
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->reset()V

    .line 297
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showHelpText()V

    .line 201
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showModeButton()V

    .line 202
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hidePostCaptureLayout()V

    .line 203
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 285
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hidePostCaptureLayout()V

    .line 286
    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setTouchHandled(Z)V

    .line 222
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mSideMenuHidden:Z

    .line 223
    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1
    .parameter "nProgress"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 229
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mSideMenuHidden:Z

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setTouchHandled(Z)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenuItems()V

    .line 234
    :cond_0
    return-void
.end method

.method public setHDRMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    .line 345
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRMode:I

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRText:[I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRMode:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->HDRSHOT_BUTTON_TEXT_SIZE:I

    int-to-float v2, v2

    const/16 v3, 0x88

    const/16 v4, 0xa0

    const/16 v5, 0xb9

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRText:[I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHDRMode:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 238
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 242
    return-void
.end method

.method public setRederingProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 261
    return-void
.end method

.method public showHelpText()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 179
    :cond_0
    return-void
.end method

.method public showModeButton()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 191
    :cond_0
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPopupGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->mPostCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 255
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hideHelpText()V

    .line 256
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hideModeButton()V

    .line 257
    return-void
.end method
