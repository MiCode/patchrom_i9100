.class Lcom/android/OriginalSettings/SoundSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/SoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/OriginalSettings/SoundSettings$1;->this$0:Lcom/android/OriginalSettings/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings$1;->this$0:Lcom/android/OriginalSettings/SoundSettings;

    const/4 v1, 0x0

    #calls: Lcom/android/OriginalSettings/SoundSettings;->updateState(Z)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->access$000(Lcom/android/OriginalSettings/SoundSettings;Z)V

    .line 129
    :cond_0
    return-void
.end method
