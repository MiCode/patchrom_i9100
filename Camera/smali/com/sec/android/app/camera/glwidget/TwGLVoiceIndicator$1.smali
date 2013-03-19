.class Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator$1;
.super Ljava/util/TimerTask;
.source "TwGLVoiceIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVoiceStandBy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVoiceStatus(I)V

    .line 67
    return-void
.end method
