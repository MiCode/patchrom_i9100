.class Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$1;
.super Landroid/os/Handler;
.source "TwGLCamcorderRecordingMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->stepSecond()V

    .line 147
    :cond_0
    return-void
.end method
