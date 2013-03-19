.class public Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLCamcorderSideMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;


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
.field private static final SHUTTER_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final SIDE_MENU_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final SIDE_MENU_WIDTH:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLCamcorderSideMenu"

#the value of this static final field might be set in the static constructor
.field private static final THUMBNAIL_BUTTON_POS_X:I = 0x0

.field private static final THUMBNAIL_BUTTON_POS_X_DELTA:I = 0x4

.field private static final THUMBNAIL_BUTTON_POS_Y:I


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

.field private mLeftBackground:Lcom/sec/android/glview/TwGLImage;

.field private mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

.field private mRightBackground:Lcom/sec/android/glview/TwGLImage;

.field private mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mSelectedMenuId:I

.field private mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mShutterButton:Lcom/sec/android/glview/TwGLButton;

.field private mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const v0, 0x7f070097

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->SIDE_MENU_WIDTH:I

    .line 58
    const v0, 0x7f070098

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->SIDE_MENU_HEIGHT:I

    .line 59
    const v0, 0x7f080011

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    .line 60
    const v0, 0x7f070099

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->ITEM_WIDTH:I

    .line 61
    const v0, 0x7f07009a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->ITEM_HEIGHT:I

    .line 62
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->SIDE_MENU_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->ITEM_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->LEFT_ITEM_START_POS_X:I

    .line 63
    const v0, 0x7f07009d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->LEFT_ITEM_START_POS_Y:I

    .line 64
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->SIDE_MENU_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->LEFT_ITEM_START_POS_Y:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->ITEM_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    div-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->LEFT_ITEM_INTERVAL:I

    .line 65
    const v0, 0x7f070079

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->RIGHT_SIDE_MENU_POS_X:I

    .line 66
    const v0, 0x7f07009f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->SHUTTER_BUTTON_POS_X:I

    .line 67
    const v0, 0x7f0700a0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->SHUTTER_BUTTON_POS_Y:I

    .line 68
    const v0, 0x7f0700a5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const v1, 0x7f07012c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->MODE_BUTTON_POS_X:I

    .line 69
    const v0, 0x7f0700a6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->MODE_BUTTON_POS_Y:I

    .line 70
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->SIDE_MENU_WIDTH:I

    const v1, 0x7f070244

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->THUMBNAIL_BUTTON_POS_X:I

    .line 71
    const v0, 0x7f0700a7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->THUMBNAIL_BUTTON_POS_Y:I

    .line 73
    const v0, 0x7f0700a8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->ANCHOR_HEIGHT:I

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

    .line 95
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mAnchorList:Ljava/util/ArrayList;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mSelectedMenuId:I

    .line 98
    iput-boolean v5, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 100
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setCaptureEnabled(Z)V

    .line 101
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setTouchHandled(Z)V

    .line 103
    invoke-direct {p0, p3, p2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->init(Lcom/sec/android/glview/TwGLViewGroup;I)V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;)Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method private findLastSelectedView()Lcom/sec/android/glview/TwGLView;
    .locals 5

    .prologue
    .line 657
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getSize()I

    move-result v1

    .line 659
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 660
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    .line 661
    .local v2, view:Lcom/sec/android/glview/TwGLView;
    instance-of v3, v2, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 662
    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mSelectedMenuId:I

    if-ne v3, v4, :cond_1

    .line 672
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :cond_0
    :goto_1
    return-object v2

    .line 666
    .restart local v2       #view:Lcom/sec/android/glview/TwGLView;
    :cond_1
    instance-of v3, v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 667
    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mSelectedMenuId:I

    if-eq v3, v4, :cond_0

    .line 659
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 672
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    goto :goto_1
.end method

