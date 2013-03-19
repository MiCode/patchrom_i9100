.class public Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLDeviceListItemDataCheckbox.java"


# instance fields
.field public mChecked:Z

.field private mCheckedImage:Lcom/sec/android/glview/TwGLImage;

.field private mUncheckedImage:Lcom/sec/android/glview/TwGLImage;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFFZ)V
    .locals 8
    .parameter "applicationContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "isSelect"

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    .line 48
    const/4 v6, 0x0

    .line 49
    .local v6, offsetX:F
    const/4 v7, 0x0

    .line 51
    .local v7, offsetY:F
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020011

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    .line 52
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020010

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v0

    sub-float v0, p4, v0

    const/high16 v1, 0x4000

    div-float v6, v0, v1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v0

    cmpl-float v0, p5, v0

    if-lez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v0

    sub-float v0, p5, v0

    const/high16 v1, 0x4000

    div-float v7, v0, v1

    .line 60
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-eqz v0, :cond_3

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/glview/TwGLImage;->moveLayout(FF)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/glview/TwGLImage;->moveLayout(FF)V

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 69
    iput-boolean p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    .line 70
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->refreshView()V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFZ)V
    .locals 5
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "isSelect"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 33
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    .line 35
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f020011

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    .line 36
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f020010

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 41
    iput-boolean p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    .line 42
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->refreshView()V

    .line 43
    return-void
.end method


# virtual methods
.method public getChecked()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    return v0
.end method

.method public refreshView()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 78
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 84
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    goto :goto_0
.end method
