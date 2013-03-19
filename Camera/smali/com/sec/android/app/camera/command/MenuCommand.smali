.class public abstract Lcom/sec/android/app/camera/command/MenuCommand;
.super Ljava/lang/Object;
.source "MenuCommand.java"


# instance fields
.field protected mAnchor:Lcom/sec/android/glview/TwGLImage;

.field protected mLaunchX:F

.field protected mLaunchY:F

.field protected mZOrder:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method

.method public setAnchor(Lcom/sec/android/glview/TwGLImage;)V
    .locals 2
    .parameter "anchor"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 35
    iput-object p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    goto :goto_0
.end method

.method public setLaunchPosition(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 42
    iput p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mLaunchX:F

    .line 43
    iput p2, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mLaunchY:F

    .line 44
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .parameter "zOrder"

    .prologue
    .line 47
    iput p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    .line 48
    return-void
.end method
