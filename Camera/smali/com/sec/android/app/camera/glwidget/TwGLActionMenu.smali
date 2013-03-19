.class public Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLActionMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_ALPHA:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_HEIGHT:I = 0x0

.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_SETSIZE_WIDTH:[F = null

#the value of this static final field might be set in the static constructor
.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_WIDTH:I = 0x0

.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I = null

.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I = null

#the value of this static final field might be set in the static constructor
.field private static final ACTIONSHOT_HELP_TEXT_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ACTIONSHOT_HELP_TEXT_SIZE:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final ACTIONSHOT_HELP_TEXT_WIDTH:I = 0x0

.field private static final ACTIONSHOT_HELP_TEXT_X:[I = null

.field private static final ACTIONSHOT_HELP_TEXT_Y:[I = null

#the value of this static final field might be set in the static constructor
.field private static final ACTIONSHOT_RECT_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ACTIONSHOT_RECT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ACTIONSHOT_RECT_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ACTIONSHOT_RECT_WIDTH:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLActionMenu"


# instance fields
.field private mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

.field private mActionRect:Lcom/sec/android/glview/TwGLRectangle;

.field private mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mIsCreatingResultStarted:Z

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;

.field private mPostProgress:I

.field private mSideMenuHidden:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-array v0, v6, [I

    const v1, 0x7f0700e7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0700e8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0700e9

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0700ea

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    .line 46
    new-array v0, v6, [I

    const v1, 0x7f0700eb

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0700ec

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0700ed

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0700ee

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    .line 50
    const v0, 0x7f0700ef

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_WIDTH:I

    .line 51
    const v0, 0x7f0700f0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_HEIGHT:I

    .line 52
    const v0, 0x7f0700f1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_ALPHA:I

    .line 53
    new-array v0, v4, [F

    const v1, 0x7f0700f2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0700f3

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_SETSIZE_WIDTH:[F

    .line 55
    new-array v0, v6, [I

    const v1, 0x7f0700f4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0700f5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0700f6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0700f7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    .line 59
    new-array v0, v6, [I

    const v1, 0x7f0700f4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0700f5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0700f6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0700f7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    .line 63
    const v0, 0x7f0700fc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_WIDTH:I

    .line 64
    const v0, 0x7f0700fd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_HEIGHT:I

    .line 65
    const v0, 0x7f080023

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_SIZE:F

    .line 66
    const v0, 0x7f0700fe

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_X:I

    .line 67
    const v0, 0x7f0700ff

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_Y:I

    .line 68
    const v0, 0x7f070100

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_WIDTH:I

    .line 69
    const v0, 0x7f070101

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 10
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 90
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mSideMenuHidden:Z

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;

    .line 92
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0201fc

    const v7, 0x7f0201fb

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_ALPHA:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 95
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0900d4

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 100
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_HEIGHT:I

    int-to-float v5, v5

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/16 v8, 0xff

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/4 v7, 0x5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    .line 101
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_HEIGHT:I

    int-to-float v5, v5

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/4 v7, 0x5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setRotatable(Z)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLProgressBar;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setCaptureEnabled(Z)V

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setTouchHandled(Z)V

    .line 121
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->init()V

    .line 122
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setLeftTop(IFF)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 137
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 138
    return-void
.end method


# virtual methods
.method public actionShotCaptureCancelled()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 325
    return-void
.end method

.method public actionShotCreatingResultStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 297
    :cond_1
    return-void
.end method

.method public actionShotRectChanged([B)V
    .locals 10
    .parameter "data"

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x0

    .line 300
    aget-byte v4, p1, v6

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v1, v4, v5

    .line 302
    .local v1, left:I
    aget-byte v4, p1, v9

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x5

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x6

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x7

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v3, v4, v5

    .line 304
    .local v3, top:I
    const/16 v4, 0x8

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x9

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/16 v5, 0xa

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/16 v5, 0xb

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v2, v4, v5

    .line 306
    .local v2, right:I
    const/16 v4, 0xc

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xd

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/16 v5, 0xe

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/16 v5, 0xf

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v0, v4, v5

    .line 309
    .local v0, bottom:I
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v4, v6}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 311
    sub-int v4, v2, v1

    if-lez v4, :cond_0

    sub-int v4, v0, v3

    if-lez v4, :cond_0

    .line 312
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v4, v6}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 313
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    int-to-float v5, v1

    int-to-float v6, v3

    sub-int v7, v2, v1

    int-to-float v7, v7

    sub-int v8, v0, v3

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 316
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLText;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 317
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v4, v9}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 318
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v4, v9}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 320
    :cond_1
    return-void
.end method

.method public getProgressValue()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public hideCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->showHelpText()V

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 200
    return-void
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 146
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;->onActionShotCaptureCancelled()V

    .line 165
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideHelpText()V

    .line 154
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v3, 0x1b

    const/4 v0, 0x1

    .line 213
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v3, :cond_3

    .line 219
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostProgress:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    .line 224
    :cond_3
    if-ne p1, v3, :cond_4

    .line 225
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    if-eqz v1, :cond_4

    .line 226
    const-string v1, "TwGLActionMenu"

    const-string v2, "onKeyDown - mIsCreatingResultStarted is true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x1b

    const/4 v0, 0x1

    .line 236
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    .line 242
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostProgress:I

    if-gtz v1, :cond_0

    .line 247
    :cond_3
    if-ne p1, v2, :cond_4

    .line 248
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    if-eqz v1, :cond_4

    .line 249
    const-string v1, "TwGLActionMenu"

    const-string v2, "onKeyUp - mIsCreatingResultStarted is true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setSizeForOrientation()V

    .line 287
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onActionShotCaptureCancelled()V

    .line 260
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 262
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->showHelpText()V

    .line 150
    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 174
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostProgress:I

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setTouchHandled(Z)V

    .line 176
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mSideMenuHidden:Z

    .line 177
    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1
    .parameter "nProgress"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 183
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mSideMenuHidden:Z

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setTouchHandled(Z)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenuItems()V

    .line 188
    :cond_0
    return-void
.end method

.method public setActionShotCancelListener(Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;

    .line 209
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 191
    const-string v0, "TwGLActionMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPostCaptureProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostProgress:I

    .line 193
    return-void
.end method

.method public setSizeForOrientation()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 283
    :goto_0
    return-void

    .line 272
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_SETSIZE_WIDTH:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0

    .line 278
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_SETSIZE_WIDTH:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 204
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideHelpText()V

    .line 205
    return-void
.end method

.method public showHelpText()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 142
    return-void
.end method
