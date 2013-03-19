.class public Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLCameraSideMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;
.implements Lcom/sec/android/glview/TwGLView$OnKeyListener;


# static fields
#the value of this static final field might be set in the static constructor
.field public static final ANCHOR_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ITEM_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ITEM_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LEFT_ITEM_INTERVAL:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LEFT_ITEM_START_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LEFT_ITEM_START_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MODE_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MODE_BUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final NUM_OF_LEFT_SIDE_MENU:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final RIGHT_SIDE_MENU_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_IMAGE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_IMAGE_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final SIDE_MENU_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final SIDE_MENU_WIDTH:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLCameraSideMenu"

#the value of this static final field might be set in the static constructor
.field private static final THUMBNAIL_BUTTON_POS_X:I = 0x0

.field private static final THUMBNAIL_BUTTON_POS_X_DELTA:I = 0x4

.field private static final THUMBNAIL_BUTTON_POS_Y:I

.field public static mIsSnsMode:Z


# instance fields
.field private mAnchorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mChkSideMenuItemsShow:Z

.field private mDelCommand:[I

.field private mDevButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mDropBoxList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;",
            ">;"
        }
    .end annotation
.end field

.field private mEditableBackground:Lcom/sec/android/glview/TwGLImage;

.field private mEffectButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mLeftBackground:Lcom/sec/android/glview/TwGLImage;

.field private mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

.field private mRightBackground:Lcom/sec/android/glview/TwGLImage;

.field private mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mSelectedMenuId:I

.field private mSelfButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mSettingCommand:Lcom/sec/android/app/camera/command/MenuCommand;

.field private mShareshotSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mShootingModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mShutterButton:Lcom/sec/android/glview/TwGLButton;

.field private mShutterButtonImage:Lcom/sec/android/glview/TwGLImage;

