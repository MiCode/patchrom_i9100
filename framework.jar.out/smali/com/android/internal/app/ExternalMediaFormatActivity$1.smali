.class Lcom/android/internal/app/ExternalMediaFormatActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ExternalMediaFormatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ExternalMediaFormatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ExternalMediaFormatActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ExternalMediaFormatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/internal/app/ExternalMediaFormatActivity$1;->this$0:Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, path:Ljava/lang/String;
    const-string v2, "ExternalMediaFormatActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v2, p0, Lcom/android/internal/app/ExternalMediaFormatActivity$1;->this$0:Lcom/android/internal/app/ExternalMediaFormatActivity;

    #getter for: Lcom/android/internal/app/ExternalMediaFormatActivity;->mPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/app/ExternalMediaFormatActivity;->access$000(Lcom/android/internal/app/ExternalMediaFormatActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    if-eq v0, v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_CHECKING"

    if-eq v0, v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    if-eq v0, v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_SHARED"

    if-ne v0, v2, :cond_1

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ExternalMediaFormatActivity$1;->this$0:Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ExternalMediaFormatActivity;->finish()V

    .line 63
    :cond_1
    return-void
.end method
