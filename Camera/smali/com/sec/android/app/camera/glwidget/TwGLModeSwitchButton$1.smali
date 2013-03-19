.class Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$1;
.super Ljava/lang/Object;
.source "TwGLModeSwitchButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->setCameraSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->mOnModeChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton;)Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;->onModeChanged(I)V

    .line 175
    return-void
.end method
