.class Lcom/android/OriginalSettings/DockSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DockSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/OriginalSettings/DockSettings$1;->this$0:Lcom/android/OriginalSettings/DockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/OriginalSettings/DockSettings$1;->this$0:Lcom/android/OriginalSettings/DockSettings;

    #calls: Lcom/android/OriginalSettings/DockSettings;->handleDockChange(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/OriginalSettings/DockSettings;->access$000(Lcom/android/OriginalSettings/DockSettings;Landroid/content/Intent;)V

    .line 54
    :cond_0
    return-void
.end method
