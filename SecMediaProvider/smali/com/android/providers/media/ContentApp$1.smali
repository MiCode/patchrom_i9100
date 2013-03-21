.class Lcom/android/providers/media/ContentApp$1;
.super Landroid/content/BroadcastReceiver;
.source "ContentApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/ContentApp;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/ContentApp;


# direct methods
.method constructor <init>(Lcom/android/providers/media/ContentApp;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/providers/media/ContentApp$1;->this$0:Lcom/android/providers/media/ContentApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/providers/media/ContentApp$1;->this$0:Lcom/android/providers/media/ContentApp;

    #calls: Lcom/android/providers/media/ContentApp;->createCacheIfMediaMounted()V
    invoke-static {v0}, Lcom/android/providers/media/ContentApp;->access$000(Lcom/android/providers/media/ContentApp;)V

    .line 43
    return-void
.end method
