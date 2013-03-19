.class public Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLShootAndShareSettingMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field private static final ANCHOR_HEIGHT:I

.field private static final ITEM_HEIGHT:I

.field private static final LEFT_ITEM_INTERVAL:I

.field private static final LEFT_ITEM_START_POS_Y:I

.field private static final LIST_ITEM_HEIGHT:I

.field private static final MENU_HEIGHT:I

.field private static final MENU_POS_X:I

.field private static final MENU_POS_Y:I

.field private static final MENU_WIDTH:I

.field private static final NUM_OF_LEFT_SIDE_MENU:I

.field private static final SIDEMENU_HEIGHT:I

.field private static final SIDEMENU_WIDTH:I

.field private static final TITLE_FONT_SIZE:F

.field private static final TITLE_HEIGHT:I

.field private static final TITLE_LEFT_PADDING:I

.field private static final TITLE_TEXT_COLOR:I

.field private static final TITLE_TOP_PADDING:I


# instance fields
.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mSettingAnchor:Lcom/sec/android/glview/TwGLImage;


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

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->MENU_POS_X:I

    .line 50
    const v0, 0x7f070166

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->MENU_POS_Y:I

    .line 51
    const v0, 0x7f070211

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->MENU_WIDTH:I

    .line 52
    const v0, 0x7f070033

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->MENU_HEIGHT:I

    .line 53
    const v0, 0x7f070167

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->TITLE_HEIGHT:I

    .line 54
    const v0, 0x7f070168

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->TITLE_LEFT_PADDING:I

    .line 55
    const v0, 0x7f070169

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->TITLE_TOP_PADDING:I

    .line 56
    const v0, 0x7f080019

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->TITLE_FONT_SIZE:F

    .line 57
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->TITLE_TEXT_COLOR:I

    .line 58
    const v0, 0x7f070217

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->LIST_ITEM_HEIGHT:I

    .line 61
    const v0, 0x7f070097

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->SIDEMENU_WIDTH:I

    .line 62
    const v0, 0x7f070098

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->SIDEMENU_HEIGHT:I

    .line 63
    const v0, 0x7f07009d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->LEFT_ITEM_START_POS_Y:I

    .line 64
    const v0, 0x7f07009a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->ITEM_HEIGHT:I

    .line 65
    const v0, 0x7f080011

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->NUM_OF_LEFT_SIDE_MENU:I

    .line 66
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->SIDEMENU_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->LEFT_ITEM_START_POS_Y:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->ITEM_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->NUM_OF_LEFT_SIDE_MENU:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->NUM_OF_LEFT_SIDE_MENU:I

    div-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->LEFT_ITEM_INTERVAL:I

    .line 67
    const v0, 0x7f0700a8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->ANCHOR_HEIGHT:I

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
    .line 76
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 72
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mSettingAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 78
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 80
    new-instance v1, Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->MENU_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->MENU_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLTitleDecorator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    .line 81
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->TITLE_LEFT_PADDING:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->TITLE_TOP_PADDING:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->MENU_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->TITLE_LEFT_PADDING:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->TITLE_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->TITLE_TOP_PADDING:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getTitle()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->TITLE_FONT_SIZE:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->TITLE_TEXT_COLOR:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    .line 84
    .local v1, title:Lcom/sec/android/glview/TwGLText;
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 85
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTitle(Lcom/sec/android/glview/TwGLView;)V

    .line 86
    new-instance v2, Lcom/sec/android/glview/TwGLList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->TITLE_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->MENU_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->MENU_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->TITLE_HEIGHT:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 87
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const v3, 0x7f020187

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 88
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mList:Lcom/sec/android/glview/TwGLList;

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$1;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 89
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setInternalFocus(Z)V

    .line 91
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTag(I)V

    .line 92
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setRotatable(Z)V

    .line 94
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setVisibility(I)V

    .line 95
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 96
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 98
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->MENU_POS_X:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->MENU_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 99
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->MENU_POS_X:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->MENU_POS_Y:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 100
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->MENU_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->MENU_POS_Y:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 102
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    move/from16 v0, p7

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 103
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    move/from16 v0, p7

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 104
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 105
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 107
    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->SIDEMENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->LEFT_ITEM_START_POS_Y:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->ITEM_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->LEFT_ITEM_INTERVAL:I

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->ITEM_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->ANCHOR_HEIGHT:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    const v6, 0x7f020182

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mSettingAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 111
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mSettingAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 112
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mSettingAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 113
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->MENU_WIDTH:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->LIST_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/sec/android/glview/TwGLList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 196
    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLList;->getFirstFullyVisibleViewIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 188
    :cond_1
    return v2
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter "anmiation"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    .line 174
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 160
    sget-object v0, Lcom/sec/android/app/camera/command/LaunchSnSSettingMenuCommand;->sAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/sec/android/app/camera/command/LaunchSnSSettingMenuCommand;->sAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mSettingAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mSettingAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 168
    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 169
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->refreshMenuPosition()V

    .line 206
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 202
    return-void
