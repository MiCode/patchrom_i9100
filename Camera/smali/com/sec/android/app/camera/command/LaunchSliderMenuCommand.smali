.class public Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "LaunchSliderMenuCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchSliderMenuCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private mParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mSlideDirection:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .locals 1
    .parameter "activityContext"
    .parameter "glParentView"
    .parameter "menuDepot"
    .parameter "res"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mSlideDirection:I

    .line 41
    iput-object p1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 42
    iput-object p2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 43
    iput-object p3, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 44
    iput-object p4, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 45
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .prologue
    .line 57
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    const-string v1, "LaunchSliderMenuCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    const-string v1, "LaunchSliderMenuCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .line 68
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v1

    const/16 v2, 0xbc1

    if-ne v1, v2, :cond_5

    .line 69
    :cond_3
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    iget v7, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 70
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setOnExposureValueChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;)V

    .line 71
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_4
    :goto_1
    if-eqz v0, :cond_0

    .line 81
    iget v1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setZorder(I)V

    .line 82
    iget-object v1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 84
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->isActive()Z

    move-result v1

    if-nez v1, :cond_6

    .line 85
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->showMenu()V

    goto :goto_0

    .line 72
    :cond_5
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_4

    .line 73
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    iget v7, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 74
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setOnZoomValueChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;)V

    .line 75
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 87
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0
.end method

.method public setSliderDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 52
    iput p1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mSlideDirection:I

    .line 53
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .parameter "zOrder"

    .prologue
    .line 48
    iput p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    .line 49
    return-void
.end method
