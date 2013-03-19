.class public Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "LaunchEditableShortcutMenuCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchEditableShortcutMenuCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mCameraMode:Z

.field private mCols:I

.field private mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mRows:I

.field private mSlideDirection:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;IIZ)V
    .locals 1
    .parameter "activityContext"
    .parameter "glParentView"
    .parameter "menuDepot"
    .parameter "res"
    .parameter "rows"
    .parameter "cols"
    .parameter "cameraMode"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mSlideDirection:I

    .line 47
    iput-object p1, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 48
    iput-object p3, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 49
    iput-object p4, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 50
    iput p5, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mRows:I

    .line 51
    iput p6, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mCols:I

    .line 52
    iput-boolean p7, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mCameraMode:Z

    .line 53
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 11

    .prologue
    .line 65
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    const-string v1, "LaunchEditableShortcutMenuCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    const-string v1, "LaunchEditableShortcutMenuCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    instance-of v1, v1, Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_3

    .line 76
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 77
    const-string v1, "LaunchEditableShortcutMenuCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 82
    const-string v1, "LaunchEditableShortcutMenuCommand"

    const-string v2, "return isRecording.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 89
    .local v0, menu:Lcom/sec/android/app/camera/MenuBase;
    if-nez v0, :cond_5

    .line 90
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    iget v7, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mSlideDirection:I

    iget v8, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mRows:I

    iget v9, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mCols:I

    iget-boolean v10, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mCameraMode:Z

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;IIIIZ)V

    .line 91
    .restart local v0       #menu:Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuBase;->setZorder(I)V

    .line 94
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_6

    .line 95
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    goto/16 :goto_0

    .line 97
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0
.end method

.method public setSliderDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 60
    iput p1, p0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->mSlideDirection:I

    .line 61
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .parameter "zOrder"

    .prologue
    .line 56
    iput p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    .line 57
    return-void
.end method