.end method

.method protected onShow()V
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->getZorder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->setListBackgrouond(I)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showWaitingAnimation()V

    .line 154
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->refreshMenuPosition()V

    .line 155
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 156
    return-void
.end method

.method public refreshMenuPosition()V
    .locals 10

    .prologue
    const/high16 v9, 0x4000

    const/4 v8, 0x0

    .line 210
    const/4 v3, 0x6

    .line 212
    .local v3, padding:I
    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->MENU_POS_Y:I

    int-to-float v4, v6

    .line 213
    .local v4, top:F
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v6, :cond_3

    .line 214
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 223
    :pswitch_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v5

    .line 224
    .local v5, width:F
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v1

    .line 227
    .local v1, height:F
    :goto_0
    add-float v0, v4, v1

    .line 229
    .local v0, bottom:F
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v7

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    div-float v7, v1, v9

    add-float/2addr v7, v4

    sub-float v2, v6, v7

    .line 230
    .local v2, move:F
    add-float v6, v4, v2

    cmpg-float v6, v6, v8

    if-gez v6, :cond_2

    .line 231
    neg-float v6, v4

    int-to-float v7, v3

    add-float v2, v6, v7

    .line 235
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->resetTranslate()V

    .line 236
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6, v8, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    .line 268
    .end local v0           #bottom:F
    .end local v1           #height:F
    .end local v2           #move:F
    .end local v5           #width:F
    :cond_1
    :goto_2
    return-void

    .line 217
    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v5

    .line 218
    .restart local v5       #width:F
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v1

    .line 219
    .restart local v1       #height:F
    goto :goto_0

    .line 232
    .restart local v0       #bottom:F
    .restart local v2       #move:F
    :cond_2
    add-float v6, v0, v2

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 233
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v0

    int-to-float v7, v3

    sub-float v2, v6, v7

    goto :goto_1

    .line 238
    .end local v0           #bottom:F
    .end local v1           #height:F
    .end local v2           #move:F
    .end local v5           #width:F
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mSettingAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v6, :cond_1

    .line 241
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mSettingAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getVisibility()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    .line 242
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mSettingAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 244
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 253
    :pswitch_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v5

    .line 254
    .restart local v5       #width:F
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v1

    .line 257
    .restart local v1       #height:F
    :goto_3
    add-float v0, v4, v1

    .line 259
    .restart local v0       #bottom:F
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mSettingAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mSettingAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v7

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    div-float v7, v1, v9

    add-float/2addr v7, v4

    sub-float v2, v6, v7

    .line 260
    .restart local v2       #move:F
    add-float v6, v4, v2

    cmpg-float v6, v6, v8

    if-gez v6, :cond_6

    .line 261
    neg-float v6, v4

    int-to-float v7, v3

    add-float v2, v6, v7

    .line 265
    :cond_5
    :goto_4
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->resetTranslate()V

    .line 266
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6, v8, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    goto :goto_2

    .line 247
    .end local v0           #bottom:F
    .end local v1           #height:F
    .end local v2           #move:F
    .end local v5           #width:F
    :pswitch_3
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v5

    .line 248
    .restart local v5       #width:F
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v1

    .line 249
    .restart local v1       #height:F
    goto :goto_3

    .line 262
    .restart local v0       #bottom:F
    .restart local v2       #move:F
    :cond_6
    add-float v6, v0, v2

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 263
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v0

    int-to-float v7, v3

    sub-float v2, v6, v7

    goto :goto_4

    .line 214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 244
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setListBackgrouond(I)V
    .locals 2
    .parameter "zOrder"

    .prologue
    .line 116
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x7f020184

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setNinePatchBackground(I)Z

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x7f020183

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setNinePatchBackground(I)Z

    goto :goto_0
.end method