.method private init(Lcom/sec/android/glview/TwGLViewGroup;I)V
    .locals 19
    .parameter "parent"
    .parameter "viewId"

    .prologue
    .line 107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v3, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    const/16 v4, 0xbd1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    const/16 v4, 0xbd2

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    .line 114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    if-eqz v3, :cond_0

    .line 118
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->SIDE_MENU_WIDTH:I

    int-to-float v5, v5

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->SIDE_MENU_HEIGHT:I

    int-to-float v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 120
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->RIGHT_SIDE_MENU_POS_X:I

    int-to-float v3, v3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->SIDE_MENU_WIDTH:I

    int-to-float v5, v5

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->SIDE_MENU_HEIGHT:I

    int-to-float v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 124
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

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    .line 125
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

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mLeftBackground:Lcom/sec/android/glview/TwGLImage;

    .line 126
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

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mEditableBackground:Lcom/sec/android/glview/TwGLImage;

    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mEditableBackground:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 129
    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->MODE_BUTTON_POS_X:I

    int-to-float v5, v5

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->MODE_BUTTON_POS_Y:I

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setTag(I)V

    .line 131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    new-instance v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setOnModeChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setHoverPopupOffset(II)V

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    const/16 v4, 0x5351

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setHoverPopupGravity(I)V

    .line 145
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->SHUTTER_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->SHUTTER_BUTTON_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f02000a

    const v6, 0x7f02000b

    const v7, 0x7f02000a

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09013d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLButton;->setHoverPopupOffset(II)V

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v4, 0x5351

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLButton;->setHoverPopupGravity(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 160
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFZZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    .line 169
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/16 v4, 0x1d

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setTag(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setHoverPopupOffset(II)V

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    const/16 v4, 0x5351

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setHoverPopupGravity(I)V

    .line 174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mEditableBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mLeftBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 187
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    move/from16 v0, v18

    if-ge v0, v3, :cond_4

    .line 188
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->LEFT_ITEM_START_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->LEFT_ITEM_START_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->ITEM_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->LEFT_ITEM_INTERVAL:I

    add-int/2addr v5, v8

    mul-int v5, v5, v18

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->SIDE_MENU_WIDTH:I

    int-to-float v5, v5

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->ITEM_HEIGHT:I

    int-to-float v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFF)V

    .line 189
    .local v1, b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    .line 190
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

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->getZorder()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v3, v4, v5, v8, v9}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 191
    .local v7, command:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->ITEM_HEIGHT:I

    int-to-float v5, v5

    const/4 v8, 0x2

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 192
    .local v2, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    const/16 v4, 0xbce

    if-ne v3, v4, :cond_2

    .line 193
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setToggleButton()V

    .line 195
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupOffset(II)V

    .line 196
    const/16 v3, 0x5351

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupGravity(I)V

    .line 197
    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 201
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->setOnDropListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;)V

    .line 187
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 165
    .end local v1           #b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    .end local v2           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .end local v6           #bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v7           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v18           #i:I
    :cond_3
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFZZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    goto/16 :goto_1

    .line 205
    .restart local v18       #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    .line 206
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

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->getZorder()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v3, v4, v5, v8, v9}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 207
    .restart local v7       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v8, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->LEFT_ITEM_START_POS_X:I

    int-to-float v10, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->LEFT_ITEM_START_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->ITEM_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->LEFT_ITEM_INTERVAL:I

    add-int/2addr v4, v5

    mul-int v4, v4, v18

    add-int/2addr v3, v4

    int-to-float v11, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->SIDE_MENU_WIDTH:I

    int-to-float v12, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->ITEM_HEIGHT:I

    int-to-float v13, v3

    const/16 v16, 0x2

    move-object v14, v6

    move-object v15, v7

    invoke-direct/range {v8 .. v16}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupOffset(II)V

    .line 211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/16 v4, 0x5351

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupGravity(I)V

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 214
    new-instance v3, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-direct {v3, v4, v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 220
    const/16 v18, 0x0

    :goto_3
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v18

    if-ge v0, v3, :cond_5

    .line 221
    new-instance v17, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->SIDE_MENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->LEFT_ITEM_START_POS_Y:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->ITEM_HEIGHT:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->LEFT_ITEM_INTERVAL:I

    add-int/2addr v8, v9

    mul-int v8, v8, v18

    add-int/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->ITEM_HEIGHT:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->ANCHOR_HEIGHT:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v5, v8

    int-to-float v5, v5

    const v8, 0x7f020182

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v5, v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    .line 225
    .local v17, anchor:Lcom/sec/android/glview/TwGLImage;
    const/4 v3, 0x4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mAnchorList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 220
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 229
    .end local v17           #anchor:Lcom/sec/android/glview/TwGLImage;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mAnchorList:Ljava/util/ArrayList;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshAnchors()V

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->hideBackground()V

    .line 243
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v3, :cond_6

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 248
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    goto/16 :goto_0

    .line 239
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showBackground()V

    goto :goto_4
.end method


# virtual methods
.method public hideAnchors()V
    .locals 3

    .prologue
    .line 252
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mAnchorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLImage;

    .line 253
    .local v0, anchor:Lcom/sec/android/glview/TwGLImage;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    .line 255
    .end local v0           #anchor:Lcom/sec/android/glview/TwGLImage;
    :cond_0
    return-void
.end method

.method public hideBackground()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mLeftBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideBackgroundForMw()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mLeftBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 425
    return-void
.end method

.method public hideShutterButton()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 381
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideSideMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setVisibility(I)V

    .line 373
    return-void
.end method

.method public hideSideMenuItems()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setVisibility(I)V

    .line 346
    return-void
.end method

.method public isShutterPressed()Z
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isPressed()Z

    move-result v0

    return v0
.end method

.method public moveModeButton()V
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setCamcorderSelected()V

    .line 622
    :cond_0
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    .line 542
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x1b

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 462
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v5, :cond_0

    .line 463
    const-string v4, "TwGLCamcorderSideMenu"

    const-string v5, "mActivityContext is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :goto_0
    return v3

    .line 466
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x1d

    if-eq v5, v6, :cond_1

    .line 467
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 470
    :cond_1
    const-string v5, "TwGLCamcorderSideMenu"

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

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 474
    :sswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onModechanged()V

    move v3, v4

    .line 475
    goto :goto_0

    .line 477
    :sswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 478
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 480
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onSelfModeChangeSelected()V

    move v3, v4

    .line 481
    goto :goto_0

    .line 483
    :sswitch_2
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    move v3, v4

    .line 484
    goto :goto_0

    .line 487
    :sswitch_3
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 488
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v5, "com.sec.android.gallery3d"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 490
    .local v0, ApplicationState:I
    const-string v5, "TwGLCamcorderSideMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v5, 0x3

    if-ne v0, v5, :cond_4

    .line 492
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 493
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.sec.android.app.popupuireceiver"

    const-string v6, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-string v5, "app_package_name"

    const-string v6, "com.sec.android.gallery3d"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v5, v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    :goto_1
    move v3, v4

    .line 502
    goto/16 :goto_0

    .line 497
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camcorder;

    const-string v5, "quickview"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/Camcorder;->launchGallery(Ljava/lang/String;)V

    .line 498
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 499
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_1

    .line 504
    .end local v0           #ApplicationState:I
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :sswitch_4
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v3, :cond_5

    .line 505
    const-string v3, "TwGLCamcorderSideMenu"

    const-string v5, "hideWaitingAnimation in onclick "

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    .line 508
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v8, v9}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 509
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v8, v9}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v3, v4

    .line 510
    goto/16 :goto_0

    .line 472
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1c -> :sswitch_2
        0x1d -> :sswitch_3
        0x20 -> :sswitch_4
        0x79 -> :sswitch_1
    .end sparse-switch
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 4
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 578
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    float-to-int v2, p2

    float-to-int v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    float-to-int v2, p2

    float-to-int v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0xbd1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 581
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v0, :cond_1

    .line 582
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->resetOrder(Z)V

    .line 585
    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    :cond_1
    return-void
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 3
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->resetOrder()V

    .line 590
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0xbd1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 591
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v0, :cond_0

    .line 592
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->resetOrder(Z)V

    .line 594
    :cond_0
    return-void
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 6
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v5, 0xbd1

    .line 568
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 569
    .local v1, menu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v1, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 570
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v5, v2, v3, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 571
    .local v0, cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_1

    .line 572
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 574
    .end local v0           #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_1
    return-void
