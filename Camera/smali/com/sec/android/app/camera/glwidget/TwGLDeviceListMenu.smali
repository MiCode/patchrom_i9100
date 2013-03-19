.class public Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLDeviceListMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;
    }
.end annotation


# static fields
.field private static final ANCHOR_HEIGHT:I

.field private static final ITEM_HEIGHT:I

.field private static final LEFT_ITEM_INTERVAL:I

.field private static final LEFT_ITEM_START_POS_Y:I

.field public static final LIST_ITEM_HEIGHT:I

.field private static final LIST_POS_X:I

.field public static final MENU_HEIGHT:I

.field private static final MENU_POS_X:I

.field private static final MENU_POS_Y:I

.field public static final MENU_WIDTH:I

.field private static final NUM_OF_LEFT_SIDE_MENU:I

.field private static final SIDEMENU_HEIGHT:I

.field private static final SIDEMENU_WIDTH:I

.field private static final TITLE_FONT_SIZE:F

.field public static final TITLE_HEIGHT:I

.field private static final TITLE_LEFT_PADDING:I

.field private static final TITLE_TEXT_COLOR:I

.field private static final TITLE_TOP_PADDING:I


# instance fields
.field private mActivityConetxt:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mDevAnchor:Lcom/sec/android/glview/TwGLImage;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mShowAnimation:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0xff

    .line 49
    const v0, 0x7f070165

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_X:I

    .line 50
    const v0, 0x7f070166

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_Y:I

    .line 51
    const v0, 0x7f07016c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_WIDTH:I

    .line 52
    const v0, 0x7f07016d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_HEIGHT:I

    .line 53
    const v0, 0x7f070167

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_HEIGHT:I

    .line 54
    const v0, 0x7f070168

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_LEFT_PADDING:I

    .line 55
    const v0, 0x7f070169

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_TOP_PADDING:I

    .line 56
    const v0, 0x7f080019

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_FONT_SIZE:F

    .line 57
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_TEXT_COLOR:I

    .line 58
    const v0, 0x7f07001f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LIST_POS_X:I

    .line 59
    const v0, 0x7f07016b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LIST_ITEM_HEIGHT:I

    .line 62
    const v0, 0x7f070097

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->SIDEMENU_WIDTH:I

    .line 63
    const v0, 0x7f070098

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->SIDEMENU_HEIGHT:I

    .line 64
    const v0, 0x7f07009d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LEFT_ITEM_START_POS_Y:I

    .line 65
    const v0, 0x7f07009a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->ITEM_HEIGHT:I

    .line 66
    const v0, 0x7f080011

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->NUM_OF_LEFT_SIDE_MENU:I

    .line 67
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->SIDEMENU_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LEFT_ITEM_START_POS_Y:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->ITEM_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->NUM_OF_LEFT_SIDE_MENU:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->NUM_OF_LEFT_SIDE_MENU:I

    div-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LEFT_ITEM_INTERVAL:I

    .line 68
    const v0, 0x7f0700a8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->ANCHOR_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 10
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "resourceData"
    .parameter "menuResourceDepot"
    .parameter "zOrder"
    .parameter "slideDirection"

    .prologue
    .line 80
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 73
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 75
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 76
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 82
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityConetxt:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 84
    new-instance v1, Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLTitleDecorator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    .line 85
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_LEFT_PADDING:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_TOP_PADDING:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_LEFT_PADDING:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_TOP_PADDING:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09011c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_FONT_SIZE:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_TEXT_COLOR:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    .line 88
    .local v1, title:Lcom/sec/android/glview/TwGLText;
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 89
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTitle(Lcom/sec/android/glview/TwGLView;)V

    .line 90
    new-instance v2, Lcom/sec/android/glview/TwGLList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LIST_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_HEIGHT:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 91
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityConetxt:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera$UserWrapper;->getUserCount()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 92
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const v3, 0x7f020187

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$1;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 95
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setInternalFocus(Z)V

    .line 97
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTag(I)V

    .line 98
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setRotatable(Z)V

    .line 100
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    .line 101
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setVisibility(I)V

    .line 102
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 103
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->setLeftTop()V

    .line 107
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    move/from16 v0, p7

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 108
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    move/from16 v0, p7

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 109
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 110
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 112
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 113
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 115
    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->SIDEMENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LEFT_ITEM_START_POS_Y:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->ITEM_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LEFT_ITEM_INTERVAL:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->ITEM_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->ANCHOR_HEIGHT:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    const v6, 0x7f020182

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 119
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 120
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 121
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityConetxt:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Lcom/sec/android/glview/TwGLList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 211
    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mShowAnimation:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLList;->getFirstFullyVisibleViewIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 203
    :cond_1
    return v2
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter "animation"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    .line 187
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iput-object v2, v0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iput-object v2, v0, Lcom/sec/android/app/camera/Camera;->mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    .line 181
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 182
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->refreshMenuPosition()V

    .line 221
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 217
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showWaitingAnimation()V

    .line 163
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->refreshMenuPosition()V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iput-object v1, v0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iput-object v1, v0, Lcom/sec/android/app/camera/Camera;->mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->refreshDeviceList()V

    .line 168
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 169
    return-void
.end method

