.class public Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLItemThumbnailText.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
#the value of this static final field might be set in the static constructor
.field public static final BLUE_TEXT_COLOR:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DATA_FONT_SIZE:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "TwGLItemThumbnailText"

.field public static final WHITE_TEXT_COLOR:I


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mCommandId:I

.field private mText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    .line 38
    const v0, 0x7f080014

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->DATA_FONT_SIZE:F

    .line 40
    const/4 v0, 0x0

    const/16 v1, 0xc0

    invoke-static {v2, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->BLUE_TEXT_COLOR:I

    .line 41
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->WHITE_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFFI)V
    .locals 6
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "commandId"

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 63
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 64
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->refreshView()V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFI)V
    .locals 1
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "commandId"

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 52
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 53
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 57
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->refreshView()V

    .line 58
    return-void
.end method

.method private refreshView()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->resetSize()V

    .line 92
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    instance-of v0, v0, Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->resetSize()V

    .line 95
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 75
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 80
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    .line 83
    :cond_1
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 84
    return-void
.end method

.method protected getView()Lcom/sec/android/glview/TwGLView;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v9

    .line 112
    .local v9, res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-nez v9, :cond_1

    .line 113
    const-string v0, "TwGLItemThumbnailText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing resource for CommandID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->BLUE_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    return-object v0

    .line 115
    :cond_1
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->getHeight()F

    move-result v5

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v6, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->DATA_FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->WHITE_TEXT_COLOR:I

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 3
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isActivityDestoying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->BLUE_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->WHITE_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    goto :goto_0
.end method

.method public setAlign(II)V
    .locals 1
    .parameter "hAlign"
    .parameter "vAlign"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 128
    :cond_0
    return-void
.end method
