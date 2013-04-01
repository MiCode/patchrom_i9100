.class Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;
.super Landroid/os/Handler;
.source "FMListPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/listplayer/FMListPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayer;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/fm/listplayer/FMListPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/fm/listplayer/FMListPlayer;Lcom/sec/android/app/fm/listplayer/FMListPlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;-><init>(Lcom/sec/android/app/fm/listplayer/FMListPlayer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/sec/android/app/fm/listplayer/FMListPlayer;->handleNotification(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->access$000(Lcom/sec/android/app/fm/listplayer/FMListPlayer;I)V

    .line 131
    :cond_0
    return-void
.end method
