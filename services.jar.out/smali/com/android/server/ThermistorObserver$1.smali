.class Lcom/android/server/ThermistorObserver$1;
.super Landroid/os/Handler;
.source "ThermistorObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ThermistorObserver;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThermistorObserver;


# direct methods
.method constructor <init>(Lcom/android/server/ThermistorObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/server/ThermistorObserver$1;->this$0:Lcom/android/server/ThermistorObserver;

    #calls: Lcom/android/server/ThermistorObserver;->pedningToControl()V
    invoke-static {v0}, Lcom/android/server/ThermistorObserver;->access$000(Lcom/android/server/ThermistorObserver;)V

    .line 289
    return-void
.end method