.end method

.method public onDrop(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->resetOrder()V

    .line 598
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 546
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 552
    :cond_0
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 557
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 563
    :cond_0
    return v1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 612
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mDropBoxList:Ljava/util/ArrayList;

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

    .line 613
    .local v0, b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->setPressedBGVisibility(I)V

    goto :goto_0

    .line 615
    .end local v0           #b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->removeUptateMessage()V

    .line 616
    return-void
.end method

.method protected onShow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 526
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0xbce

    if-ne v1, v2, :cond_1

    .line 527
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setCamcorderSelfIconLoaded(Z)V

    .line 531
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->findLastSelectedView()Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 532
    .local v0, lastSelectedView:Lcom/sec/android/glview/TwGLView;
    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 537
    return-void

    .line 529
    .end local v0           #lastSelectedView:Lcom/sec/android/glview/TwGLView;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setCamcorderSelfIconLoaded(Z)V

    goto :goto_0
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x1b

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 428
    instance-of v2, p1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v2, :cond_0

    .line 458
    :goto_0
    return v0

    .line 431
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, p2}, Lcom/sec/android/glview/TwGLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 433
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    .line 458
    goto :goto_0

    .line 435
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 436
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    goto :goto_1

    .line 439
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    const-string v0, "TwGLCamcorderSideMenu"

    const-string v2, "return isRecording.."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 441
    goto :goto_0

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_3

    .line 444
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_2

    :cond_2
    move v0, v1

    .line 447
    goto :goto_0

    .line 449
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public refresh()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v1, :cond_1

    .line 309
    :cond_0
    return-void

    .line 297
    :cond_1
    const/4 v8, 0x0

    .line 298
    .local v8, i:I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mDropBoxList:Ljava/util/ArrayList;

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

    .line 299
    .local v7, b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->removeView()Lcom/sec/android/glview/TwGLView;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 300
    .local v11, v:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/sec/android/app/camera/MenuDimController;->removeButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V

    .line 301
    invoke-virtual {v11}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clear()V

    .line 302
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    .line 303
    .local v4, bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->getZorder()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-static {v1, v2, v3, v6, v12}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v5

    .line 304
    .local v5, command:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->ITEM_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->ITEM_HEIGHT:I

    int-to-float v3, v3

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 305
    .local v0, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v0, v13, v13}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupOffset(II)V

    .line 306
    const/16 v1, 0x5351

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupGravity(I)V

    .line 307
    invoke-virtual {v7, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    move v8, v9

    .line 308
    .end local v9           #i:I
    .restart local v8       #i:I
    goto :goto_0
.end method

.method public refreshAnchors()V
    .locals 3

    .prologue
    .line 258
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 264
    :cond_0
    return-void

    .line 260
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    if-ge v0, v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 262
    .local v1, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mAnchorList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public refreshEditableMenu()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 271
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSideMenuOrder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    .line 273
    const/4 v8, 0x0

    .line 274
    .local v8, i:I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mDropBoxList:Ljava/util/ArrayList;

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

    .line 275
    .local v7, b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->removeView()Lcom/sec/android/glview/TwGLView;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 276
    .local v11, v:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v11}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clear()V

    .line 277
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/sec/android/app/camera/MenuDimController;->removeButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V

    .line 278
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    .line 279
    .local v4, bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->getZorder()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-static {v1, v2, v3, v6, v12}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v5

    .line 280
    .local v5, command:Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->ITEM_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->ITEM_HEIGHT:I

    int-to-float v3, v3

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 281
    .local v0, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    const/16 v2, 0xbce

    if-ne v1, v2, :cond_0

    .line 282
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setToggleButton()V

    .line 284
    :cond_0
    invoke-virtual {v0, v13, v13}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupOffset(II)V

    .line 285
    const/16 v1, 0x5351

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setHoverPopupGravity(I)V

    .line 286
    invoke-virtual {v7, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    move v8, v9

    .line 287
    .end local v9           #i:I
    .restart local v8       #i:I
    goto :goto_0

    .line 288
    .end local v0           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .end local v4           #bundle:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v5           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v7           #b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    .end local v11           #v:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_1
    return-void
.end method

.method public resetOrder()V
    .locals 6

    .prologue
    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 602
    .local v1, builder:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;

    .line 603
    .local v0, b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 604
    .local v3, v:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 605
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 607
    .end local v0           #b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    .end local v3           #v:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_0
    const/16 v4, 0xbd0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 608
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method public setModeButtonDimmed(Z)V
    .locals 1
    .parameter "dimmed"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setModeButtonDimmed(Z)V

    .line 522
    return-void
.end method

.method public setSelectedMenuId(I)V
    .locals 0
    .parameter "commandId"

    .prologue
    .line 653
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mSelectedMenuId:I

    .line 654
    return-void
.end method

.method public setThumbnailButtonDimmed(Z)V
    .locals 1
    .parameter "dim"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->lockButton(Z)V

    .line 518
    return-void
.end method

.method public showBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mLeftBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 411
    return-void
.end method

.method public showEditBackground(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 625
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v2, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mDropBoxList:Ljava/util/ArrayList;

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

    .line 629
    .local v0, b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    if-eqz v0, :cond_2

    .line 630
    if-eqz p1, :cond_3

    .line 631
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->setNormalBGVisibility(I)V

    goto :goto_1

    .line 633
    :cond_3
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;->setNormalBGVisibility(I)V

    goto :goto_1

    .line 636
    .end local v0           #b:Lcom/sec/android/app/camera/glwidget/TwGLSideMenuDragDropBox;
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v2, :cond_5

    .line 637
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDim(Z)V

    .line 640
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mEditableBackground:Lcom/sec/android/glview/TwGLImage;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 641
    if-eqz p1, :cond_6

    .line 642
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mEditableBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    .line 644
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mEditableBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public showShutterButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 394
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto :goto_0

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_1
.end method

.method public showSideMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 362
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setVisibility(I)V

    .line 365
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public showSideMenuItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mModeButton:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setVisibility(I)V

    .line 339
    return-void
.end method

.method public updateEmptyButton()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->updateEmptyButton()V

    .line 321
    :cond_0
    return-void
.end method

.method public updateThumbnailButton()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update()V

    .line 315
    :cond_0
    return-void
.end method

.method public updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V
    .locals 1
    .parameter "data"
    .parameter "orientation"
    .parameter "bAnimation"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Landroid/graphics/Bitmap;IZ)V

    .line 327
    :cond_0
    return-void
.end method

.method public updateThumbnailButton(Ljava/lang/String;Z)V
    .locals 1
    .parameter "filename"
    .parameter "bAnimation"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Ljava/lang/String;Z)V

    .line 333
    :cond_0
    return-void
.end method
