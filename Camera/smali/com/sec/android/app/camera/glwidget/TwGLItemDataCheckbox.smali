.class public Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLItemDataCheckbox.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mChecked:Z

.field private mCheckedImage:Lcom/sec/android/glview/TwGLImage;

.field private mCommandId:I

.field private mUncheckedImage:Lcom/sec/android/glview/TwGLImage;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFFI)V
    .locals 8
    .parameter "applicationContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "commandId"

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mChecked:Z

    .line 81
    const/4 v6, 0x0

    .line 82
    .local v6, offsetX:F
    const/4 v7, 0x0

    .line 84
    .local v7, offsetY:F
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCommandId:I

    .line 85
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 88
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020195

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    .line 89
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020194

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v0

    sub-float v0, p4, v0

    const/high16 v1, 0x4000

    div-float v6, v0, v1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v0

    cmpl-float v0, p5, v0

    if-lez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v0

    sub-float v0, p5, v0

    const/high16 v1, 0x4000

    div-float v7, v0, v1

    .line 97
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-eqz v0, :cond_3

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/glview/TwGLImage;->moveLayout(FF)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/glview/TwGLImage;->moveLayout(FF)V

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->refreshView()V

    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFI)V
    .locals 5
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "commandId"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 39
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mChecked:Z

    .line 41
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCommandId:I

    .line 42
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 43
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 46
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f020195

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    .line 47
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f020194

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->refreshView()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFIZ)V
    .locals 5
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "commandId"
    .parameter "isCheckBox"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 57
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mChecked:Z

    .line 59
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCommandId:I

    .line 60
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 61
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 64
    if-eqz p5, :cond_0

    .line 65
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f020011

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    .line 66
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f020010

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 75
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->refreshView()V

    .line 76
    return-void

    .line 68
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f020195

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    .line 69
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f020194

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    goto :goto_0
.end method

.method private refreshView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 124
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCommandId:I

    const/16 v1, 0x38

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCommandId:I

    const/16 v1, 0x39

    if-ne v0, v1, :cond_3

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCommandId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 128
    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mChecked:Z

    .line 146
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCommandId:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setDraggable(Z)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setDraggable(Z)V

    .line 150
    :cond_1
    return-void

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 132
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mChecked:Z

    goto :goto_0

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCommandId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCommandId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 139
    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mChecked:Z

    goto :goto_0

    .line 141
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 143
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mChecked:Z

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 116
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 117
    return-void
.end method

.method public getChecked()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mChecked:Z

    return v0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isActivityDestoying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->refreshView()V

    goto :goto_0
.end method