.method public refreshMenuPosition()V
    .locals 14

    .prologue
    .line 225
    const/4 v7, 0x6

    .line 226
    .local v7, padding:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->getZorder()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->setListBackgrouond(I)V

    .line 228
    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_Y:I

    int-to-float v8, v11

    .line 229
    .local v8, top:F
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeftTop(I)[F

    move-result-object v11

    const/4 v12, 0x0

    aget v4, v11, v12

    .line 230
    .local v4, left_1:F
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeftTop(I)[F

    move-result-object v11

    const/4 v12, 0x1

    aget v9, v11, v12

    .line 231
    .local v9, top_1:F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->setLeftTop()V

    .line 232
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeftTop(I)[F

    move-result-object v11

    const/4 v12, 0x0

    aget v5, v11, v12

    .line 233
    .local v5, left_2:F
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeftTop(I)[F

    move-result-object v11

    const/4 v12, 0x1

    aget v10, v11, v12

    .line 235
    .local v10, top_2:F
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v11, :cond_6

    .line 236
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 244
    :pswitch_0
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v1

    .line 247
    .local v1, height:F
    :goto_0
    add-float v0, v8, v1

    .line 249
    .local v0, bottom:F
    sub-float v2, v5, v4

    .line 250
    .local v2, interval_left:F
    sub-float v3, v10, v9

    .line 252
    .local v3, interval_top:F
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v11

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    const/high16 v12, 0x4000

    div-float v12, v1, v12

    add-float/2addr v12, v8

    sub-float v6, v11, v12

    .line 253
    .local v6, move:F
    add-float v11, v8, v6

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_4

    .line 254
    neg-float v11, v8

    int-to-float v12, v7

    add-float v6, v11, v12

    .line 258
    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLTitleDecorator;->resetTranslate()V

    .line 259
    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-gtz v11, :cond_1

    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-lez v11, :cond_5

    .line 260
    :cond_1
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    .line 263
    :goto_2
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    .line 264
    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-gtz v11, :cond_2

    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-lez v11, :cond_3

    .line 265
    :cond_2
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOrientation(I)V

    .line 304
    .end local v0           #bottom:F
    .end local v1           #height:F
    .end local v2           #interval_left:F
    .end local v3           #interval_top:F
    .end local v6           #move:F
    :cond_3
    :goto_3
    return-void

    .line 239
    :pswitch_1
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v1

    .line 240
    .restart local v1       #height:F
    goto :goto_0

    .line 255
    .restart local v0       #bottom:F
    .restart local v2       #interval_left:F
    .restart local v3       #interval_top:F
    .restart local v6       #move:F
    :cond_4
    add-float v11, v0, v6

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v12

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_0

    .line 256
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v0

    int-to-float v12, v7

    sub-float v6, v11, v12

    goto :goto_1

    .line 262
    :cond_5
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v11, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    goto :goto_2

    .line 267
    .end local v0           #bottom:F
    .end local v1           #height:F
    .end local v2           #interval_left:F
    .end local v3           #interval_top:F
    .end local v6           #move:F
    :cond_6
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v11, :cond_3

    .line 270
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLImage;->getVisibility()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_7

    .line 271
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 273
    :cond_7
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v11

    packed-switch v11, :pswitch_data_1

    .line 281
    :pswitch_2
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v1

    .line 284
    .restart local v1       #height:F
    :goto_4
    add-float v0, v8, v1

    .line 286
    .restart local v0       #bottom:F
    sub-float v2, v5, v4

    .line 287
    .restart local v2       #interval_left:F
    sub-float v3, v10, v9

    .line 289
    .restart local v3       #interval_top:F
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v11

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    const/high16 v12, 0x4000

    div-float v12, v1, v12

    add-float/2addr v12, v8

    sub-float v6, v11, v12

    .line 290
    .restart local v6       #move:F
    add-float v11, v8, v6

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_b

    .line 291
    neg-float v11, v8

    int-to-float v12, v7

    add-float v6, v11, v12

    .line 295
    :cond_8
    :goto_5
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLTitleDecorator;->resetTranslate()V

    .line 296
    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-gtz v11, :cond_9

    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-lez v11, :cond_c

    .line 297
    :cond_9
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    .line 300
    :goto_6
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    .line 301
    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-gtz v11, :cond_a

    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-lez v11, :cond_3

    .line 302
    :cond_a
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOrientation(I)V

    goto/16 :goto_3

    .line 276
    .end local v0           #bottom:F
    .end local v1           #height:F
    .end local v2           #interval_left:F
    .end local v3           #interval_top:F
    .end local v6           #move:F
    :pswitch_3
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v1

    .line 277
    .restart local v1       #height:F
    goto :goto_4

    .line 292
    .restart local v0       #bottom:F
    .restart local v2       #interval_left:F
    .restart local v3       #interval_top:F
    .restart local v6       #move:F
    :cond_b
    add-float v11, v0, v6

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v12

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_8

    .line 293
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v0

    int-to-float v12, v7

    sub-float v6, v11, v12

    goto :goto_5

    .line 299
    :cond_c
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v11, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    goto :goto_6

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 273
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setLeftTop()V
    .locals 5

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_X:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_X:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_Y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_Y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 127
    return-void
.end method

.method public setListBackgrouond(I)V
    .locals 2
    .parameter "zOrder"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x7f020183

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setNinePatchBackground(I)Z

    .line 131
    return-void
.end method
