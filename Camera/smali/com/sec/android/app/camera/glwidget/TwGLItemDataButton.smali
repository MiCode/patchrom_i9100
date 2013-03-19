.class public Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLItemDataButton.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "TwGLItemDataButton"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mCommandId:I

.field private mGivenSize:Z

.field private mHeight:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFFI)V
    .locals 7
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "commandId"

    .prologue
    const/4 v6, 0x0

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
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mWidth:F

    .line 31
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mHeight:F

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mGivenSize:Z

    .line 48
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    .line 49
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 50
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 53
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mWidth:F

    .line 54
    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mHeight:F

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mGivenSize:Z

    .line 57
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->refreshButton()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFI)V
    .locals 2
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "commandId"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 30
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mWidth:F

    .line 31
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mHeight:F

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mGivenSize:Z

    .line 37
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    .line 38
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 39
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 42
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->refreshButton()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnDragListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnDragListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnDragListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnDragListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnDragListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnDragListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    return-object v0
.end method

.method private refreshButton()V
    .locals 15

    .prologue
    const/16 v14, 0x63

    const v9, 0x7f0201bc

    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v10

    .line 137
    .local v10, menuid:I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v11

    .line 138
    .local v11, modeid:I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v13

    .line 139
    .local v13, selectedCommandId:I
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    if-ne v0, v14, :cond_0

    .line 140
    const/16 v13, 0x63

    .line 143
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    const/16 v1, 0xbc0

    if-ne v0, v1, :cond_2

    .line 144
    :cond_1
    const/16 v13, 0x8

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v0, v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v12

    .line 149
    .local v12, res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-nez v12, :cond_4

    .line 150
    const-string v0, "TwGLItemDataButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing resource for CommandID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_3
    :goto_0
    return-void

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-nez v0, :cond_5

    .line 155
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mGivenSize:Z

    if-eqz v0, :cond_6

    .line 156
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mHeight:F

    iget v6, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v7, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v8, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    move v3, v2

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 160
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 180
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v0, :cond_7

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget v2, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v3, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v4, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const v5, 0x7f0201bc

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 186
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$4;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 234
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    if-ne v0, v14, :cond_3

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    goto :goto_0

    .line 158
    :cond_6
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v5, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v6, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    move v3, v2

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto :goto_1

    .line 184
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget v2, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v3, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v4, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const v5, 0x7f0201bc

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    goto :goto_2

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 66
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 67
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isActivityDestoying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    if-ne v0, v1, :cond_0

    .line 315
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    const/16 v1, 0xbc0

    if-eq v0, v1, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->refreshButton()V

    goto :goto_0
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 5
    .parameter "gl"

    .prologue
    .line 301
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 302
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 304
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v4}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :cond_0
    monitor-exit v3

    .line 307
    return-void

    .line 306
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setDim(Z)V
    .locals 1
    .parameter "dim"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 122
    :cond_0
    return-void
.end method

.method public setHighlightVisibility(Z)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    .line 116
    :cond_0
    return-void
.end method

.method public setHoverPopupGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 371
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setHoverPopupGravity(I)V

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setHoverPopupGravity(I)V

    .line 376
    :cond_0
    return-void
.end method

.method public setHoverPopupOffset(II)V
    .locals 1
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 363
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setHoverPopupOffset(II)V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLButton;->setHoverPopupOffset(II)V

    .line 368
    :cond_0
    return-void
.end method

.method public setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V
    .locals 9
    .parameter "l"

    .prologue
    const v8, 0x7f0201bc

    .line 242
    if-nez p1, :cond_4

    .line 243
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 255
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    .line 256
    .local v0, menuid:I
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v1

    .line 257
    .local v1, modeid:I
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v3

    .line 258
    .local v3, selectedCommandId:I
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    const/16 v5, 0x63

    if-ne v4, v5, :cond_0

    .line 259
    const/16 v3, 0x63

    .line 262
    :cond_0
    const/16 v4, 0x8

    if-eq v0, v4, :cond_1

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    const/16 v5, 0xbc0

    if-ne v4, v5, :cond_2

    .line 263
    :cond_1
    const/16 v3, 0x8

    .line 267
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v2

    .line 269
    .local v2, res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-eqz p1, :cond_5

    .line 270
    if-eqz v2, :cond_3

    .line 271
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget v5, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v6, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v7, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 277
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 278
    return-void

    .line 245
    .end local v0           #menuid:I
    .end local v1           #modeid:I
    .end local v2           #res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .end local v3           #selectedCommandId:I
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v5, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$5;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$5;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    goto :goto_0

    .line 273
    .restart local v0       #menuid:I
    .restart local v1       #modeid:I
    .restart local v2       #res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .restart local v3       #selectedCommandId:I
    :cond_5
    if-eqz v2, :cond_3

    .line 274
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget v5, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v6, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v7, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    goto :goto_1
.end method

.method public setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 283
    if-nez p1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 297
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$6;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    goto :goto_0
.end method

.method public setResourceOffset(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->getWidth()F

    move-result v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->getHeight()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 132
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized setSize(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 328
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mWidth:F

    .line 329
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mHeight:F

    .line 330
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "subtitle"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setSubTitle(Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public setText(Lcom/sec/android/glview/TwGLText;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 92
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public setTextAlign(II)V
    .locals 1
    .parameter "hAlign"
    .parameter "vAlign"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    .line 104
    :cond_0
    return-void
.end method

.method public setTextPosition(FF)V
    .locals 1
    .parameter "left"
    .parameter "top"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 98
    :cond_0
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setTitle(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method public setToggleButton()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->setToggleButton()V

    .line 337
    :cond_0
    return-void
.end method

.method public setToggleButtonResources()Z
    .locals 7

    .prologue
    const v6, 0x7f0201bc

    const/4 v2, 0x0

    .line 340
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    .line 341
    .local v0, cameraMode:I
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v1

    .line 343
    .local v1, selfMode:I
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-nez v3, :cond_0

    .line 359
    :goto_0
    return v2

    .line 346
    :cond_0
    if-nez v0, :cond_2

    .line 347
    if-nez v1, :cond_1

    .line 348
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    const v4, 0x7f02011c

    const v5, 0x7f02011d

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 359
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 350
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    const v4, 0x7f02011e

    const v5, 0x7f02011f

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    goto :goto_1

    .line 353
    :cond_2
    if-nez v1, :cond_3

    .line 354
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    const v4, 0x7f020118

    const v5, 0x7f020119

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    goto :goto_1

    .line 356
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    const v4, 0x7f02011a

    const v5, 0x7f02011b

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    goto :goto_1
.end method
