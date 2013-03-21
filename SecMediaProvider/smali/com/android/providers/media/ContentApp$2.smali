.class Lcom/android/providers/media/ContentApp$2;
.super Ljava/lang/Thread;
.source "ContentApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/ContentApp;->startScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/ContentApp;


# direct methods
.method constructor <init>(Lcom/android/providers/media/ContentApp;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/providers/media/ContentApp$2;->this$0:Lcom/android/providers/media/ContentApp;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    const/16 v1, 0xc

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 111
    new-instance v0, Lcom/android/providers/media/FaceScanner;

    iget-object v1, p0, Lcom/android/providers/media/ContentApp$2;->this$0:Lcom/android/providers/media/ContentApp;

    invoke-direct {v0, v1}, Lcom/android/providers/media/FaceScanner;-><init>(Lcom/android/providers/media/ContentApp;)V

    .line 112
    .local v0, faceScanner:Lcom/android/providers/media/FaceScanner;
    invoke-virtual {v0}, Lcom/android/providers/media/FaceScanner;->sync()V

    .line 113
    return-void
.end method