.field private mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const v0, 0x7f070097

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    .line 60
    const v0, 0x7f070098

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_HEIGHT:I

    .line 61
    const v0, 0x7f080011

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    .line 62
    const v0, 0x7f070099

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_WIDTH:I

    .line 63
    const v0, 0x7f07009a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    .line 64
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_X:I

    .line 65
    const v0, 0x7f07009d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_Y:I

    .line 66
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_Y:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    div-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_INTERVAL:I

    .line 67
    const v0, 0x7f070079

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->RIGHT_SIDE_MENU_POS_X:I

    .line 68
    const v0, 0x7f07009f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SHUTTER_BUTTON_POS_X:I

    .line 69
    const v0, 0x7f0700a0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SHUTTER_BUTTON_POS_Y:I

    .line 70
    const v0, 0x7f0700a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SHUTTER_BUTTON_IMAGE_POS_X:I

    .line 71
    const v0, 0x7f0700a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SHUTTER_BUTTON_IMAGE_POS_Y:I

    .line 72
    const v0, 0x7f0700a5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const v1, 0x7f07012c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->MODE_BUTTON_POS_X:I

    .line 73
    const v0, 0x7f0700a6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->MODE_BUTTON_POS_Y:I

    .line 74
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    const v1, 0x7f070244

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->THUMBNAIL_BUTTON_POS_X:I

    .line 75
    const v0, 0x7f0700a7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->THUMBNAIL_BUTTON_POS_Y:I

    .line 79
    const v0, 0x7f0700a8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ANCHOR_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 7
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    const/4 v5, 0x1

    .line 116
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDelCommand:[I

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSelectedMenuId:I

    .line 119
    iput-boolean v5, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 121
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setTouchHandled(Z)V

    .line 123
    invoke-direct {p0, p3, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->init(Lcom/sec/android/glview/TwGLViewGroup;I)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;)Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method private findLastSelectedView()Lcom/sec/android/glview/TwGLView;
    .locals 5

    .prologue
    .line 822
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getSize()I

    move-result v1

    .line 824
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 825
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    .line 826
    .local v2, view:Lcom/sec/android/glview/TwGLView;
    instance-of v3, v2, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    if-eqz v3, :cond_1

    .line 827
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSelectedMenuId:I

    if-ne v3, v4, :cond_1

    .line 837
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :cond_0
    :goto_1
    return-object v2

    .line 831
    .restart local v2       #view:Lcom/sec/android/glview/TwGLView;
    :cond_1
    instance-of v3, v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 832
    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSelectedMenuId:I

    if-eq v3, v4, :cond_0

    .line 824
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 837
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    goto :goto_1
.end method

.method private init(Lcom/sec/android/glview/TwGLViewGroup;I)V
    .locals 19
    .parameter "parent"
    .parameter "viewId"

    .prologue
    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v3, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    if-eqz v3, :cond_0

    .line 136
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    int-to-float v5, v5

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_HEIGHT:I

    int-to-float v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 138
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->RIGHT_SIDE_MENU_POS_X:I

    int-to-float v3, v3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    int-to-float v5, v5

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_HEIGHT:I

    int-to-float v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 140
    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    const v9, 0x7f020181

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    .line 141
    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    const v9, 0x7f020180

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftBackground:Lcom/sec/android/glview/TwGLImage;

    .line 142
    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    const v9, 0x7f02017f

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mEditableBackground:Lcom/sec/android/glview/TwGLImage;

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mEditableBackground:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 145
    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->MODE_BUTTON_POS_X:I

    int-to-float v5, v5

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->MODE_BUTTON_POS_Y:I

    int-to-float v8, v8

    const/4 v9, 0x1

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setTag(I)V

    .line 147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    new-instance v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setOnModeChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setHoverPopupOffset(II)V

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    const/16 v4, 0x5351

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setHoverPopupGravity(I)V

    .line 161
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SHUTTER_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SHUTTER_BUTTON_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f020152

    const v6, 0x7f020153

    const v7, 0x7f020152

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09013d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLButton;->setHoverPopupOffset(II)V

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v4, 0x5351

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLButton;->setHoverPopupGravity(I)V

    .line 175
    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SHUTTER_BUTTON_IMAGE_POS_X:I

    int-to-float v5, v5

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SHUTTER_BUTTON_IMAGE_POS_Y:I

    int-to-float v8, v8

    const v9, 0x7f020150

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLImage;

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setCenterPivot(Z)V

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setRotateAnimation(Z)V

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setTag(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setBypassTouch(Z)V

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 184
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v4, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFZZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    .line 193
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/16 v4, 0x1d

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setTag(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setHoverPopupOffset(II)V

    .line 196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/16 v4, 0x5351

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setHoverPopupGravity(I)V

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mEditableBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 212
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    move/from16 v0, v18

    if-ge v0, v3, :cond_5

    .line 213
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_INTERVAL:I

    add-int/2addr v5, v8

    mul-int v5, v5, v18

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    int-to-float v5, v5

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    int-to-float v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFF)V

    .line 215
    .local v1, b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    .line 216
    .local v6, bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v3, v4, v5, v8, v9}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 217
    .local v7, command:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    int-to-float v5, v5

    const/4 v8, 0x2

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 218
    .local v2, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    const/16 v4, 0x24

    if-ne v3, v4, :cond_2

    .line 219
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setToggleButton()V

    .line 221
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupOffset(II)V

    .line 222
    const/16 v3, 0x5351

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupGravity(I)V

    .line 223
    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v2           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .end local v6           #bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    if-gt v3, v4, :cond_3

    .line 229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 231
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->setOnDropListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;)V

    .line 212
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 189
    .end local v1           #b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    .end local v18           #i:I
    :cond_4
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v4, v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFZZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    goto/16 :goto_1

    .line 235
    .restart local v18       #i:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    .line 236
    .restart local v6       #bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v3, v4, v5, v8, v9}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 237
    new-instance v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_X:I

    int-to-float v10, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_INTERVAL:I

    add-int/2addr v4, v5

    mul-int v4, v4, v18

    add-int/2addr v3, v4

    int-to-float v11, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    int-to-float v12, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    int-to-float v13, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    const/16 v16, 0x2

    move-object v14, v6

    invoke-direct/range {v8 .. v16}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupOffset(II)V

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/16 v4, 0x5351

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupGravity(I)V

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 244
    new-instance v3, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-direct {v3, v4, v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 250
    const/16 v18, 0x0

    :goto_4
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v18

    if-ge v0, v3, :cond_6

    .line 251
    new-instance v17, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_Y:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_INTERVAL:I

    add-int/2addr v8, v9

    mul-int v8, v8, v18

    add-int/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ANCHOR_HEIGHT:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v5, v8

    int-to-float v5, v5

    const v8, 0x7f020182

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v5, v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    .line 255
    .local v17, anchor:Lcom/sec/android/glview/TwGLImage;
    const/4 v3, 0x4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 250
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 259
    .end local v17           #anchor:Lcom/sec/android/glview/TwGLImage;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshAnchors()V

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->hideBackground()V

    .line 271
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v3, :cond_7

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 280
    :cond_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setChkSideMenuItemsShow(Z)V

    .line 282
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mIsSnsMode:Z

    .line 283
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->backFromSNS(Z)V

    goto/16 :goto_0

    .line 267
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->showBackground()V

    goto :goto_5

    .line 225
    .end local v6           #bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .restart local v1       #b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    :catch_0
    move-exception v3

    goto/16 :goto_3
.end method


# virtual methods
.method public backFromSNS(Z)V
    .locals 5
    .parameter "init"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 288
    sget-boolean v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mIsSnsMode:Z

    if-nez v2, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    sput-boolean v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mIsSnsMode:Z

    .line 292
    if-nez p1, :cond_7

    .line 295
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSelfButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v2, :cond_2

    .line 296
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSelfButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    .line 298
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v2, :cond_3

    .line 299
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    .line 301
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mEffectButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v2, :cond_4

    .line 302
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mEffectButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    .line 304
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDevButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v2, :cond_5

    .line 305
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDevButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    .line 307
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShootingModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v2, :cond_6

    .line 308
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShootingModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    .line 311
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    .line 312
    .local v0, b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->setVisibility(I)V

    goto :goto_1

    .line 317
    .end local v0           #b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShareshotSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v2, :cond_8

    .line 318
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShareshotSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    .line 320
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    goto :goto_0
.end method

.method public getChkSideMenuItemsShow()Z
    .locals 1

    .prologue
    .line 625
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mChkSideMenuItemsShow:Z

    return v0
.end method

.method public hideBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 667
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 669
    return-void
.end method

.method public hideSideMenu()V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 650
    return-void
.end method

.method public hideSideMenuItems()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 637
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setVisibility(I)V

    .line 641
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setChkSideMenuItemsShow(Z)V

    .line 642
    return-void
.end method

.method public isShutterPressed()Z
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isPressed()Z

    move-result v0

    return v0
.end method

.method public moveModeButton()V
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setCameraSelected()V

    .line 777
    :cond_0
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    .line 690
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 8
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 560
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v3, :cond_0

    .line 561
    const-string v3, "TwGLCameraSideMenu"

    const-string v5, "mActivityContext is null"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 616
    :goto_0
    return v3

    .line 565
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0x20

    if-eq v3, v6, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0x1d

    if-eq v3, v6, :cond_1

    .line 566
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 569
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 570
    const-string v3, "TwGLCameraSideMenu"

    const-string v5, "return isCapturing.."

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 571
    goto :goto_0

    .line 574
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isPreviewStarted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 575
    const-string v3, "TwGLCameraSideMenu"

    const-string v5, "return isStartPreview.."

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 576
    goto :goto_0

    .line 579
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 580
    const-string v3, "TwGLCameraSideMenu"

    const-string v5, "return getIsLaunchGallery.."

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 581
    goto :goto_0

    .line 584
    :cond_4
    const-string v3, "TwGLCameraSideMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v3, v4

    .line 616
    goto/16 :goto_0

    .line 588
    :sswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onModechanged()V

    move v3, v5

    .line 589
    goto/16 :goto_0

    .line 592
    :sswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 593
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v3, "com.miui.gallery"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 595
    .local v0, ApplicationState:I
    const-string v3, "TwGLCameraSideMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    .line 597
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 598
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.app.popupuireceiver"

    const-string v6, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string v3, "app_package_name"

    const-string v6, "com.miui.gallery"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    :goto_1
    move v3, v5

    .line 608
    goto/16 :goto_0

    .line 602
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    const-string v4, "quickview"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 603
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 604
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_1

    .line 610
    .end local v0           #ApplicationState:I
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :sswitch_2
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v3, :cond_7

    .line 611
    const-string v3, "TwGLCameraSideMenu"

    const-string v5, "hideWaitingAnimation in onclick "

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    :cond_7
    move v3, v4

    .line 614
    goto/16 :goto_0

    .line 586
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1d -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 5
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 710
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    float-to-int v3, p2

    float-to-int v4, p3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    float-to-int v3, p2

    float-to-int v4, p3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 712
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 713
    .local v1, menu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v1, :cond_1

    .line 714
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->resetOrder(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    .end local v1           #menu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    :cond_1
    :goto_0
    return-void

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 4
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 725
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->resetOrder()V

    .line 726
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 727
    .local v1, menu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v1, :cond_0

    .line 728
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->resetOrder(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    .end local v1           #menu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    :cond_0
    :goto_0
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 8
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v7, 0x28

    .line 694
    const/4 v3, 0x0

    .line 696
    .local v3, menu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x28

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    if-eqz v3, :cond_0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->isActive()Z

    move-result v4

    if-nez v4, :cond_1

    .line 701
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v7, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v1

    .line 702
    .local v1, cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v1, :cond_1

    .line 703
    invoke-virtual {v1}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 705
    .end local v1           #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_1
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v2

    .line 698
    .local v2, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public onDrop(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->resetOrder()V

    .line 737
    return-void
.end method

.method public onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "event"

    .prologue
    .line 842
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_2

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 844
    const/4 v0, 0x1

    .line 846
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 852
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 767
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    .line 768
    .local v0, b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->setPressedBGVisibility(I)V

    goto :goto_0

    .line 770
    .end local v0           #b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->removeUptateMessage()V

    .line 771
    return-void
.end method

.method protected onShow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 673
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_1

    .line 674
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setCameraSelfIconLoaded(Z)V

    .line 678
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->findLastSelectedView()Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 679
    .local v0, lastSelectedView:Lcom/sec/android/glview/TwGLView;
    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 683
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 685
    return-void

    .line 676
    .end local v0           #lastSelectedView:Lcom/sec/android/glview/TwGLView;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setCameraSelfIconLoaded(Z)V

    goto :goto_0
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x1b

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 516
    instance-of v2, p1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v2, :cond_0

    .line 556
    :goto_0
    return v0

    .line 520
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, p2}, Lcom/sec/android/glview/TwGLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 521
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    .line 556
    goto :goto_0

    .line 523
    :pswitch_1
    const-string v2, "TwGLCameraSideMenu"

    const-string v3, "onTouch MotionEvent.ACTION_DOWN"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 525
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    goto :goto_1

    .line 528
    :pswitch_2
    const-string v0, "TwGLCameraSideMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouch MotionEvent.ACTION_UP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 530
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_2

    :cond_1
    move v0, v1

    .line 533
    goto :goto_0

    .line 535
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 538
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v2, 0xe

    if-ne v0, v2, :cond_5

    .line 540
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 542
    const-string v0, "TwGLCameraSideMenu"

    const-string v2, "return isCapturing.."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 543
    goto/16 :goto_0

    .line 546
    :cond_4
    const-string v0, "TwGLCameraSideMenu"

    const-string v2, "return isCapturing.."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 547
    goto/16 :goto_0

    .line 551
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->shutterButtonCancelAction()V

    goto/16 :goto_1

    .line 521
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public refresh()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 472
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v1, :cond_1

    .line 493
    :cond_0
    return-void

    .line 475
    :cond_1
    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mIsSnsMode:Z

    if-nez v1, :cond_0

    .line 481
    const/4 v8, 0x0

    .line 482
    .local v8, i:I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    .line 483
    .local v7, b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->removeView()Lcom/sec/android/glview/TwGLView;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 484
    .local v11, v:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/sec/android/app/camera/MenuDimController;->removeButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V

    .line 485
    invoke-virtual {v11}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clear()V

    .line 486
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    .line 487
    .local v4, bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-static {v1, v2, v3, v6, v12}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v5

    .line 488
    .local v5, command:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    int-to-float v3, v3

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 489
    .local v0, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v0, v13, v13}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupOffset(II)V

    .line 490
    const/16 v1, 0x5351

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupGravity(I)V

    .line 491
    invoke-virtual {v7, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    move v8, v9

    .line 492
    .end local v9           #i:I
    .restart local v8       #i:I
    goto :goto_0
.end method

.method public refreshAnchors()V
    .locals 3

    .prologue
    .line 439
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 445
    :cond_0
    return-void

    .line 441
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 443
    .local v1, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public refreshEditableMenu()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 452
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSideMenuOrder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    .line 454
    const/4 v8, 0x0

    .line 455
    .local v8, i:I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    .line 456
    .local v7, b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->removeView()Lcom/sec/android/glview/TwGLView;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 457
    .local v11, v:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v11}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clear()V

    .line 458
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/sec/android/app/camera/MenuDimController;->removeButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V

    .line 459
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    .line 460
    .local v4, bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-static {v1, v2, v3, v6, v12}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v5

    .line 461
    .local v5, command:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    int-to-float v3, v3

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 462
    .local v0, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_0

    .line 463
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setToggleButton()V

    .line 465
    :cond_0
    invoke-virtual {v0, v13, v13}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupOffset(II)V

    .line 466
    const/16 v1, 0x5351

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupGravity(I)V

    .line 467
    invoke-virtual {v7, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    move v8, v9

    .line 468
    .end local v9           #i:I
    .restart local v8       #i:I
    goto :goto_0

    .line 469
    .end local v0           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .end local v4           #bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v5           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v7           #b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    .end local v11           #v:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_1
    return-void
.end method

.method public refreshForSNS()V
    .locals 32

    .prologue
    .line 325
    sget-boolean v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mIsSnsMode:Z

    if-eqz v2, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mIsSnsMode:Z

    .line 331
    const/16 v26, 0x0

    .line 333
    .local v26, buttonIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    .line 334
    .local v25, b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    const/4 v2, 0x4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->setVisibility(I)V

    goto :goto_1

    .line 337
    .end local v25           #b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    :cond_2
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 362
    :cond_3
    :goto_2
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_8

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-nez v2, :cond_9

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v29

    .line 365
    .local v29, resIDsFlash:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-nez v29, :cond_7

    .line 366
    const-string v2, "TwGLCameraSideMenu"

    const-string v3, "resIDsFlash is null. So return here."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    .end local v29           #resIDsFlash:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSelfButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-nez v2, :cond_6

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v30

    .line 340
    .local v30, resIDsSelf:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-nez v30, :cond_5

    .line 341
    const-string v2, "TwGLCameraSideMenu"

    const-string v3, "resIDsSelf is null. So return here."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 344
    :cond_5
    new-instance v6, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v30

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v30

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v30

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, v30

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x24

    aput v4, v2, v3

    invoke-direct {v6, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 346
    .local v6, bundleSelf:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v2, 0x24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v2, v3, v4, v5, v8}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 347
    .local v7, command:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    int-to-float v5, v5

    const/4 v8, 0x2

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSelfButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSelfButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_Y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->moveBaseLayoutAbsolute(FF)V

    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSelfButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSelfButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDim(Z)V

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSelfButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDragVibration(Z)V

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSelfButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setToggleButton()V

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSelfButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupOffset(II)V

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSelfButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/16 v3, 0x5351

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupGravity(I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSelfButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 359
    .end local v6           #bundleSelf:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v30           #resIDsSelf:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :goto_3
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_2

    .line 357
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSelfButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    goto :goto_3

    .line 369
    .restart local v29       #resIDsFlash:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_7
    new-instance v12, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v29

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v29

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v29

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, v29

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x3

    aput v4, v2, v3

    invoke-direct {v12, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 371
    .local v12, bundleFlash:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v2, v3, v4, v5, v8}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 372
    .restart local v7       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    int-to-float v10, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    int-to-float v11, v2

    const/4 v14, 0x2

    move-object v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_INTERVAL:I

    add-int/2addr v5, v8

    mul-int v5, v5, v26

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->moveBaseLayoutAbsolute(FF)V

    .line 374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDim(Z)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDragVibration(Z)V

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupOffset(II)V

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/16 v3, 0x5351

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupGravity(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 383
    .end local v7           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v12           #bundleFlash:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v29           #resIDsFlash:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :goto_4
    add-int/lit8 v26, v26, 0x1

    .line 386
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShootingModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-nez v2, :cond_b

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v31

    .line 388
    .local v31, resIDsShootingmode:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-nez v31, :cond_a

    .line 389
    const-string v2, "TwGLCameraSideMenu"

    const-string v3, "resIDsShootingmode is null. So return here."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 381
    .end local v31           #resIDsShootingmode:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    goto :goto_4

    .line 392
    .restart local v31       #resIDsShootingmode:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_a
    new-instance v17, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v31

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v31

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v31

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, v31

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x1

    aput v4, v2, v3

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 394
    .local v17, bundleShootingmode:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v2, v3, v4, v5, v8}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 395
    .restart local v7       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v13, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    int-to-float v15, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    int-to-float v0, v2

    move/from16 v16, v0

    const/16 v19, 0x2

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShootingModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShootingModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_INTERVAL:I

    add-int/2addr v5, v8

    mul-int v5, v5, v26

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->moveBaseLayoutAbsolute(FF)V

    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShootingModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShootingModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDim(Z)V

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShootingModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDragVibration(Z)V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShootingModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupOffset(II)V

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShootingModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/16 v3, 0x5351

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupGravity(I)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShootingModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 406
    .end local v7           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v17           #bundleShootingmode:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v31           #resIDsShootingmode:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :goto_5
    add-int/lit8 v26, v26, 0x1

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mEffectButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-nez v2, :cond_e

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v28

    .line 410
    .local v28, resIDs:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-nez v28, :cond_c

    .line 411
    const-string v2, "TwGLCameraSideMenu"

    const-string v3, "resIDs is null. So return here."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 404
    .end local v28           #resIDs:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShootingModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    goto :goto_5

    .line 414
    .restart local v28       #resIDs:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_c
    new-instance v22, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v28

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v28

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v28

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, v28

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x8

    aput v4, v2, v3

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 416
    .local v22, bundleDev:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v2, v3, v4, v5, v8}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 417
    .restart local v7       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v18, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v19, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    int-to-float v0, v2

    move/from16 v20, v0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    int-to-float v0, v2

    move/from16 v21, v0

    const/16 v24, 0x2

    move-object/from16 v23, v7

    invoke-direct/range {v18 .. v24}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mEffectButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mEffectButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_INTERVAL:I

    add-int/2addr v5, v8

    mul-int v5, v5, v26

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->moveBaseLayoutAbsolute(FF)V

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mEffectButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mEffectButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDim(Z)V

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mEffectButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDragVibration(Z)V

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mEffectButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupOffset(II)V

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mEffectButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/16 v3, 0x5351

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupGravity(I)V

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mEffectButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 430
    .end local v7           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v22           #bundleDev:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v28           #resIDs:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v2, :cond_d

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    .line 433
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShareshotSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v2, :cond_0

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mShareshotSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    goto/16 :goto_0

    .line 426
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mEffectButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setVisibility(I)V

    goto :goto_6
.end method

.method public resetOrder()V
    .locals 9

    .prologue
    const/16 v8, 0x63

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 741
    .local v1, builder:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    if-ge v4, v5, :cond_3

    .line 743
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    .line 744
    .local v0, b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 745
    .local v3, v:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDelCommand:[I

    aget v5, v5, v6

    if-ne v4, v5, :cond_1

    .line 746
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDelCommand:[I

    aput v8, v4, v6

    .line 748
    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDelCommand:[I

    aget v5, v5, v7

    if-ne v4, v5, :cond_0

    .line 749
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDelCommand:[I

    aput v8, v4, v7

    goto :goto_0

    .line 752
    .end local v0           #b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    .end local v3           #v:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDelCommand:[I

    aget v4, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 753
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDelCommand:[I

    aget v4, v4, v7

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 755
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    .line 758
    .restart local v0       #b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 759
    .restart local v3       #v:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 760
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 762
    .end local v0           #b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    .end local v3           #v:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_4
    const/16 v4, 0x1b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 763
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    .line 764
    return-void
.end method

.method public setChkSideMenuItemsShow(Z)V
    .locals 0
    .parameter "setChk"

    .prologue
    .line 621
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mChkSideMenuItemsShow:Z

    .line 622
    return-void
.end method

.method public setModeButtonDimmed(Z)V
    .locals 1
    .parameter "dimmed"

    .prologue
    .line 786
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setModeButtonDimmed(Z)V

    .line 787
    return-void
.end method

.method public setSelectedMenuId(I)V
    .locals 3
    .parameter "commandId"

    .prologue
    .line 817
    const-string v0, "TwGLCameraSideMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectedMenuId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSelectedMenuId:I

    .line 819
    return-void
.end method

.method public showBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 661
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 664
    return-void
.end method

.method public showEditBackground(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 790
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v2, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    .line 794
    .local v0, b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    if-eqz v0, :cond_2

    .line 795
    if-eqz p1, :cond_3

    .line 796
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->setNormalBGVisibility(I)V

    goto :goto_1

    .line 798
    :cond_3
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->setNormalBGVisibility(I)V

    goto :goto_1

    .line 801
    .end local v0           #b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v2, :cond_5

    .line 802
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDim(Z)V

    .line 804
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mEditableBackground:Lcom/sec/android/glview/TwGLImage;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 805
    if-eqz p1, :cond_6

    .line 806
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mEditableBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    .line 808
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mEditableBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public showSideMenu()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 646
    return-void
.end method

.method public showSideMenuItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 629
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setVisibility(I)V

    .line 633
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setChkSideMenuItemsShow(Z)V

    .line 634
    return-void
.end method

.method public updateThumbnailButton()V
    .locals 3

    .prologue
    .line 497
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isActivityDestoying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    .line 504
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V
    .locals 1
    .parameter "data"
    .parameter "orientation"
    .parameter "bAnimation"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Landroid/graphics/Bitmap;IZ)V

    .line 513
    :cond_0
    return-void
.end method

.method public updateThumbnailButton(Ljava/lang/String;)V
    .locals 2
    .parameter "filePath"

    .prologue
    .line 780
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Ljava/lang/String;Z)V

    .line 783
    :cond_0
    return-void
.end method
