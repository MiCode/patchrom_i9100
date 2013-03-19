.class public Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLShootAndShareMenu.java"


# static fields
.field private static final SHARESHOT_BUTTON_ICON_POS_X:[I = null

.field private static final SHARESHOT_BUTTON_ICON_POS_Y:[I = null

.field private static final SHARESHOT_COUNT_TEXT_POS_X:[I = null

.field private static final SHARESHOT_COUNT_TEXT_POS_Y:[I = null

#the value of this static final field might be set in the static constructor
.field private static final ShareShot_Button_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ShareShot_Button_BUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ShareShot_Count_TEXT_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ShareShot_Count_TEXT_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ShareShot_Count_TEXT_WIDTH:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLShootAndShareMenu"


# instance fields
.field private DefaultCount:Ljava/lang/String;

.field private mDisplayCount:I

.field private mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

.field private mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

.field private mUserCount:I

.field newFragment:Landroid/app/DialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    const v0, 0x7f0701f7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Button_BUTTON_WIDTH:I

    .line 48
    const v0, 0x7f0701f8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Button_BUTTON_HEIGHT:I

    .line 49
    const v0, 0x7f070201

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Count_TEXT_WIDTH:I

    .line 50
    const v0, 0x7f070202

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Count_TEXT_HEIGHT:I

    .line 51
    const v0, 0x7f070203

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Count_TEXT_SIZE:I

    .line 53
    new-array v0, v6, [I

    const v1, 0x7f0701f9

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0701fa

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0701fb

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0701fc

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_X:[I

    .line 60
    new-array v0, v6, [I

    const v1, 0x7f0701fd

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0701fe

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0701ff

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f070200

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_Y:[I

    .line 67
    new-array v0, v6, [I

    const v1, 0x7f070204

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f070205

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f070206

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f070207

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_X:[I

    .line 74
    new-array v0, v6, [I

    const v1, 0x7f070208

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f070209

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f07020a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f07020b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_Y:[I

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

    .line 42
    const-string v0, "0"

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->DefaultCount:Ljava/lang/String;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mUserCount:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mDisplayCount:I

    .line 84
    new-instance v0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-direct {v0}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->newFragment:Landroid/app/DialogFragment;

    .line 86
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Button_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Button_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020199

    const v7, 0x7f02019a

    const v8, 0x7f02019a

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f09011b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Count_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Count_TEXT_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->DefaultCount:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Count_TEXT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setBackground(I)Z

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->setCaptureEnabled(Z)V

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->setTouchHandled(Z)V

    .line 104
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->init()V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 116
    return-void
.end method

.method private getDeviceCount()I
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, deviceCount:I
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera$UserWrapper;->getUserCount()I

    move-result v0

    .line 166
    :cond_0
    return v0
.end method

.method private getDisplayCount(I)I
    .locals 6
    .parameter "deviceCount"

    .prologue
    .line 170
    new-array v0, p1, [Lcom/samsung/shareshot/User;

    .line 171
    .local v0, deviceData:[Lcom/samsung/shareshot/User;
    const/4 v1, 0x0

    .line 173
    .local v1, displayCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 174
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/Camera$UserWrapper;->getUserFromList(I)Lcom/samsung/shareshot/User;

    move-result-object v3

    aput-object v3, v0, v2

    .line 175
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 176
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    add-int/lit8 v1, v1, 0x1

    .line 173
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_1
    const-string v3, "TwGLShootAndShareMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDisplayCount(displayCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return v1
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 126
    return-void
.end method

.method private showDisplayCount(II)V
    .locals 3
    .parameter "deviceCount"
    .parameter "displayCount"

    .prologue
    .line 185
    const-string v0, "TwGLShootAndShareMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDisplayCount(deviceCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", displayCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-lez p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 192
    :goto_0
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mDisplayCount:I

    .line 193
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 205
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    .line 207
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 208
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 130
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    .line 219
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mUserCount:I

    if-ge v0, v3, :cond_0

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showWifiConnectionDialog()V

    .line 224
    :goto_0
    return v3

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->newFragment:Landroid/app/DialogFragment;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onHide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 143
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->newFragment:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->newFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->newFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 214
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V

    .line 215
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->showDisplayCount()V

    .line 136
    return-void
.end method

.method public setUserCount(I)V
    .locals 6
    .parameter "count"

    .prologue
    const/4 v5, 0x4

    .line 146
    const-string v2, "TwGLShootAndShareMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUserCount(count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-nez p1, :cond_1

    .line 148
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 150
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 158
    :cond_0
    :goto_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mUserCount:I

    .line 159
    return-void

    .line 153
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->getDeviceCount()I

    move-result v0

    .line 154
    .local v0, deviceCount:I
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->getDisplayCount(I)I

    move-result v1

    .line 155
    .local v1, displayCount:I
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mUserCount:I

    if-ne v2, p1, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mDisplayCount:I

    if-eq v2, v1, :cond_0

    .line 156
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->showDisplayCount(II)V

    goto :goto_0
.end method

.method public showDisplayCount()V
    .locals 2

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->getDeviceCount()I

    move-result v0

    .line 197
    .local v0, deviceCount:I
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->getDisplayCount(I)I

    move-result v1

    .line 198
    .local v1, displayCount:I
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->showDisplayCount(II)V

    .line 199
    return-void
.end method
